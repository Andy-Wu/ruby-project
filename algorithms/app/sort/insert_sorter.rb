class InsertSorter
  # To change this template use File | Settings | File Templates.

  def self.sort arr
    len = arr.length-2
    temp = 0
    for i in 0..len
      p i
      j = i+1;
      temp = arr[j];
      while (j>0 && arr[j]<arr[j-1])
        arr[j] = arr[j-1]
        j = j -1
      end
      arr[j] = temp
    end
    arr
  end

end