CXX = g++
CXXFLAGS = -std=c++17 -Wall

# Remplace <chemin_vers_vulkan_sdk> par le bon chemin du SDK Vulkan sur ton système
VULKAN_SDK_PATH = /usr

INCLUDE_DIRS = -I$(VULKAN_SDK_PATH)/include -I/usr/include -I/usr/include/glm
LIB_DIRS = -L$(VULKAN_SDK_PATH)/lib -L/usr/lib
LIBS = -lvulkan -lglfw

# Nom de l'exécutable
TARGET = VulkanApp

# Les fichiers sources
SRCS = main.cpp

# Règle par défaut pour compiler le projet
all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) $(INCLUDE_DIRS) -o $(TARGET) $(SRCS) $(LIB_DIRS) $(LIBS)

# Nettoyer les fichiers générés
clean:
	rm -f $(TARGET)

