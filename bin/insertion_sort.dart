//Insertion Sort

List insertionSort(List<int> list)
{
  int j;
  for(int  i=0;i<list.length;i++)
  {
    int current = list[i];
    for (j=i-1;j>=0&& list[j]>current;j--)
    {
      list[j+1]=list[j];
    }
    list[j+1]=current;
  }
  return list;
}

