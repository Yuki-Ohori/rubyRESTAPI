module Api
    module V2
        class HomeapiController < ApplicationController
            
            def index

                require 'creek'
                creek = Creek::Book.new './data/homeapi.xlsx'
                sheet = creek.sheets[0]

                dataapi = []
                
                sheet.rows.each do |row|
                    dataapi.push(row)
                end
                render json: {status:'SUCCESS', message:'Loaded HomeAPI', data: dataapi},status: :ok
            end
        end
    end
end