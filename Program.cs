using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<BooksContext>(
    options => options.UseSqlServer(builder.Configuration.GetConnectionString("BooksDatabase"))
);

var app = builder.Build();

app.MapGet("/", () => "Hello World!");

app.MapGet(
    "/books",
    async (BooksContext db) =>
    {
        return await db.Books.Include(b => b.Author).ToListAsync();
    }
);

app.Run();
