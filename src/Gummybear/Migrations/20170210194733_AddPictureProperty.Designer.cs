using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Gummybear.Models;

namespace Gummybear.Migrations
{
    [DbContext(typeof(GummybearDbContext))]
    [Migration("20170210194733_AddPictureProperty")]
    partial class AddPictureProperty
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.0.1")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Gummybear.Models.Product", b =>
                {
                    b.Property<int>("ProductId")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Cost");

                    b.Property<string>("CountryOfOrigin");

                    b.Property<string>("Name");

                    b.Property<string>("Picture");

                    b.HasKey("ProductId");

                    b.ToTable("Products");
                });
        }
    }
}
