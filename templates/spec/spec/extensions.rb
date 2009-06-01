class Hash
  def nullify(*args)
    result = {}
    args.each { |a| result[a] = nil }
    merge result
  end
end
