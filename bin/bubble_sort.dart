// Bubble Sort

List bubbleSort(List<int> list)
{
  bool noSwap;
  for(int i=list.length;i>0;i--)
  {
    noSwap=true;
    for(int j=0;j<i-1;j++)
    {
      if(list[j+1]<list[j])
      {
        int temp=list[j+1];
        list[j+1]=list[j];
        list[j]=temp;
        noSwap=false;
      }
    }
    if(noSwap)
    {
      break;
    }
  }
  return list;

}
