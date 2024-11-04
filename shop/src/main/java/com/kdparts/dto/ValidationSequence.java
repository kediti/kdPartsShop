package com.kdparts.dto;

import com.kdparts.dto.ValidationGroups.NotEmptyGroup;
import com.kdparts.dto.ValidationGroups.PatternCheckGroup;

import jakarta.validation.GroupSequence;
import jakarta.validation.groups.Default;


@GroupSequence({Default.class, NotEmptyGroup.class, PatternCheckGroup.class })
public interface ValidationSequence {
}
