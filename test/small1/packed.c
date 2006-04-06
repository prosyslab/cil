#include "testharness.h"

struct __attribute__ ((__packed__)) abstract_struct;

typedef struct s {
   int x1;
  double d;
} __attribute__ ((__packed__)) s;

s foo;

int main() {
  printf("sizeof(foo) = %d.\n", sizeof(foo));
  if (sizeof(foo) != 12) E(1);
  return 0;
}


typedef struct {
   int x1;
   short x2;
   short x3;
} __attribute__ ((__packed__)) t1;

typedef struct __attribute__ ((__packed__)) {
   int x1;
   short x2;
   short x3;
} t2;

typedef __attribute__ ((__packed__)) struct {
   int x1;
   short x2;
   short x3;
} t3;

t1 t1_;
t2 t2_;
t3 t3_;
