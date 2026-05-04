class Payment
    def process
        puts "Processing payment"

    end
end
class UPIpayment < Payment
    def process
        puts "Processing UPI Payment"
    end
end
payment = Payment.new
payment.process
upi_payment = UPIpayment.new
upi_payment.process