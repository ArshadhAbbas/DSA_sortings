List<int> mergeSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }

  int mid = list.length ~/ 2;
  List<int> left = list.sublist(0, mid);
  List<int> right = list.sublist(mid);

  left = mergeSort(left);
  right = mergeSort(right);

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];

  while (left.isNotEmpty && right.isNotEmpty) {
    if (left.first <= right.first) {
      result.add(left.first);
      left = left.sublist(1);
    } else {
      result.add(right.first);
      right = right.sublist(1);
    }
  }

  if (left.isNotEmpty) {
    result.addAll(left);
  }
  if (right.isNotEmpty) {
    result.addAll(right);
  }

  return result;
}
