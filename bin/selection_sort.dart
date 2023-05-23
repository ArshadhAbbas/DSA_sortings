List selectionSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) 
  {
    int lowest = i;
    for (int j = i + 1; j < list.length; j++) 
    {
      if (list[j] < list[lowest]) 
      {
        lowest = j;
      }
    }
    if(i != lowest)
    {
    int temp = list[lowest];
    list[lowest] = list[i];
    list[i] = temp;
    }
  }
  return list;
}
