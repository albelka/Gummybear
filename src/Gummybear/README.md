# Gummybear Kingdom

#### Gummybear Kingdom is designed to attractively display and sell gummybears. 2.10.17

#### By **Anne Belka**

## Description
This project was generated in VisualStudio utilizing code-first development and migrations with Entity Framework. Gummybear Kingdom is an exercise in C# ASP.Net. It includes full CRUD functionality and utilizes dynamic routing. Design was inspired by the website http://www.catscarf.com/.

## Setup/Installation Requirements

Clone this repository: https://github.com/albelka/Gummybear
 and open it in Visual Studio.

* _In SSMS :_
```
open Gummybear.sql
add these lines to the top of the query
CREATE DATABASE Gummybear
GO 
```

In VisualStudio right click on Gummybear in the Solution Explorer and select **Build**

Then in the command prompt write:
```
> dotnet ef migrations add Initial
> dotnet ef database update

Now run Gummybear in Visual Studio to view it in any modern browser.

## Technologies Used
* C#
* VisualStudio
* ASP.Net
* Entity Framework

### License

GPL

Copyright (c) 2017 **_Anne Belka_**