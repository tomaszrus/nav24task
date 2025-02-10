codeunit 50100 "SDH API Management"
{
    procedure DownloadCountriesJsonObject()
    var
        URL: Label 'https://www.freetestapi.com/api/v1/countries';
        HttpRequestMessage: HttpRequestMessage;
        HttpClient: HttpClient;
        Response: HttpResponseMessage;
        Request: HttpRequestMessage;
        OutputString: Text;
        JsonToken: JsonToken;
        JsonArray: JsonArray;
        JsonObject: JsonObject;
        i: Integer;
        CountryList: Record "CountryList";
    begin
        CountryList.Init();
        Request.SetRequestUri(URL);
        Request.Method('Get');
        HttpClient.Send(Request, Response);
        if Response.IsSuccessStatusCode then begin
            Response.Content.ReadAs(OutputString);
            if JsonArray.ReadFrom(OutputString) then begin
                // Message('OK');
                for i := 0 to JsonArray.Count() - 1 do begin
                    JsonArray.Get(i, JsonToken);
                    JsonObject.ReadFrom(Format(JsonToken));
                    if JsonObject.Get('id', JsonToken) then begin
                        CountryList."Entry No." := JsonToken.AsValue().AsInteger();
                    end;
                    if JsonObject.Get('name', JsonToken) then begin
                        CountryList."Country Name" := JsonToken.AsValue().AsText();
                    end;
                    if JsonObject.Get('capital', JsonToken) then begin
                        CountryList."Capital" := JsonToken.AsValue().AsText();
                    end;
                    if JsonObject.Get('currency', JsonToken) then begin
                        CountryList."Currency" := JsonToken.AsValue().AsText();
                    end;
                    if JsonObject.Get('population', JsonToken) then begin
                        CountryList."Population" := JsonToken.AsValue().AsInteger();
                    end;
                    CountryList.Insert();
                end;
            end else begin
                Message('Failed to parse JSON response');
            end;
        end;
    end;


}