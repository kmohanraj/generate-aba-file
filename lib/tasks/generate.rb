require 'aba'

module GenerateAbaFile
  def generate
    p "++++++++++++++++"
    aba = Aba.batch(
      bsb: '123-345',
      financial_institution: 'ANZ',
      user_name: 'Xo Elenes',
      user_id: '19',
      description: 'Payroll',
      process_at: Time.now.strftime('%d%m%y')
    )

    # Add transactions
    10.times do
      aba.add_transaction(
        {
          bsb: '342-342',
          account_number: '3244654',
          amount: 1000,
          account_name: 'Xo Elenes',
          transaction_code: 53,
          lodgement_reference: 'R435564',
          trace_bsb: '453-543',
          trace_account_number: '45656733',
          name_of_remitter: 'Remitter'
        }
      )
    end
    p"====D>D>>D>D>DD"
    puts aba.to_s
    p"====D>D>>D>D>DD"
    File.write("/Users/mohanrajkanthasamy/Desktop/generate_aba_file/PW_#{Time.now.to_i}.aba", aba.to_s)
  end
end