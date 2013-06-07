####################
#Makes your string output colored, to differ message types. 
#
####################
require 'colorize'

class log < Exception  
	attr_reader :msg, :msgtype

	def initialize(msg,msgtype)
		super(msg)
		_msgtype = msgtype
	end


	private _msg
	private _msgtype
	
	def OutputMessage(msg,message_type)
		case 
		when message_type == 'info'
			then puts "[#{"INFO".green}]#{msg}"
		when message_type == 'warn'	
			then puts "[#{"WARN".yellow}]#{msg}"
		when message_type == 'error'
			then puts "[#{"ERROR".red}]#{msg}"
		end
	end

	def LogWarning(stringstatement)
		OutputMessage(stringstatement,'warn')
	end
	def LogError (stringstatement)
		OutputMessage(stringstatement,'error')
	end	
	def LogInfo(stringstatement)
		OutputMessage(stringstatement,'info')
	end

end

