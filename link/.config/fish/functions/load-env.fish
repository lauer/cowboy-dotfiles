function load-env
	for i in (grep -v '^#' $argv |grep -v -e '^[[:space:]]*$')
        set arr (echo $i | string match -r "([^=]+)=(.*)")
  		set -gx $arr[2] $arr[3]
	end
end