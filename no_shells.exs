defmodule No_Shells do

  # Use map and filter with lambda expressions to find the accounts with shell access disabled in /etc/passwd.
  # Input: /etc/passwd
  # Login: An account has shell access disabled if it ends with /sbin/nologin, /bin/drop, /bin/sync, /sbin/halt, /sbin/shutdown`
         # List of non-shells from /etc/passwd retrieved using 'cut -d: -f7 /etc/passwd | sort | uniq'
         # Last field in each line is the shell so look at line[-X] where X is some number of characters
  # Output: One account (username) and its shell value per line, printed to the screen

  def print_result(x)
  do
    case Enum.at(x, 5) do
        n when is_nil(n) -> nil
        "/var/empty" -> IO.puts("\tnot a shell")
        _ -> IO.puts("\tA SHELL!!!!")
    end
  end

  def no_shell(filename)
  do
    File.stream!(filename)
    |> Stream.map( &(String.replace(&1, "\n", "")) )
    |> Stream.map( fn(record) -> String.split(record, ":") end)
    |> Stream.map( fn(fields) -> IO.inspect(fields) end)
    |> Stream.map( fn(fields) -> IO.inspect(Enum.at(fields, 5)) end)
    |> Stream.map( fn(x) -> print_result(x) end)
    |> Enum.take(12)
    # |> Stream.run
    # |> Stream.map( fn(record) -> Stream.filter(record, fn x -> x  =~ ":" end) end)

    # IO.puts(String.split(File.stream!(filename), ":"))
  end
end

No_Shells.no_shell("/etc/passwd")
