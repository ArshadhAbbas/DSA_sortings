// // Quick Sort

// int partition(List<int> list, int low, int high) {
//   // Base check
//   if (list.isEmpty) {
//     return 0;
//   }
//   // Take the first element as pivot and counter smallerOne one less than low
//   int pivot = list[low];

//   int smallerOne = low;
//   for (int current = low + 1; current <= high; current++) {
//     // When current element is smaller than pivot element we increment smallerOne and swap list[smallerOne] and list[current]
//     if (list[current] < pivot) {
//       smallerOne++;
//       swap(list, smallerOne, current);
//     }
//   }
//   // Swap the pivot and place it in front of the smallerOne'th element
//   swap(list, low, smallerOne);
//   return smallerOne;
// }


// List<int> quickSort(List<int> list, int low, int high) {
//   if (low < high) {
//     int pi = partition(list, low, high);
//     quickSort(list, low, pi - 1);
//     quickSort(list, pi + 1, high);
//   }
//   return list;
// }

// // Swapping using a temp variable
// void swap(List list, int i, int j) {
//   int temp = list[i];
//   list[i] = list[j];
//   list[j] = temp;
// }

// void main() {
//   List<int> list = [10, -2, 7, 11, 15, 23, -11, 0, 17, -9, 6, 13, 1, 20, 4, -8, -1, 19, -3, 9, 2, 14, 3, -5, -10];
//   int high = list.length - 1;
//   int low = 0;
//   List<int> result = quickSort(list, low, high);
//   print(result);
// }
