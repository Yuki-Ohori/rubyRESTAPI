module Api
    module V2
        class HomeapiController < ApplicationController
            
            # def index
            #     require 'creek'
            #     creek = Creek::Book.new './data/homeapi.xlsx']
            #     sheet = creek.sheets[0]

            #     dataapi = []
                
            #     sheet.rows.each do |row|
            #         dataapi.push({'id': row.values[0], 'name': row.values[1]})
            #     end
            #     render json: {status:'SUCCESS', message:'Loaded HomeAPI', data: dataapi},status: :ok
            # end

            def index
                require 'google_drive'
                session = GoogleDrive::Session.from_config('config.json')
                sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                
                ws = sp.worksheet_by_title('populardh')
                dataapi = [];
                for var in ws.rows do
                    dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'img': var[5]})
                end

                render json: {status:'SUCCESS', message:'Loaded Popular Domestic Hotel Area', data: dataapi},status: :ok
            end

            def show
                if params[:id] == 'populardh' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('populardh')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'img': var[5]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Popular Domestic Hotel Area', data: dataapi},status: :ok
                
                elsif params[:id] == 'popularwh' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('popularwh')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'img': var[5]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Popular World Hotel Area', data: dataapi},status: :ok
                elsif params[:id] == 'tokyodept' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('tokyodept')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'area_cod': var[5],'img': var[6]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Tokyo Dept', data: dataapi},status: :ok
                elsif params[:id] == 'osakadept' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('osakadept')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'area_cod': var[5],'img': var[6]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Osaka Dept', data: dataapi},status: :ok
                elsif params[:id] == 'nagoyadept' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('nagoyadept')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'area_cod': var[5],'img': var[6]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Nagoya Dept', data: dataapi},status: :ok
                elsif params[:id] == 'fukuokadept' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('fukuokadept')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'area_cod': var[5],'img': var[6]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Fukuoka Dept', data: dataapi},status: :ok
                elsif params[:id] == 'sapporodept' then
                    require 'google_drive'
                    session = GoogleDrive::Session.from_config('config.json')
                    sp = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1jB04nNfVJkDOIWQ2gorW8niygOy8LbqAAQkTA2qhK6Q/edit#gid=0')
                    
                    ws = sp.worksheet_by_title('sapporodept')
                    dataapi = [];
                    for var in ws.rows do
                        dataapi.push({'id': var[0], 'name': var[1], 'area_id': var[2], 'area_size': var[3], 'area_name': var[4], 'area_cod': var[5],'img': var[6]})
                    end

                    render json: {status:'SUCCESS', message:'Loaded Sapporo Dept', data: dataapi},status: :ok
                else
                    render json: {status:'ERROR', message:'Not API'},status: :ok
                end
            end
        end
    end
end