CC=gcc
CFLAGS=-Iinclude -fPIC
SRC=src
LIB=lib
BIN=bin

ARITH_OBJ=$(SRC)/arithmetic.o
STATIC_LIB=$(LIB)/libarithmetic.a
SHARED_LIB=$(LIB)/libarithmetic.so
EXEC_STATIC=$(BIN)/main_static
EXEC_SHARED=$(BIN)/main_shared

.PHONY: all clean dirs

all: dirs $(EXEC_STATIC) $(EXEC_SHARED)

dirs:
	mkdir -p $(LIB)
	mkdir -p $(BIN)

# arithmetic.o 생성
$(ARITH_OBJ): $(SRC)/arithmetic.c include/arithmetic.h
	$(CC) $(CFLAGS) -c $< -o $@

# 정적 라이브러리 생성
$(STATIC_LIB): $(ARITH_OBJ)
	ar rcs $@ $^

# 공유 라이브러리 생성
$(SHARED_LIB): $(ARITH_OBJ)
	$(CC) -shared -o $@ $^

# 정적 라이브러리 사용 실행 파일
$(EXEC_STATIC): src/main.c $(STATIC_LIB)
	$(CC) -Iinclude -o $@ src/main.c $(STATIC_LIB)

# 공유 라이브러리 사용 실행 파일
$(EXEC_SHARED): src/main.c $(SHARED_LIB)
	$(CC) -Iinclude -o $@ src/main.c -L$(LIB) -larithmetic

clean:
	rm -f $(SRC)/*.o $(LIB)/*.a $(LIB)/*.so $(BIN)/*

