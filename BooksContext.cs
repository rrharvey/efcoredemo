using Microsoft.EntityFrameworkCore;

public class BooksContext : DbContext
{
    public BooksContext(DbContextOptions<BooksContext> options)
        : base(options) { }

    public DbSet<Book> Books { get; set; }
    public DbSet<Author> Authors { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Book>(b =>
        {
            b.HasOne(x => x.Author).WithOne().HasForeignKey<Book>(x => x.WrittenBy).IsRequired();
        });

        modelBuilder.Entity<Author>(b =>
        {
            b.HasKey(x => x.AuthorId);
        });
    }
}
