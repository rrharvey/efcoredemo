using Microsoft.AspNetCore.Mvc;

public class Book
{
    public int Id { get; set; }

    public required string Title { get; set; }

    public required string WrittenBy { get; set; }

    public required Author Author { get; set; }
}
