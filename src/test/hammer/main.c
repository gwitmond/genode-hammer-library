#include <hammer/hammer.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
      printf("Testing hammer\n");

      // Define parser
      uint8_t* hello = (uint8_t*)"Hello World";
      HParser *hello_parser = h_token(hello, strlen((char*)hello));

      // Make test data
      uint8_t* input = hello;
      size_t inputsize = strlen((char*)input);

      // Parse it
      HParseResult *result = h_parse(hello_parser, input, inputsize);
      if(result) {
          printf("yay!\n");
      } else {
          printf("boo!\n");
      }
}
