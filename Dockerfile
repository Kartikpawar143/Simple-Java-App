# pull base image which give all requierd tools and libraries
From openjdk:17-jdk-alpine

# Create a folder where the app code will be stored
WORKDIR /app

# Copining the code from your HOST machin to your container
COPY . .

# Compile the application code
RUN javac src/Main.java

#Run the application
CMD ["java","Main"]
