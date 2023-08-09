package com.toy4.domain.dutyHistory.dto;

import lombok.Getter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Getter
public class DutyRegistrationRequest {

    @NotNull
    private Long employeeId;
    @NotNull
    private LocalDate date;
    @NotBlank
    private String reason;

    public DutyHistoryMainDto toDto() {
        return DutyHistoryMainDto.builder()
                .employeeId(employeeId)
                .date(date)
                .reason(reason)
                .build();
    }
}
