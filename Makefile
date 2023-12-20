CXX = g++

CXXFLAGS = -Wall -c -std=c++11 
EXE = sm8086

all: $(EXE)

$(EXE): disassembler.o 
	$(CXX) $^ -o $@

disassembler.o: src/disassembler.cpp
	$(CXX) $(CXXFLAGS) $< -o $@ -g

# utils.o: src/utils.cpp
# 	$(CXX) $(CXXFLAGS) $< -o $@

# snake.o: src/snake.cpp
# 	$(CXX) $(CXXFLAGS) $< -o $@

# game.o: src/game.cpp
# 	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f *.o && rm -f $(EXE)