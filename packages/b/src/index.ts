export const getRandomThingy = () : import('ts29221-a').thingy => {
  switch (Math.floor(Math.random() * 3)) {
    case 0 : {
      return 'foo';
    };
    case 1 : {
      return 'bar';
    };
    default : {
      return 'baz';
    }
  }
};
