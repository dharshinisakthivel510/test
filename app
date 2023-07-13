#include <iostream>
#include <string>
using namespace std;

class WeatherReport {
private:
    string location;
public:
    WeatherReport(string loc) {
        location = loc;
    }
    
    void displayTodayReport() {
        cout << "Today's weather report for " << location << ":\n";
        // Logic to fetch and display today's weather data
        // Assume weatherData object contains the fetched data
        WeatherData weatherData = fetchWeatherData(location, "today");
        
        cout << "Condition: " << weatherData.condition << endl;
        cout << "Temperature: " << weatherData.temperature << "°C" << endl;
        cout << "Rain Possibility: " << weatherData.rainPossibility << "%" << endl;
        cout << "Humidity: " << weatherData.humidity << "%" << endl;
    }
    
    void displayYesterdayReport() {
        cout << "Yesterday's weather report for " << location << ":\n";
        // Logic to fetch and display yesterday's weather data
        // Assume weatherData object contains the fetched data
        WeatherData weatherData = fetchWeatherData(location, "yesterday");
        
        cout << "Condition: " << weatherData.condition << endl;
        cout << "Temperature: " << weatherData.temperature << "°C" << endl;
        cout << "Rain Possibility: " << weatherData.rainPossibility << "%" << endl;
        cout << "Humidity: " << weatherData.humidity << "%" << endl;
    }
    
    void displayTomorrowReport() {
        cout << "Tomorrow's weather report for " << location << ":\n";
        // Logic to fetch and display tomorrow's weather data
        // Assume weatherData object contains the fetched data
        WeatherData weatherData = fetchWeatherData(location, "tomorrow");
        
        cout << "Condition: " << weatherData.condition << endl;
        cout << "Temperature: " << weatherData.temperature << "°C" << endl;
        cout << "Rain Possibility: " << weatherData.rainPossibility << "%" << endl;
        cout << "Humidity: " << weatherData.humidity << "%" << endl;
    }
    
    void displayWeeklyReport() {
        cout << "Weekly weather report for " << location << ":\n";
        // Logic to fetch and display weekly weather data
        // Assume weatherData object contains the fetched data
        WeatherData weatherData = fetchWeatherData(location, "weekly");
        
        cout << "Condition: " << weatherData.condition << endl;
        cout << "Temperature: " << weatherData.temperature << "°C" << endl;
        cout << "Rain Possibility: " << weatherData.rainPossibility << "%" << endl;
        cout << "Humidity: " << weatherData.humidity << "%" << endl;
    }
    
    void displayMonthlyReport() {
        cout << "Monthly weather report for " << location << ":\n";
        // Logic to fetch and display monthly weather data
        // Assume weatherData object contains the fetched data
        WeatherData weatherData = fetchWeatherData(location, "monthly");
        
        cout << "Condition: " << weatherData.condition << endl;
        cout << "Temperature: " << weatherData.temperature << "°C" << endl;
        cout << "Rain Possibility: " << weatherData.rainPossibility << "%" << endl;
        cout << "Humidity: " << weatherData.humidity << "%" << endl;
    }
    
private:
    struct WeatherData {
        string condition;
        double temperature;
        int rainPossibility;
        int humidity;
    };
    
    WeatherData fetchWeatherData(const string& location, const string& reportType) {
        // Assume this function fetches weather data from an API or database based on location and reportType
        // and returns the WeatherData structure with the fetched data
        
        // This is a dummy implementation, you need to replace it with your actual implementation
        WeatherData weatherData;
        
        // Dummy data for demonstration purposes
        if (reportType == "today") {
            weatherData.condition = "Cloudy";
            weatherData.temperature = 25.5;
            weatherData.rainPossibility = 30;
            weatherData.humidity = 75;
        }
        else if (reportType == "yesterday") {
            weatherData.condition = "Rain";
            weatherData.temperature = 22.1;
            weatherData.rainPossibility = 80;
            weatherData.humidity = 85;
        }
        else if (reportType == "tomorrow") {
            weatherData.condition = "Sunny";
            weatherData.temperature = 28.8;
            weatherData.rainPossibility = 10;
            weatherData.humidity = 65;
        }
        else if (reportType == "weekly") {
            weatherData.condition = "Cloudy";
            weatherData.temperature = 24.9;
            weatherData.rainPossibility = 40;
            weatherData.humidity = 70;
        }
        else if (reportType == "monthly") {
            weatherData.condition = "Partly Cloudy";
            weatherData.temperature = 26.7;
            weatherData.rainPossibility = 20;
            weatherData.humidity = 68;
        }
        
        return weatherData;
    }
};

int main() {
    string name, location;
    
    cout << "Welcome to the Weather App!\n";
    cout << "Please enter your name: ";
    getline(cin, name);
    
    cout << "Hi, " << name << "! Please enter your location: ";
    getline(cin, location);
    
    WeatherReport weather(location);
    
    cout << "\n--- Weather Reports ---\n";
    weather.displayTodayReport();
    weather.displayYesterdayReport();
    weather.displayTomorrowReport();
    weather.displayWeeklyReport();
    weather.displayMonthlyReport();
    
    return 0;
}
