var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Abilita l'uso di index.html, default.html, ecc.
app.UseDefaultFiles(); 

// Abilita il servizio dei file statici dalla cartella wwwroot
app.UseStaticFiles(); 

app.Run();