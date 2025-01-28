FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /App

COPY ["Aera.RealIp", "Aera.RealIp"]

WORKDIR /App/Aera.RealIp

RUN dotnet restore
RUN dotnet publish -o /App/build


FROM mcr.microsoft.com/dotnet/aspnet:8.0

COPY --from=build /App/build /App

WORKDIR /App

ENTRYPOINT ["dotnet", "Aera.RealIp.dll"]
