FROM mcr.microsoft.com/dotnet/core/aspnet:5.1 AS base
EXPOSE 80
WORKDIR /app
COPY ./ /app
ENTRYPOINT ["dotnet", "Thoughtwork.Project.API.dll"]