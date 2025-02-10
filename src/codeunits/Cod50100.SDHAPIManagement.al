codeunit 50100 "SDH API Management"
{

    internal procedure GetRecords()
    var
        httpclient: HttpClient;
        request: HttpRequestMessage;
        response: HttpResponseMessage;
        OutputString: Text;

    begin
        request.SetRequestUri('https://freetestapi.com/api/v1/countries');
        request.Method := 'Get';
        httpClient.DefaultRequestHeaders.Add('Accept', 'application/json');
        if httpClient.Send(request, response) then
            if response.IsSuccessStatusCode() then begin
                response.Content.ReadAs(OutputString);
                Message('%1', OutputString);
            end else
                Error('Error: %1', response.ReasonPhrase);

    end;
}