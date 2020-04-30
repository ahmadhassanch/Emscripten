
Module["sum_c"] = function(uintArray){
  return Module.ccall('sum', 'number',['array','number'], [uintArray, uintArray.length]);
};

Module["sum"] = function(span){
  return Module._sum(span.ptr, span.length);;
};
