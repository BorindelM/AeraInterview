using Microsoft.AspNetCore.Http.Metadata;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();


app.MapGet("/getRealIp", (HttpRequest request) =>
    {
        string header = string.Empty;
        header = request.Headers["X-Forwarded-For"];
        if (header == null || header == string.Empty)
        {
            header = request.Host.Host;
        }
        return header;
    })
    .WithName("GetRealIp")
    .WithOpenApi();


app.Run();
