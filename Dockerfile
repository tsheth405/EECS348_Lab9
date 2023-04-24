Part 1

FROM php:7.4-apache
COPY . /var/www/html/
EXPOSE 80


Part 2

# Set the base image to use
FROM gcc:latest
# Copy the C program into the container
COPY . .
# Compile the C program
RUN gcc -o program2 program2.c
# Set the command to run when the container starts
CMD ["./program2"]
