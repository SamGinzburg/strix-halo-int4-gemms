	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b128 s[36:39], s[0:1], 0x4c
	; meta instruction
	s_load_b32 s58, s[0:1], 0x5c
	v_mov_b32_e32 v131, v0
	s_mov_b32 s23, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s22, -1, 0
.Ltmp0:
	.loc	1 757 22 prologue_end           ; attention.py:757:22
	s_abs_i32 s4, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s5
	s_xor_b32 s5, s3, s36
	s_mul_i32 s6, s2, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s2, s7, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s37
	.loc	1 755 23                        ; attention.py:755:23
	s_xor_b32 s2, s2, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s21, s2, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s10, s36, s37
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 786 27                        ; attention.py:786:27
	s_mul_i32 s5, s21, s36
	.loc	1 757 22                        ; attention.py:757:22
	s_ashr_i32 s12, s10, 31
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s10, s3, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_mul_hi_u32 s2, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s2, s6
	s_add_i32 s5, s2, 1
	s_sub_i32 s4, s4, s7
	s_sub_i32 s7, s4, s6
	s_cmp_ge_u32 s4, s6
	s_cselect_b32 s2, s5, s2
	s_cselect_b32 s4, s7, s4
	s_add_i32 s5, s2, 1
	s_cmp_ge_u32 s4, s6
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s4, s3, s38
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s2, s5, s2
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s11, s10
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s2, s12
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s5, s18, 1
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s13, s2, s12
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s6, s18, 2
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s12, s13
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s7, s18, 3
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s12
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s15, s18, 4
	s_or_b32 s17, s18, 5
	s_or_b32 s26, s18, 6
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s30, s18, 7
	s_or_b32 s34, s18, 8
	s_or_b32 s35, s18, 9
	s_or_b32 s36, s18, 10
	s_or_b32 s40, s18, 11
	s_or_b32 s41, s18, 12
	s_or_b32 s42, s18, 13
	s_or_b32 s43, s18, 14
	s_or_b32 s44, s18, 15
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s45, s18, 16
	s_or_b32 s46, s18, 17
	s_or_b32 s47, s18, 18
	s_or_b32 s48, s18, 19
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_f32 s2, s2, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s49, s18, 20
	s_or_b32 s50, s18, 21
	s_or_b32 s51, s18, 22
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_u32_f32 s56, s2
	s_sub_i32 s2, 0, s12
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s52, s18, 23
	s_or_b32 s53, s18, 24
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s57, s2, s56
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s54, s18, 25
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_hi_u32 s57, s56, s57
	.loc	1 759 21                        ; attention.py:759:21
	s_or_b32 s55, s18, 26
	s_or_b32 s75, s18, 27
	s_or_b32 s76, s18, 28
	s_or_b32 s79, s18, 29
	s_or_b32 s80, s18, 30
	s_or_b32 s83, s18, 31
	s_or_b32 s86, s18, 32
	s_or_b32 s87, s18, 33
	s_or_b32 s88, s18, 34
	s_or_b32 s90, s18, 35
	s_or_b32 s93, s18, 36
	s_or_b32 s94, s18, 37
	s_or_b32 s95, s18, 38
	s_or_b32 s96, s18, 39
	s_or_b32 s97, s18, 40
	s_or_b32 s98, s18, 41
	s_or_b32 s99, s18, 42
	s_or_b32 s100, s18, 43
	s_or_b32 s101, s18, 44
	s_or_b32 s102, s18, 45
	s_or_b32 s103, s18, 46
	s_or_b32 s104, s18, 47
	s_or_b32 vcc_lo, s18, 48
	s_or_b32 vcc_hi, s18, 49
	s_or_b32 s8, s18, 50
	s_or_b32 s14, s18, 51
	s_or_b32 s9, s18, 52
	s_or_b32 s33, s18, 53
	s_or_b32 s31, s18, 54
	s_or_b32 s29, s18, 55
	s_or_b32 s28, s18, 56
	s_or_b32 s27, s18, 57
	s_or_b32 s25, s18, 58
	s_or_b32 s24, s18, 59
	s_or_b32 s19, s18, 60
	s_or_b32 s16, s18, 61
	s_or_b32 s3, s18, 62
	s_or_b32 s2, s18, 63
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s20, s4, s18
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s4, s56, s57
	.loc	1 790 23                        ; attention.py:790:23
	s_cmp_lt_i32 s18, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[10:11], null, s20, s58, v[131:132]
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s5, s38
	v_writelane_b32 v255, s4, 1
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s6, s38
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s7, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v30, s58, v10
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s15, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v32, s58, 5, v10
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s17, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v28, s58, v30
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s26, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v29, s58, v32
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s30, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v26, s58, v28
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s34, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v27, s58, v29
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s35, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v21, s58, v26
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s36, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v25, s58, v27
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s40, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v24, s58, v21
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s41, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v22, s58, v25
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s42, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v18, s58, v24
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s43, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v23, s58, v22
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s44, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v19, s58, v18
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s45, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v8, s58, v23
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s46, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v20, s58, v19
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s47, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v9, s58, v8
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s48, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v17, s58, v20
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s49, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v7, s58, v9
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s50, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v15, s58, v17
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s51, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v6, s58, v7
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s52, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v16, s58, v15
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s53, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v4, s58, v6
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s54, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v12, s58, v16
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s55, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v5, s58, v4
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s75, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v11, s58, v12
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s76, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v3, s58, v5
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s79, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v14, s58, v11
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s80, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v2, s58, v3
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s83, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v13, s58, v14
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s86, s38
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v31, 0x80, v131
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s87, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s58, v13
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s88, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v1, s58, v2
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s90, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s93, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v26, 1, v26
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s94, s38
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v35, 0x100, v10
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s95, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v27, 1, v27
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s96, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v28, 1, v28
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s97, s38
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[48:49], s[0:1], 0x10
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s98, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v62, 1, v25
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s99, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v61, 1, v21
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s100, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v63, 1, v24
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s101, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v67, 1, v19
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s102, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v69, 1, v20
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s103, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s104, s38
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[52:53], s[6:7]
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 vcc_lo, s38
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 vcc_hi, s38
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s8, s38
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v108, 0x100, v9
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s14, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s9, s38
	v_writelane_b32 v255, s20, 2
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s33, s38
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v112, 0x100, v5
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s31, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s29, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s28, s38
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v107, 0x100, v8
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s27, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s25, s38
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v110, 0x100, v6
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s24, s38
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v111, 0x100, v4
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s19, s38
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s16, s38
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s3, s38
	.loc	1 790 61 is_stmt 0              ; attention.py:790:61
	v_cmp_gt_i32_e64 s3, s58, v31
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s2, s38
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s58, v131
	.loc	1 790 23                        ; attention.py:790:23
	s_cselect_b32 s16, -1, 0
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	v_add_nc_u32_e32 v115, 0x100, v2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s92, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v34, 0x80000000, v10 :: v_dual_lshlrev_b32 v31, 1, v33
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v10, s58, v1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s92, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s58, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v36, 0x100, v31
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v37, s58, v10
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s91, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v32, 1, v32
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s91, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_lshlrev_b32 v39, 1, v37
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v37, s58, v37
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v38, 0x100, v32
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s89, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v40, 0x100, v39
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s89, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v45, 1, v37
	v_lshlrev_b32_e32 v30, 1, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s90, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v41, 0x80000000, v39 :: v_dual_lshlrev_b32 v42, 1, v33
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s90, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v39, 0x100, v30
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s84, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v37, s58, v37
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v43, 0x80000000, v30, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s84, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v30, 0x100, v42
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s85, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_lshlrev_b32 v29, 1, v29
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s85, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v68, s58, v37
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v44, 0x80000000, v30, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v30, 0x100, v29
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s87, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v46, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s87, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v29, 0x100, v45
	v_cndmask_b32_e32 v47, 0x80000000, v30, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v30, s58, v33
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s88, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_lshlrev_b32 v10, 1, v10
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s88, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v48, 0x80000000, v29 :: v_dual_lshlrev_b32 v33, 1, v30
	v_add_nc_u32_e32 v29, 0x100, v28
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s81, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v54, s58, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v49, 0x80000000, v28, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s81, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v28, 0x100, v33
	v_cndmask_b32_e32 v50, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s82, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v29, 1, v37
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s82, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v51, 0x80000000, v28, vcc_lo
	v_add_nc_u32_e32 v28, 0x100, v27
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s83, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v52, 0x80000000, v27, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s83, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v27, 0x100, v29
	v_cndmask_b32_e32 v53, 0x80000000, v28, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s86, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v55, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s86, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v56, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v27, 0x100, v26
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s78, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v58, 0x80000000, v26, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s78, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v59, 0x80000000, v27, vcc_lo
	s_clause 0x7
	buffer_load_u16 v29, v34, s[4:7], 0 offen
	buffer_load_u16 v30, v35, s[4:7], 0 offen
	buffer_load_u16 v27, v43, s[4:7], 0 offen
	buffer_load_u16 v28, v39, s[4:7], 0 offen
	buffer_load_u16 v25, v49, s[4:7], 0 offen
	buffer_load_u16 v26, v50, s[4:7], 0 offen
	buffer_load_u16 v21, v58, s[4:7], 0 offen
	buffer_load_u16 v24, v59, s[4:7], 0 offen
	v_add_nc_u32_e32 v39, 0x100, v62
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v57, 1, v54
	v_lshlrev_b32_e32 v58, 1, v22
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s77, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v65, 1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v22, 0x100, v57
	v_cndmask_b32_e32 v60, 0x80000000, v57, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s77, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v57, 1, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v43, 0x80000000, v22, vcc_lo
	s_clause 0x7
	buffer_load_u16 v34, v31, s[4:7], 0 offen
	buffer_load_u16 v35, v36, s[4:7], 0 offen
	buffer_load_u16 v23, v42, s[4:7], 0 offen
	buffer_load_u16 v31, v44, s[4:7], 0 offen
	buffer_load_u16 v20, v33, s[4:7], 0 offen
	buffer_load_u16 v22, v51, s[4:7], 0 offen
	buffer_load_u16 v18, v60, s[4:7], 0 offen
	buffer_load_u16 v19, v43, s[4:7], 0 offen
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v33, 1, v68
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s79, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v44, 0x80000000, v62, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s79, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v36, 0x100, v33
	v_cndmask_b32_e32 v50, 0x80000000, v39, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s80, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v49, 0x100, v61
	v_cndmask_b32_e32 v70, 0x80000000, v33, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s80, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v59, 0x100, v63
	v_cndmask_b32_e32 v71, 0x80000000, v36, vcc_lo
	s_clause 0xf
	buffer_load_u16 v42, v32, s[4:7], 0 offen
	buffer_load_u16 v43, v38, s[4:7], 0 offen
	buffer_load_u16 v38, v46, s[4:7], 0 offen
	buffer_load_u16 v39, v47, s[4:7], 0 offen
	buffer_load_u16 v36, v52, s[4:7], 0 offen
	buffer_load_u16 v37, v53, s[4:7], 0 offen
	buffer_load_u16 v32, v44, s[4:7], 0 offen
	buffer_load_u16 v33, v50, s[4:7], 0 offen
	buffer_load_u16 v50, v41, s[4:7], 0 offen
	buffer_load_u16 v51, v40, s[4:7], 0 offen
	buffer_load_u16 v46, v45, s[4:7], 0 offen
	buffer_load_u16 v47, v48, s[4:7], 0 offen
	buffer_load_u16 v44, v55, s[4:7], 0 offen
	buffer_load_u16 v45, v56, s[4:7], 0 offen
	buffer_load_u16 v40, v70, s[4:7], 0 offen
	buffer_load_u16 v41, v71, s[4:7], 0 offen
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v53, s58, v54
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s73, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_lshlrev_b32 v16, 1, v16
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s73, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v55, s58, v53
	v_lshlrev_b32_e32 v53, 1, v53
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s74, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v56, s58, v68
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v81, 0x80000000, v53 :: v_dual_lshlrev_b32 v14, 1, v14
	v_add_nc_u32_e32 v53, 0x100, v53
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s74, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v68, s58, v55
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v64, 0x100, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v84, 0x80000000, v53 :: v_dual_lshlrev_b32 v55, 1, v55
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v53, 1, v56
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s75, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v72, s58, v68
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s75, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v89, 0x100, v53
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s76, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_lshlrev_b32 v68, 1, v68
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s76, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v76, s58, v72
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_lshlrev_b32 v72, 1, v72
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s71, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v66, 0x100, v57
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s71, s3
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v96, v53, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	v_cndmask_b32_e32 v53, 0x80000000, v59, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s70, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v60, 0x100, v67
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s70, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v70, s58, v56
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v59, 0x80000000, v66, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s69, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v56, 0x100, v55
	v_cndmask_b32_e32 v66, 0x80000000, v67, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s69, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_lshlrev_b32 v17, 1, v17
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s72, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v62, 0x100, v69
	v_cndmask_b32_e32 v67, 0x80000000, v55, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s68, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v79, s58, v76
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v55, 0x80000000, v69, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s72, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v52, 0x100, v17
	v_cndmask_b32_e32 v69, 0x80000000, v56, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s68, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v82, s58, v79
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v56, 0x80000000, v62, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s67, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v54, 0x100, v16
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s67, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_lshlrev_b32 v15, 1, v15
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s46, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v62, 0x80000000, v65 :: v_dual_lshlrev_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v48, 0x100, v15
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s66, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v85, s58, v82
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s66, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s65, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v71, 0x100, v12
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s65, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v87, s58, v85
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v97, 0x80000000, v54, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s64, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v74, 0x100, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s64, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_lshlrev_b32 v82, 1, v82
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s63, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v75, 0x100, v14
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s63, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v91, s58, v87
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s62, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v78, 0x100, v13
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s62, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v93, s58, v91
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s61, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v90, 0x100, v68
	v_cndmask_b32_e32 v98, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s61, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_lshlrev_b32 v91, 1, v91
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s60, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x17
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v99, v49, s[4:7], 0 offen
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	buffer_load_u16 v100, v53, s[4:7], 0 offen
	buffer_load_u16 v101, v57, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	buffer_load_u16 v102, v55, s[4:7], 0 offen
	buffer_load_u16 v103, v56, s[4:7], 0 offen
	buffer_load_u16 v56, v17, s[4:7], 0 offen
	buffer_load_u16 v57, v52, s[4:7], 0 offen
	buffer_load_u16 v54, v15, s[4:7], 0 offen
	buffer_load_u16 v55, v48, s[4:7], 0 offen
	buffer_load_u16 v52, v16, s[4:7], 0 offen
	buffer_load_u16 v53, v97, s[4:7], 0 offen
	buffer_load_u16 v48, v12, s[4:7], 0 offen
	buffer_load_u16 v49, v71, s[4:7], 0 offen
	buffer_load_u16 v12, v11, s[4:7], 0 offen
	buffer_load_u16 v13, v74, s[4:7], 0 offen
	buffer_load_u16 v16, v14, s[4:7], 0 offen
	buffer_load_u16 v17, v75, s[4:7], 0 offen
	buffer_load_u16 v14, v98, s[4:7], 0 offen
	buffer_load_u16 v15, v78, s[4:7], 0 offen
	v_dual_cndmask_b32 v11, 0x80000000, v68 :: v_dual_lshlrev_b32 v98, 1, v93
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s60, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v68, 0x100, v72
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v74, 1, v76
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v104, 0x100, v91
	v_cndmask_b32_e32 v71, 0x80000000, v90, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s59, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_lshlrev_b32 v79, 1, v79
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s59, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_lshlrev_b32 v87, 1, v87
	s_clause 0x7
	buffer_load_u16 v75, v81, s[4:7], 0 offen
	buffer_load_u16 v76, v84, s[4:7], 0 offen
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	buffer_load_u16 v78, v11, s[4:7], 0 offen
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	v_add_nc_u32_e32 v11, 0x100, v74
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s57, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v81, 0x100, v79
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s57, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_lshlrev_b32 v84, 1, v85
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s56, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v85, 0x100, v82
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s56, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v90, 0x100, v84
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s55, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v73, s58, v70
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s55, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v105, 0x100, v98
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s54, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v77, s58, v73
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s54, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_lshl_u32 v93, v93, s58, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	s_clause 0x7
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v97, v11, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	v_add_nc_u32_e32 v11, 0x100, v87
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s51, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v80, s58, v77
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s51, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v73, 1, v73
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s50, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v83, s58, v80
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s50, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v65, 0x100, v65
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s47, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v86, s58, v83
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s47, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v116, 0x100, v73
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	s_clause 0x5
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v106, v11, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v104, v104, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	v_add_nc_u32_e32 v11, 0x100, v93
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s43, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_lshlrev_b32 v80, 1, v80
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s43, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v88, s58, v86
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s46, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_lshlrev_b32 v86, 1, v86
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s45, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s45, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v118, 0x100, v80
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s44, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v92, s58, v88
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s44, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v120, 0x100, v86
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	s_clause 0x7
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	buffer_load_u16 v109, v9, s[4:7], 0 offen
	buffer_load_u16 v108, v108, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0x100, v7
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s42, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v94, s58, v92
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_lshlrev_b32 v88, 1, v88
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s42, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v92, 1, v92
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v95, s58, v94
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s41, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v122, 0x100, v88
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s40, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v125, 1, v95
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s40, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_lshlrev_b32 v94, 1, v94
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s36, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v124, 0x100, v94
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	s_clause 0x7
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v113, v9, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v110, v110, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v111, v111, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v112, v112, s[4:7], 0 offen
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v9, 1, v70
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s30, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v70, 0x100, v3
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s35, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v114, 0x100, v9
	.loc	1 787 26                        ; attention.py:787:26
	v_add_lshl_u32 v95, v95, s58, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s35, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_lshlrev_b32 v83, 1, v83
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s30, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v128, 0x100, v95
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s34, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_lshlrev_b32_e32 v77, 1, v77
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s34, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v119, 0x100, v83
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v117, 0x100, v77
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v123, 0x100, v92
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s33, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v127, 0x100, v125
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s31, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s31, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v118, v118, s[4:7], 0 offen
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v120, 0x80000000, v120, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v120, v120, s[4:7], 0 offen
	v_cndmask_b32_e32 v121, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v1, 0x100, v1
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s3
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v122, v122, s[4:7], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s3
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v124, v124, s[4:7], 0 offen
	v_cndmask_b32_e32 v126, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v10, 0x100, v10
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s3
	s_load_b128 s[24:27], s[0:1], 0x80
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v127, 0x80000000, v127, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v116, v116, s[4:7], 0 offen
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	s_clause 0x5
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v129, v11, s[4:7], 0 offen
	buffer_load_u16 v126, v126, s[4:7], 0 offen
	buffer_load_u16 v130, v10, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v128, v128, s[4:7], 0 offen
	v_lshlrev_b32_e32 v11, 1, v131
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v10, 0x210, v11
	v_add_nc_u32_e32 v209, 0, v11
	s_waitcnt vmcnt(62)
	ds_store_b16 v209, v29
	ds_store_b16 v209, v30 offset:256
	ds_store_b16 v209, v34 offset:8192
	ds_store_b16 v209, v35 offset:8448
	ds_store_b16 v209, v42 offset:16384
	ds_store_b16 v209, v43 offset:16640
	ds_store_b16 v209, v50 offset:24576
	ds_store_b16 v209, v51 offset:24832
	v_add_nc_u32_e32 v210, 0, v10
	v_xor_b32_e32 v10, 0x420, v11
	ds_store_b16 v210, v27
	ds_store_b16 v210, v28 offset:256
	ds_store_b16 v210, v23 offset:8192
	ds_store_b16 v210, v31 offset:8448
	ds_store_b16 v210, v38 offset:16384
	ds_store_b16 v210, v39 offset:16640
	ds_store_b16 v210, v46 offset:24576
	ds_store_b16 v210, v47 offset:24832
	v_add_nc_u32_e32 v211, 0, v10
	v_xor_b32_e32 v10, 0x630, v11
	ds_store_b16 v211, v25
	ds_store_b16 v211, v26 offset:256
	ds_store_b16 v211, v20 offset:8192
	ds_store_b16 v211, v22 offset:8448
	ds_store_b16 v211, v36 offset:16384
	ds_store_b16 v211, v37 offset:16640
	ds_store_b16 v211, v44 offset:24576
	ds_store_b16 v211, v45 offset:24832
	v_add_nc_u32_e32 v212, 0, v10
	v_xor_b32_e32 v10, 0x840, v11
	ds_store_b16 v212, v21
	ds_store_b16 v212, v24 offset:256
	ds_store_b16 v212, v18 offset:8192
	ds_store_b16 v212, v19 offset:8448
	ds_store_b16 v212, v32 offset:16384
	ds_store_b16 v212, v33 offset:16640
	ds_store_b16 v212, v40 offset:24576
	ds_store_b16 v212, v41 offset:24832
	v_xor_b32_e32 v18, 0xc60, v11
	v_add_nc_u32_e32 v213, 0, v10
	v_xor_b32_e32 v10, 0xa50, v11
	s_clause 0x1
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v117, v117, s[4:7], 0 offen
	ds_store_b16 v213, v61
	ds_store_b16 v213, v99 offset:256
	s_waitcnt vmcnt(57)
	ds_store_b16 v213, v75 offset:8192
	s_waitcnt vmcnt(56)
	ds_store_b16 v213, v76 offset:8448
	s_waitcnt vmcnt(35)
	ds_store_b16 v213, v58 offset:16384
	s_waitcnt vmcnt(34)
	ds_store_b16 v213, v64 offset:16640
	ds_store_b16 v213, v96 offset:24576
	ds_store_b16 v213, v89 offset:24832
	v_add_nc_u32_e32 v215, 0, v18
	v_xor_b32_e32 v18, 0xe70, v11
	v_add_nc_u32_e32 v214, 0, v10
	ds_store_b16 v214, v63
	ds_store_b16 v214, v100 offset:256
	ds_store_b16 v214, v67 offset:8192
	ds_store_b16 v214, v69 offset:8448
	s_waitcnt vmcnt(33)
	ds_store_b16 v214, v62 offset:16384
	s_waitcnt vmcnt(32)
	ds_store_b16 v214, v65 offset:16640
	s_waitcnt vmcnt(13)
	ds_store_b16 v214, v9 offset:24576
	s_waitcnt vmcnt(12)
	ds_store_b16 v214, v114 offset:24832
	v_add_nc_u32_e32 v216, 0, v18
	s_clause 0x1
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v119, v119, s[4:7], 0 offen
	ds_store_b16 v215, v101
	ds_store_b16 v215, v59 offset:256
	ds_store_b16 v215, v78 offset:8192
	ds_store_b16 v215, v71 offset:8448
	ds_store_b16 v215, v8 offset:16384
	ds_store_b16 v215, v107 offset:16640
	s_waitcnt vmcnt(11)
	ds_store_b16 v215, v73 offset:24576
	s_waitcnt vmcnt(10)
	ds_store_b16 v215, v116 offset:24832
	v_xor_b32_e32 v8, 0x1290, v11
	v_xor_b32_e32 v18, 0x1080, v11
	ds_store_b16 v216, v66
	ds_store_b16 v216, v60 offset:256
	ds_store_b16 v216, v72 offset:8192
	ds_store_b16 v216, v68 offset:8448
	ds_store_b16 v216, v109 offset:16384
	ds_store_b16 v216, v108 offset:16640
	s_waitcnt vmcnt(3)
	ds_store_b16 v216, v77 offset:24576
	s_waitcnt vmcnt(2)
	ds_store_b16 v216, v117 offset:24832
	v_add_nc_u32_e32 v218, 0, v8
	v_xor_b32_e32 v8, 0x14a0, v11
	v_add_nc_u32_e32 v217, 0, v18
	ds_store_b16 v217, v102
	ds_store_b16 v217, v103 offset:256
	ds_store_b16 v217, v74 offset:8192
	ds_store_b16 v217, v97 offset:8448
	ds_store_b16 v217, v7 offset:16384
	ds_store_b16 v217, v113 offset:16640
	ds_store_b16 v217, v80 offset:24576
	ds_store_b16 v217, v118 offset:24832
	v_add_nc_u32_e32 v219, 0, v8
	ds_store_b16 v218, v56
	ds_store_b16 v218, v57 offset:256
	ds_store_b16 v218, v79 offset:8192
	ds_store_b16 v218, v81 offset:8448
	ds_store_b16 v218, v6 offset:16384
	ds_store_b16 v218, v110 offset:16640
	s_waitcnt vmcnt(1)
	ds_store_b16 v218, v83 offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b16 v218, v119 offset:24832
	ds_store_b16 v219, v54
	ds_store_b16 v219, v55 offset:256
	ds_store_b16 v219, v82 offset:8192
	ds_store_b16 v219, v85 offset:8448
	ds_store_b16 v219, v4 offset:16384
	ds_store_b16 v219, v111 offset:16640
	ds_store_b16 v219, v86 offset:24576
	ds_store_b16 v219, v120 offset:24832
	v_xor_b32_e32 v4, 0x1ad0, v11
	v_xor_b32_e32 v7, 0x16b0, v11
	v_xor_b32_e32 v6, 0x18c0, v11
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v9, 15, v131
	v_and_b32_e32 v10, 0x60, v131
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v222, 0, v4
	s_clause 0x1
	buffer_load_u16 v92, v92, s[4:7], 0 offen
	buffer_load_u16 v123, v123, s[4:7], 0 offen
	v_add_nc_u32_e32 v220, 0, v7
	s_clause 0x5
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	buffer_load_u16 v121, v121, s[4:7], 0 offen
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	v_xor_b32_e32 v4, 0x1ef0, v11
	v_add_nc_u32_e32 v221, 0, v6
	ds_store_b16 v220, v52
	ds_store_b16 v220, v53 offset:256
	ds_store_b16 v220, v84 offset:8192
	ds_store_b16 v220, v90 offset:8448
	ds_store_b16 v220, v5 offset:16384
	ds_store_b16 v220, v112 offset:16640
	ds_store_b16 v220, v88 offset:24576
	ds_store_b16 v220, v122 offset:24832
	ds_store_b16 v221, v48
	ds_store_b16 v221, v49 offset:256
	ds_store_b16 v221, v87 offset:8192
	ds_store_b16 v221, v106 offset:8448
	s_waitcnt vmcnt(5)
	ds_store_b16 v221, v3 offset:16384
	s_waitcnt vmcnt(4)
	ds_store_b16 v221, v70 offset:16640
	ds_store_b16 v221, v92 offset:24576
	ds_store_b16 v221, v123 offset:24832
	v_add_nc_u32_e32 v224, 0, v4
	s_clause 0x1
	buffer_load_u16 v125, v125, s[4:7], 0 offen
	buffer_load_u16 v127, v127, s[4:7], 0 offen
	v_xor_b32_e32 v3, 0x1ce0, v11
	ds_store_b16 v222, v12
	ds_store_b16 v222, v13 offset:256
	ds_store_b16 v222, v91 offset:8192
	ds_store_b16 v222, v104 offset:8448
	s_waitcnt vmcnt(5)
	ds_store_b16 v222, v2 offset:16384
	s_waitcnt vmcnt(4)
	ds_store_b16 v222, v115 offset:16640
	ds_store_b16 v222, v94 offset:24576
	ds_store_b16 v222, v124 offset:24832
	v_lshlrev_b32_e32 v12, 9, v9
	v_lshlrev_b32_e32 v2, 8, v10
	v_lshlrev_b32_e32 v13, 4, v9
	v_add_nc_u32_e32 v223, 0, v3
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s39, 31
	.loc	1 758 19                        ; attention.py:758:19
	v_readlane_b32 s4, v255, 1
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s6, s5, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v3, v2, v13, v12
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s6, s6, 27
	.loc	1 788 26                        ; attention.py:788:26
	ds_store_b16 v223, v16
	ds_store_b16 v223, v17 offset:256
	ds_store_b16 v223, v98 offset:8192
	ds_store_b16 v223, v105 offset:8448
	s_waitcnt vmcnt(3)
	ds_store_b16 v223, v121 offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b16 v223, v1 offset:16640
	s_waitcnt vmcnt(1)
	ds_store_b16 v223, v125 offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b16 v223, v127 offset:24832
	ds_store_b16 v224, v14
	ds_store_b16 v224, v15 offset:256
	ds_store_b16 v224, v93 offset:8192
	ds_store_b16 v224, v129 offset:8448
	ds_store_b16 v224, v126 offset:16384
	ds_store_b16 v224, v130 offset:16640
	ds_store_b16 v224, v95 offset:24576
	ds_store_b16 v224, v128 offset:24832
	v_add_nc_u32_e32 v21, 0, v3
	v_xad_u32 v20, v3, 16, 0
	v_xad_u32 v19, v3, 32, 0
	v_xad_u32 v18, v3, 48, 0
	v_xad_u32 v17, v3, 64, 0
	v_xad_u32 v16, 0x50, v3, 0
	v_xad_u32 v15, 0x60, v3, 0
	v_xad_u32 v14, 0x70, v3, 0
	v_xad_u32 v8, 0x80, v3, 0
	v_xad_u32 v7, 0x90, v3, 0
	v_xad_u32 v6, 0xa0, v3, 0
	v_xad_u32 v5, 0xb0, v3, 0
	v_xad_u32 v1, 0xc0, v3, 0
	v_xad_u32 v4, 0xd0, v3, 0
	v_xad_u32 v2, 0xe0, v3, 0
	v_xad_u32 v3, 0xf0, v3, 0
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s5, s5, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_hi_u32 s4, s11, s4
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s19, s5, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_waitcnt lgkmcnt(0)
	s_bfe_u32 s5, s24, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s18, s26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s7, s18, s25
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s27
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s7, s7, s27
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s39, s5
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s6, s5, 31
	s_lshr_b32 s6, s6, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s6, s7, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s23, s6, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s19, s19, s5
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	ds_load_b128 v[25:28], v21
	ds_load_b128 v[21:24], v21 offset:256
	ds_load_b128 v[29:32], v20
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x6c
	s_load_b32 s68, s[0:1], 0x64
	s_mov_b32 s6, s22
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[25:28], off offset:632
	scratch_store_b128 off, v[29:32], off offset:648
	ds_load_b128 v[25:28], v20 offset:256
	v_writelane_b32 v255, s5, 3
	s_ashr_i32 s5, s10, 31
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s6
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_ashr_i32 s6, s13, 31
	scratch_store_b128 off, v[21:24], off offset:152 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[25:28], off offset:168 ; 16-byte Folded Spill
	ds_load_b128 v[23:26], v19
	ds_load_b128 v[19:22], v19 offset:256
	ds_load_b128 v[27:30], v18
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[23:26], off offset:600 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[27:30], off offset:616 ; 16-byte Folded Spill
	ds_load_b128 v[23:26], v18 offset:256
	scratch_store_b128 off, v[19:22], off offset:184 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[23:26], off offset:200 ; 16-byte Folded Spill
	ds_load_b128 v[21:24], v17
	ds_load_b128 v[17:20], v17 offset:256
	ds_load_b128 v[25:28], v16
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[21:24], off offset:568 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[25:28], off offset:584 ; 16-byte Folded Spill
	ds_load_b128 v[21:24], v16 offset:256
	scratch_store_b128 off, v[17:20], off offset:216 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[21:24], off offset:232 ; 16-byte Folded Spill
	ds_load_b128 v[19:22], v15
	ds_load_b128 v[15:18], v15 offset:256
	ds_load_b128 v[23:26], v14
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[19:22], off offset:536 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[23:26], off offset:552 ; 16-byte Folded Spill
	ds_load_b128 v[19:22], v14 offset:256
	scratch_store_b128 off, v[15:18], off offset:248 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[19:22], off offset:264 ; 16-byte Folded Spill
	ds_load_b128 v[18:21], v8
	ds_load_b128 v[14:17], v8 offset:256
	ds_load_b128 v[22:25], v7
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[18:21], off offset:504 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[22:25], off offset:520 ; 16-byte Folded Spill
	ds_load_b128 v[18:21], v7 offset:256
	scratch_store_b128 off, v[14:17], off offset:280 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[18:21], off offset:296 ; 16-byte Folded Spill
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[14:17], v6 offset:256
	ds_load_b128 v[22:25], v5
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[18:21], off offset:472 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[22:25], off offset:488 ; 16-byte Folded Spill
	ds_load_b128 v[18:21], v5 offset:256
	scratch_store_b128 off, v[14:17], off offset:312 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[18:21], off offset:328 ; 16-byte Folded Spill
	ds_load_b128 v[18:21], v1
	ds_load_b128 v[14:17], v1 offset:256
	ds_load_b128 v[22:25], v4
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s22
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[18:21], off offset:440 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[22:25], off offset:456 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention.py:0
	ds_load_b128 v[18:21], v4 offset:256
	.loc	1 809 9                         ; attention.py:809:9
	v_cmp_ne_u32_e64 s22, 1, v1
	scratch_store_b128 off, v[14:17], off offset:376 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[18:21], off offset:392 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention.py:0
	ds_load_b128 v[18:21], v2
	ds_load_b128 v[14:17], v2 offset:256
	ds_load_b128 v[22:25], v3
	.loc	1 809 9                         ; attention.py:809:9
	v_writelane_b32 v255, s22, 11
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[18:21], off offset:408 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[22:25], off offset:424 ; 16-byte Folded Spill
	.loc	1 0 0                           ; attention.py:0
	ds_load_b128 v[18:21], v3 offset:256
	scratch_store_b128 off, v[14:17], off offset:344 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[18:21], off offset:360 ; 16-byte Folded Spill
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s7, s18, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 64
	s_min_i32 s7, s39, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 27
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s7, s7, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s19, s19, s7
.LBB0_4:
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s7, s4, s12
	v_writelane_b32 v255, s24, 12
	s_xor_b32 s5, s5, s6
	s_sub_i32 s6, s11, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s6, s12
	s_cmp_ge_u32 s6, s12
	v_writelane_b32 v255, s25, 13
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s12
	v_writelane_b32 v255, s26, 14
	s_cselect_b32 s4, s7, s4
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s6, s21, s37
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s4, s4, s5
	s_mov_b32 s51, 0x31027000
	s_sub_i32 s4, s4, s5
	v_writelane_b32 v255, s27, 15
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s4, s4, s6
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s19, s23
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s5, s4, s39
	.loc	1 818 13                        ; attention.py:818:13
	s_cselect_b32 s20, -1, 0
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s4, s23, 1
	s_or_b32 s8, s23, 2
	s_or_b32 s9, s23, 3
	s_or_b32 s10, s23, 4
	s_or_b32 s11, s23, 5
	v_writelane_b32 v255, s5, 1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s37, s23, s5
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s12, s23, 6
	s_or_b32 s13, s23, 7
	s_or_b32 s14, s23, 8
	s_or_b32 s15, s23, 9
	s_or_b32 s16, s23, 10
	s_or_b32 s17, s23, 11
	s_or_b32 s26, s23, 12
	s_or_b32 s27, s23, 13
	s_or_b32 s28, s23, 14
	s_or_b32 s29, s23, 15
	s_or_b32 s30, s23, 16
	s_or_b32 s31, s23, 17
	s_or_b32 s46, s23, 18
	s_or_b32 s47, s23, 19
	s_or_b32 s50, s23, 20
	s_or_b32 s33, s23, 21
	s_or_b32 s41, s23, 22
	s_or_b32 s34, s23, 23
	s_or_b32 s42, s23, 24
	s_or_b32 s36, s23, 25
	s_or_b32 s43, s23, 26
	s_or_b32 s40, s23, 27
	s_or_b32 s44, s23, 28
	s_or_b32 s45, s23, 29
	s_or_b32 s5, s23, 30
	s_or_b32 s35, s23, 31
	.loc	1 856 65                        ; attention.py:856:65
	s_cmp_lt_i32 s23, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[1:2], null, s37, s68, v[131:132]
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s4, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[2:3], null, s37, s58, v[131:132]
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v17, s68, v1
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s9, s39
	s_mov_b32 s22, s19
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v4, s68, v17
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s11, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v16, s58, v2
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s12, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v19, s68, v4
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v3, s68, v19
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v98, 3, v131
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s16, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v20, s68, v3
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s17, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_xor_b32_e32 v11, v98, v11
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v5, s68, v20
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s27, s39
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v228, 16, v131
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s28, s39
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v24, s68, v5
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s29, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s30, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s31, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s46, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s47, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s50, s39
	s_mov_b32 s50, 0x7ffffffe
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s33, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v203, 6, v131
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s41, s39
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s34, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_and_or_b32 v11, v11, 48, v203
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s42, s39
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s36, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v0, 0, v11
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s43, s39
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s40, s39
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s44, s39
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s45, s39
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s5, s39
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s5, s68, v131
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s35, s39
	s_cselect_b32 s35, -1, 0
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s6
	s_and_b32 s47, s5, s8
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v14, 1, v2
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v2, s68, v24
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s54, s5, s10
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s47, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s55, s5, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v15, s68, v2
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s54, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s55, s20
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v6, s68, v15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v8, 0x80000000, v5, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s47, s5, s15
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 890 30                        ; attention.py:890:30
	s_and_b32 s49, s49, 0xffff
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v18, s68, v6
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v5, 1, v6
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v22, s68, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s47, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s47, s5, s31
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v21, s68, v22
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v23, 0x80000000, v5, vcc_lo
	s_clause 0x5
	buffer_load_u16 v5, v1, s[48:51], 0 offen
	buffer_load_u16 v6, v4, s[48:51], 0 offen
	buffer_load_u16 v7, v3, s[48:51], 0 offen
	buffer_load_u16 v8, v8, s[48:51], 0 offen
	buffer_load_u16 v1, v2, s[48:51], 0 offen
	buffer_load_u16 v2, v23, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v3, s68, v21
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v4, 1, v22
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s17
	s_and_b32 s54, s5, s11
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v23, s68, v3
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v25, s68, v23
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v26, 0x80000000, v3, vcc_lo
	buffer_load_u16 v3, v4, s[48:51], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s4
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v22, s68, v25
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v25, 1, v25
	buffer_load_u16 v4, v26, s[48:51], 0 offen
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s60, s2, s6
	s_and_b32 s75, s3, s7
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v26, s68, v22
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s47, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s47, s5, s43
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s77, s3, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v27, 1, v26
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v26, s68, v26
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v39, 0x100, v14
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s79, s3, s9
	s_and_b32 s81, s3, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x1
	buffer_load_u16 v81, v25, s[48:51], 0 offen
	buffer_load_u16 v82, v27, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v25, s68, v26
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s83, s3, s11
	s_and_b32 s85, s3, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v27, 1, v25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s87, s3, s13
	s_and_b32 s89, s3, s14
	s_and_b32 s91, s3, s24
	s_and_b32 s93, s3, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s42
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s95, s3, s25
	s_and_b32 s96, s2, s16
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v83, v27, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v27, s68, v25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s97, s3, s16
	s_and_b32 s98, s2, s26
	s_and_b32 s99, s3, s26
	s_and_b32 s100, s2, s17
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v25, s68, v27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s101, s3, s17
	s_and_b32 s102, s2, s27
	s_and_b32 s103, s3, s27
	s_and_b32 s104, s2, s30
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v28, 1, v25
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v29, s68, v25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_hi, s3, s30
	s_and_b32 s73, s2, s28
	s_and_b32 s71, s3, s28
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v25, s68, v29
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s44
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s69, s2, s31
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v84, v28, s[48:51], 0 offen
	v_lshlrev_b32_e32 v28, 1, v25
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v25, s68, v25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s67, s3, s31
	s_and_b32 s66, s2, s29
	s_and_b32 s65, s3, s29
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v30, s68, v25
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s47, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s47, s5, s7
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s64, s2, s4
	s_and_b32 s63, s3, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v31, 1, v30
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s19, s2, s33
	s_and_b32 s21, s3, s33
	s_and_b32 s62, s2, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v15, 1, v15
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	s_clause 0x1
	buffer_load_u16 v85, v28, s[48:51], 0 offen
	buffer_load_u16 v86, v31, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v28, s68, v30
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v23, 1, v23
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v30, s68, v28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s61, s3, s41
	s_and_b32 s78, s2, s9
	s_and_b32 s72, s2, s34
	s_and_b32 s82, s2, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v31, 1, v30
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v30, s68, v30
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s70, s3, s34
	s_and_b32 s80, s2, s10
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s11, s82, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s9
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s9, s78, s20
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s76, s2, s8
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v87, v31, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v31, s68, v30
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s10, s80, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s86, s2, s13
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s8, s76, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v32, 1, v31
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s90, s2, s24
	s_and_b32 s88, s2, s14
	s_and_b32 s92, s2, s15
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s15, s90, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s5, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v88, v32, s[48:51], 0 offen
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s54, s20
	s_and_b32 s13, s86, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s47, s20
	s_and_b32 s14, s88, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_load_u16 v24, v24, s[48:51], 0 offen
	buffer_load_u16 v20, v20, s[48:51], 0 offen
	buffer_load_u16 v19, v19, s[48:51], 0 offen
	buffer_load_u16 v17, v17, s[48:51], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s60, s20
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s84, s2, s12
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s75, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v27, 1, v27
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s12, s84, s20
	s_and_b32 s16, s92, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v31, v31, s68, 1
	v_lshlrev_b32_e32 v30, 1, v30
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s94, s2, s25
	s_and_b32 s56, s2, s42
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s17, s94, s20
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s47, s3, s42
	s_and_b32 s59, s2, s36
	s_and_b32 s57, s3, s36
	s_and_b32 s46, s2, s43
	s_and_b32 s42, s3, s43
	s_and_b32 s30, s2, s45
	s_and_b32 s4, s3, s45
	s_and_b32 s45, s2, s40
	s_and_b32 s60, s3, s40
	s_and_b32 s6, s3, s6
	s_and_b32 s41, s2, s44
	.loc	1 854 32                        ; attention.py:854:32
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s74, s2, s7
	.loc	1 854 32                        ; attention.py:854:32
	s_and_b32 s53, s53, 0xffff
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s3, s44
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s6, s6, s20
	s_and_b32 s7, s74, s20
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s43, s2, s37
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v39, 0x80000000, v39, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s44, s3, s37
	s_and_b32 s6, s3, s35
	v_cmp_eq_u32_e64 s74, 0, v228
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v8.h, v24.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v7.h, v20.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v6.h, v19.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v17.l
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v17, s58, v16
	v_lshlrev_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v19, s58, v17
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v40, 0x100, v16
	v_cndmask_b32_e64 v16, 0x80000000, v16, s7
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s7, s2, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v20, s58, v19
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s77, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v24, s58, v20
	v_lshlrev_b32_e32 v20, 1, v20
	v_add_nc_u32_e32 v32, s58, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v43, 0x100, v20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v20, 0x80000000, v20, s10
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s10, s5, s26
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v33, s58, v32
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v44, 0x100, v24
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v34, s58, v33
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v42, 0x100, v19
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v35, s58, v34
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v41, 0x100, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v36, s58, v35
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s79, s20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v37, s58, v36
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s81, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s8
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s83, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v38, s58, v37
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s85, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v19, 0x80000000, v19, s9
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v51, s58, v38
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s9, s5, s25
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v24, 0x80000000, v24, s11
	v_add_nc_u32_e32 v45, 0x100, v32
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s11, s5, s27
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v53, s58, v51
	v_lshlrev_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_lshlrev_b32 v38, 1, v38
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s87, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v33, 1, v33
	v_add_nc_u32_e32 v54, s58, v53
	v_lshlrev_b32_e32 v53, 1, v53
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s8, s5, s24
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s12
	v_add_nc_u32_e32 v46, 0x100, v33
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v56, s58, v54
	v_lshlrev_b32_e32 v54, 1, v54
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v57, 0x100, v53
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s12, s5, s28
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s89, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v34, 1, v34
	v_add_nc_u32_e32 v59, s58, v56
	v_lshlrev_b32_e32 v56, 1, v56
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v58, 0x100, v54
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	v_add_nc_u32_e32 v47, 0x100, v34
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v60, s58, v59
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v61, 0x100, v56
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s13, s5, s29
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0xf
	buffer_load_u16 v14, v14, s[52:55], 0 offen
	buffer_load_u16 v39, v39, s[52:55], 0 offen
	buffer_load_u16 v16, v16, s[52:55], 0 offen
	buffer_load_u16 v40, v40, s[52:55], 0 offen
	buffer_load_u16 v17, v17, s[52:55], 0 offen
	buffer_load_u16 v41, v41, s[52:55], 0 offen
	buffer_load_u16 v19, v19, s[52:55], 0 offen
	buffer_load_u16 v42, v42, s[52:55], 0 offen
	buffer_load_u16 v20, v20, s[52:55], 0 offen
	buffer_load_u16 v43, v43, s[52:55], 0 offen
	buffer_load_u16 v24, v24, s[52:55], 0 offen
	buffer_load_u16 v44, v44, s[52:55], 0 offen
	buffer_load_u16 v32, v32, s[52:55], 0 offen
	buffer_load_u16 v45, v45, s[52:55], 0 offen
	buffer_load_u16 v33, v33, s[52:55], 0 offen
	buffer_load_u16 v46, v46, s[52:55], 0 offen
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s91, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v35, 1, v35
	v_add_nc_u32_e32 v62, s58, v60
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s14
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s5, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v48, 0x100, v35
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v64, s58, v62
	v_lshlrev_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s93, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v36, 1, v36
	v_add_nc_u32_e32 v67, s58, v64
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v66, 0x100, v62
	v_cndmask_b32_e64 v35, 0x80000000, v35, s15
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s5, s34
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v49, 0x100, v36
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v68, s58, v67
	v_lshlrev_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_lshlrev_b32 v64, 1, v64
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s95, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v69, 0x100, v64
	v_add_nc_u32_e32 v71, 0x100, v67
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v70, s58, v68
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v50, 0x100, v37
	v_cndmask_b32_e64 v36, 0x80000000, v36, s16
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s5, s36
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v72, s58, v70
	v_lshlrev_b32_e32 v70, 1, v70
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s96, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v73, 0x100, v68
	v_cndmask_b32_e32 v52, 0x80000000, v38, vcc_lo
	v_add_nc_u32_e32 v38, 0x100, v38
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s97, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v74, 0x100, v70
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v75, s58, v72
	v_lshlrev_b32_e32 v72, 1, v72
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_add_nc_u32_e32 v55, 0x100, v51
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s98, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v76, s58, v75
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s99, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v37, 0x80000000, v37, s17
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s100, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v78, s58, v76
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s101, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s5, s40
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s102, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_lshlrev_b32 v75, 1, v75
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s103, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v77, 0x100, v72
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s104, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_lshlrev_b32 v59, 1, v59
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, vcc_hi, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v80, s58, v78
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s73, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v60, 1, v60
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v63, 0x100, v59
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s71, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v79, 0x100, v75
	v_add_nc_u32_e32 v65, 0x100, v60
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s69, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v91, s58, v80
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s67, s20
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x7
	buffer_load_u16 v34, v34, s[52:55], 0 offen
	buffer_load_u16 v47, v47, s[52:55], 0 offen
	buffer_load_u16 v35, v35, s[52:55], 0 offen
	buffer_load_u16 v48, v48, s[52:55], 0 offen
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	buffer_load_u16 v49, v49, s[52:55], 0 offen
	buffer_load_u16 v37, v37, s[52:55], 0 offen
	buffer_load_u16 v50, v50, s[52:55], 0 offen
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s66, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v92, s58, v91
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s65, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_lshlrev_b32 v91, 1, v91
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s64, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v95, 1, v92
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s63, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_lshlrev_b32 v80, 1, v80
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s19, s20
	.loc	1 853 32                        ; attention.py:853:32
	v_add_lshl_u32 v92, v92, s58, 1
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s21, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v93, 0x100, v80
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s62, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v97, 0x100, v92
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s61, s20
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x7
	buffer_load_u16 v56, v56, s[52:55], 0 offen
	buffer_load_u16 v61, v61, s[52:55], 0 offen
	buffer_load_u16 v59, v59, s[52:55], 0 offen
	buffer_load_u16 v63, v63, s[52:55], 0 offen
	buffer_load_u16 v60, v60, s[52:55], 0 offen
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v62, v62, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s72, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v94, 0x100, v91
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s70, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v96, 0x100, v95
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s9, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s9, s5, s35
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s11, s20
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_u16 v52, v52, s[52:55], 0 offen
	buffer_load_u16 v38, v38, s[52:55], 0 offen
	buffer_load_u16 v51, v51, s[52:55], 0 offen
	buffer_load_u16 v55, v55, s[52:55], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s10, s20
	s_load_b64 s[72:73], s[0:1], 0x38
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s8, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s8, s5, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s13, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v29, 1, v29
	v_lshlrev_b32_e32 v26, 1, v26
	s_clause 0x3
	buffer_load_u16 v23, v23, s[48:51], 0 offen
	buffer_load_u16 v21, v21, s[48:51], 0 offen
	buffer_load_u16 v18, v18, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	.loc	1 860 31                        ; attention.py:860:31
	v_readlane_b32 s1, v255, 3
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s15, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s14, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s12, s20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s16, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_lshlrev_b32 v28, 1, v28
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s8, s20
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v29, v29, s[48:51], 0 offen
	buffer_load_u16 v27, v27, s[48:51], 0 offen
	buffer_load_u16 v26, v26, s[48:51], 0 offen
	buffer_load_u16 v22, v22, s[48:51], 0 offen
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s9, s20
	v_readlane_b32 s8, v255, 12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s17, s20
	v_readlane_b32 s11, v255, 15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s56, s20
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v31, v31, s[48:51], 0 offen
	buffer_load_u16 v30, v30, s[48:51], 0 offen
	buffer_load_u16 v28, v28, s[48:51], 0 offen
	buffer_load_u16 v25, v25, s[48:51], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x7
	buffer_load_u16 v64, v64, s[52:55], 0 offen
	buffer_load_u16 v69, v69, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v71, v71, s[52:55], 0 offen
	buffer_load_u16 v68, v68, s[52:55], 0 offen
	buffer_load_u16 v73, v73, s[52:55], 0 offen
	buffer_load_u16 v70, v70, s[52:55], 0 offen
	buffer_load_u16 v74, v74, s[52:55], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s47, s20
	v_readlane_b32 s9, v255, 13
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s59, s20
	v_readlane_b32 s10, v255, 14
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s57, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v79, 0x80000000, v79 :: v_dual_lshlrev_b32 v76, 1, v76
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s46, s20
	s_mov_b32 s47, s22
	s_mov_b32 s8, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v89, 0x100, v76
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s42, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_lshlrev_b32 v78, 1, v78
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s45, s20
	s_mov_b32 s45, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v90, 0x100, v78
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s60, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s41, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s31, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s43, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	s_clause 0x7
	buffer_load_u16 v72, v72, s[52:55], 0 offen
	buffer_load_u16 v77, v77, s[52:55], 0 offen
	buffer_load_u16 v75, v75, s[52:55], 0 offen
	buffer_load_u16 v79, v79, s[52:55], 0 offen
	buffer_load_u16 v76, v76, s[52:55], 0 offen
	buffer_load_u16 v89, v89, s[52:55], 0 offen
	buffer_load_u16 v78, v78, s[52:55], 0 offen
	buffer_load_u16 v90, v90, s[52:55], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s44, s20
	s_sub_i32 s44, s22, 32
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s30, s20
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_u16 v91, v91, s[52:55], 0 offen
	buffer_load_u16 v94, v94, s[52:55], 0 offen
	buffer_load_u16 v53, v53, s[52:55], 0 offen
	buffer_load_u16 v57, v57, s[52:55], 0 offen
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s4, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s7, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, s6, s20
	s_cmp_ge_i32 s23, s44
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	s_clause 0x7
	buffer_load_u16 v80, v80, s[52:55], 0 offen
	buffer_load_u16 v93, v93, s[52:55], 0 offen
	buffer_load_u16 v95, v95, s[52:55], 0 offen
	buffer_load_u16 v96, v96, s[52:55], 0 offen
	buffer_load_u16 v54, v54, s[52:55], 0 offen
	buffer_load_u16 v58, v58, s[52:55], 0 offen
	buffer_load_u16 v92, v92, s[52:55], 0 offen
	buffer_load_u16 v97, v97, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v0, v[5:8] offset:16384
	v_xor_b32_e32 v5, 16, v11
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	s_waitcnt vmcnt(39)
	v_mov_b16_e32 v4.h, v23.l
	s_waitcnt vmcnt(38)
	v_mov_b16_e32 v3.h, v21.l
	s_waitcnt vmcnt(37)
	v_mov_b16_e32 v2.h, v18.l
	s_waitcnt vmcnt(36)
	v_mov_b16_e32 v1.h, v15.l
	ds_store_b128 v0, v[1:4] offset:16384
	v_xor_b32_e32 v1, 32, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 48, v11
	s_waitcnt vmcnt(35)
	v_mov_b16_e32 v84.h, v29.l
	s_waitcnt vmcnt(34)
	v_mov_b16_e32 v83.h, v27.l
	s_waitcnt vmcnt(33)
	v_mov_b16_e32 v82.h, v26.l
	s_waitcnt vmcnt(32)
	v_mov_b16_e32 v81.h, v22.l
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	s_waitcnt vmcnt(28)
	v_mov_b16_e32 v85.h, v25.l
	v_mov_b16_e32 v86.h, v28.l
	v_mov_b16_e32 v87.h, v30.l
	ds_store_b128 v0, v[81:84] offset:16384
	v_add_nc_u32_e32 v0, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v88.h, v31.l
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v227, v1, v9
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v0, v[85:88] offset:16384
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v0, v131, 4, 1
	.loc	1 854 32                        ; attention.py:854:32
	ds_store_b16 v209, v14
	ds_store_b16 v209, v39 offset:256
	ds_store_b16 v209, v56 offset:8192
	ds_store_b16 v209, v61 offset:8448
	ds_store_b16 v210, v16
	ds_store_b16 v210, v40 offset:256
	ds_store_b16 v210, v59 offset:8192
	ds_store_b16 v210, v63 offset:8448
	ds_store_b16 v211, v17
	ds_store_b16 v211, v41 offset:256
	ds_store_b16 v211, v60 offset:8192
	ds_store_b16 v211, v65 offset:8448
	ds_store_b16 v212, v19
	ds_store_b16 v212, v42 offset:256
	ds_store_b16 v212, v62 offset:8192
	ds_store_b16 v212, v66 offset:8448
	ds_store_b16 v213, v20
	ds_store_b16 v213, v43 offset:256
	s_waitcnt vmcnt(27)
	ds_store_b16 v213, v64 offset:8192
	s_waitcnt vmcnt(26)
	ds_store_b16 v213, v69 offset:8448
	ds_store_b16 v214, v24
	ds_store_b16 v214, v44 offset:256
	s_waitcnt vmcnt(25)
	ds_store_b16 v214, v67 offset:8192
	s_waitcnt vmcnt(24)
	ds_store_b16 v214, v71 offset:8448
	ds_store_b16 v215, v32
	ds_store_b16 v215, v45 offset:256
	s_waitcnt vmcnt(23)
	ds_store_b16 v215, v68 offset:8192
	s_waitcnt vmcnt(22)
	ds_store_b16 v215, v73 offset:8448
	ds_store_b16 v216, v33
	ds_store_b16 v216, v46 offset:256
	s_waitcnt vmcnt(21)
	ds_store_b16 v216, v70 offset:8192
	s_waitcnt vmcnt(20)
	ds_store_b16 v216, v74 offset:8448
	ds_store_b16 v217, v34
	ds_store_b16 v217, v47 offset:256
	s_waitcnt vmcnt(19)
	ds_store_b16 v217, v72 offset:8192
	s_waitcnt vmcnt(18)
	ds_store_b16 v217, v77 offset:8448
	ds_store_b16 v218, v35
	ds_store_b16 v218, v48 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b16 v218, v75 offset:8192
	s_waitcnt vmcnt(16)
	ds_store_b16 v218, v79 offset:8448
	ds_store_b16 v219, v36
	ds_store_b16 v219, v49 offset:256
	s_waitcnt vmcnt(15)
	ds_store_b16 v219, v76 offset:8192
	s_waitcnt vmcnt(14)
	ds_store_b16 v219, v89 offset:8448
	ds_store_b16 v220, v37
	ds_store_b16 v220, v50 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b16 v220, v78 offset:8192
	s_waitcnt vmcnt(12)
	ds_store_b16 v220, v90 offset:8448
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s18, v227
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v2, 2, v0
	v_or_b32_e32 v78, v12, v13
	.loc	1 890 30                        ; attention.py:890:30
	v_and_b32_e32 v75, 48, v98
	.loc	1 854 32                        ; attention.py:854:32
	ds_store_b16 v221, v52
	ds_store_b16 v221, v38 offset:256
	s_waitcnt vmcnt(7)
	ds_store_b16 v221, v80 offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b16 v221, v93 offset:8448
	ds_store_b16 v222, v51
	ds_store_b16 v222, v55 offset:256
	ds_store_b16 v222, v91 offset:8192
	ds_store_b16 v222, v94 offset:8448
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s38, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v232, s11, v1
	v_bfe_i32 v1, v131, 3, 1
	.loc	1 760 21                        ; attention.py:760:21
	scratch_store_b32 off, v2, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 4, v0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s38, s1, 0x3fb8aa3b
	v_subrev_nc_u32_e32 v231, s9, v232
	v_and_b32_e32 v74, 0x210, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v1, 16, v0
	scratch_store_b32 off, v2, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 6, v0
	v_add_nc_u32_e32 v230, s10, v232
	.loc	1 854 32                        ; attention.py:854:32
	ds_store_b16 v223, v53
	ds_store_b16 v223, v57 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b16 v223, v95 offset:8192
	s_waitcnt vmcnt(4)
	ds_store_b16 v223, v96 offset:8448
	s_waitcnt vmcnt(3)
	ds_store_b16 v224, v54
	s_waitcnt vmcnt(2)
	ds_store_b16 v224, v58 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b16 v224, v92 offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b16 v224, v97 offset:8448
	.loc	1 760 21                        ; attention.py:760:21
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 18, v0
	scratch_store_b32 off, v2, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 8, v0
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 20, v0
	scratch_store_b32 off, v2, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 10, v0
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 22, v0
	scratch_store_b32 off, v2, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 12, v0
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 24, v0
	.loc	1 854 32                        ; attention.py:854:32
	scratch_store_b32 off, v2, off offset:108 ; 4-byte Folded Spill
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v2, 14, v0
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 26, v0
	.loc	1 790 23                        ; attention.py:790:23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:116
	scratch_store_b32 off, v1, off offset:144
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v1, 28, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:132
	scratch_store_b32 off, v0, off offset:88
	v_or_b32_e32 v0, 30, v0
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[137:140], off, off offset:536
	scratch_load_b128 v[141:144], off, off offset:552
	scratch_load_b128 v[121:124], off, off offset:472
	scratch_load_b128 v[125:128], off, off offset:488
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_writelane_b32 v255, s8, 3
	v_xor_b32_e32 v2, 32, v78
	v_mov_b32_e32 v9, 0x5410
	v_dual_mov_b32 v10, 0x7632 :: v_dual_mov_b32 v185, 0
	v_writelane_b32 v255, s9, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v226, 0, v2
	v_cndmask_b32_e64 v9, 0x1054, v9, s74
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v10, 0x3276, v10, s74
	v_and_or_b32 v14, 0x1c0, v203, v75
	v_writelane_b32 v255, s10, 5
	v_xor_b32_e32 v1, 16, v78
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v10, v10, 8, v10
	v_xor_b32_e32 v0, v14, v74
	v_writelane_b32 v255, s11, 6
	v_xor_b32_e32 v3, 48, v78
	v_dual_mov_b32 v186, v185 :: v_dual_and_b32 v9, 0x540054, v9
	v_dual_mov_b32 v187, v185 :: v_dual_and_b32 v10, 0x760076, v10
	v_writelane_b32 v255, s12, 7
	v_xor_b32_e32 v4, 64, v78
	v_xor_b32_e32 v5, 0x50, v78
	v_xor_b32_e32 v6, 0x60, v78
	v_xor_b32_e32 v7, 0x70, v78
	v_writelane_b32 v255, s13, 8
	v_xor_b32_e32 v8, 0x80, v78
	v_xor_b32_e32 v11, 0x90, v78
	v_xor_b32_e32 v12, 0xa0, v78
	v_xor_b32_e32 v13, 0xb0, v78
	v_writelane_b32 v255, s14, 9
	v_xor_b32_e32 v15, 0xc0, v78
	v_xor_b32_e32 v16, 0xd0, v78
	v_xor_b32_e32 v14, 0xe0, v78
	v_xor_b32_e32 v17, 0xf0, v78
	v_xor_b32_e32 v18, 16, v0
	v_xor_b32_e32 v19, 32, v0
	v_xor_b32_e32 v20, 48, v0
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v10, 4, v10
	v_xor_b32_e32 v21, 0x420, v0
	v_xor_b32_e32 v22, 0x430, v0
	v_xor_b32_e32 v23, 0x410, v0
	v_writelane_b32 v255, s15, 10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v228, off offset:688
	scratch_store_b32 off, v227, off offset:684
	v_dual_mov_b32 v189, v185 :: v_dual_and_b32 v228, 0x5040504, v9
	v_dual_mov_b32 v188, v185 :: v_dual_and_b32 v229, 0x7060706, v10
	v_dual_mov_b32 v190, v185 :: v_dual_add_nc_u32 v225, 0, v1
	v_dual_mov_b32 v192, v185 :: v_dual_add_nc_u32 v227, 0, v3
	v_dual_mov_b32 v178, v185 :: v_dual_add_nc_u32 v235, 0, v4
	v_dual_mov_b32 v191, v185 :: v_dual_add_nc_u32 v234, 0, v5
	v_dual_mov_b32 v177, v185 :: v_dual_add_nc_u32 v236, 0, v6
	v_dual_mov_b32 v180, v185 :: v_dual_add_nc_u32 v237, 0, v7
	v_dual_mov_b32 v179, v185 :: v_dual_add_nc_u32 v238, 0, v8
	v_dual_mov_b32 v182, v185 :: v_dual_add_nc_u32 v239, 0, v11
	v_dual_mov_b32 v181, v185 :: v_dual_add_nc_u32 v240, 0, v12
	v_dual_mov_b32 v184, v185 :: v_dual_add_nc_u32 v241, 0, v13
	v_dual_mov_b32 v183, v185 :: v_dual_add_nc_u32 v242, 0, v15
	v_dual_mov_b32 v170, v185 :: v_dual_add_nc_u32 v243, 0, v16
	v_dual_mov_b32 v169, v185 :: v_dual_add_nc_u32 v244, 0, v14
	v_dual_mov_b32 v172, v185 :: v_dual_add_nc_u32 v245, 0, v17
	v_dual_mov_b32 v171, v185 :: v_dual_add_nc_u32 v246, 0, v18
	v_dual_mov_b32 v174, v185 :: v_dual_add_nc_u32 v247, 0, v19
	v_dual_mov_b32 v173, v185 :: v_dual_add_nc_u32 v248, 0, v20
	v_dual_mov_b32 v175, v185 :: v_dual_add_nc_u32 v250, 0, v21
	v_dual_mov_b32 v176, v185 :: v_dual_add_nc_u32 v251, 0, v22
	v_dual_mov_b32 v161, v185 :: v_dual_add_nc_u32 v252, 0, v23
	v_dual_mov_b32 v162, v185 :: v_dual_mov_b32 v73, 0xff800000
	v_mov_b32_e32 v163, v185
	v_mov_b32_e32 v164, v185
	v_mov_b32_e32 v165, v185
	v_mov_b32_e32 v166, v185
	v_mov_b32_e32 v167, v185
	v_mov_b32_e32 v168, v185
	v_mov_b32_e32 v153, v185
	v_mov_b32_e32 v154, v185
	v_mov_b32_e32 v155, v185
	v_mov_b32_e32 v156, v185
	v_mov_b32_e32 v157, v185
	v_mov_b32_e32 v158, v185
	v_mov_b32_e32 v159, v185
	v_mov_b32_e32 v160, v185
	v_mov_b32_e32 v145, v185
	v_mov_b32_e32 v146, v185
	v_mov_b32_e32 v147, v185
	v_mov_b32_e32 v148, v185
	v_mov_b32_e32 v149, v185
	v_mov_b32_e32 v150, v185
	v_mov_b32_e32 v151, v185
	v_mov_b32_e32 v152, v185
	v_mov_b32_e32 v81, v185
	v_mov_b32_e32 v82, v185
	v_mov_b32_e32 v83, v185
	v_mov_b32_e32 v84, v185
	v_mov_b32_e32 v85, v185
	v_mov_b32_e32 v86, v185
	v_mov_b32_e32 v87, v185
	v_mov_b32_e32 v88, v185
	v_mov_b32_e32 v1, v185
	v_mov_b32_e32 v2, v185
	v_mov_b32_e32 v3, v185
	v_mov_b32_e32 v4, v185
	v_mov_b32_e32 v5, v185
	v_mov_b32_e32 v6, v185
	v_mov_b32_e32 v7, v185
	v_mov_b32_e32 v8, v185
	v_mov_b32_e32 v253, v185
	v_readlane_b32 s43, v255, 0
	v_readlane_b32 s46, v255, 11
	s_mov_b32 s63, 0x76543210
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s64, s45
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v203, off offset:692
	scratch_store_b32 off, v75, off offset:700
	scratch_store_b32 off, v74, off offset:696
	scratch_store_b32 off, v0, off offset:680
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v9, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v74, s38, v193 :: v_dual_mul_f32 v75, s38, v194
	v_dual_mul_f32 v77, s38, v195 :: v_dual_mul_f32 v76, s38, v196
	v_dual_mul_f32 v78, s38, v197 :: v_dual_mul_f32 v91, s38, v199
	v_dual_mul_f32 v80, s38, v198 :: v_dual_mul_f32 v97, s38, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v74, s42
	v_cndmask_b32_e64 v75, 0xff800000, v75, s41
	v_cndmask_b32_e64 v76, 0xff800000, v76, s59
	v_cndmask_b32_e64 v79, 0xff800000, v78, s62
	v_cndmask_b32_e64 v78, 0xff800000, v80, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v98, s38, v201 :: v_dual_mul_f32 v89, s38, v202
	v_dual_mul_f32 v90, s38, v203 :: v_dual_mul_f32 v93, s38, v205
	v_dual_mul_f32 v92, s38, v204 :: v_dual_mul_f32 v99, s38, v206
	v_dual_mul_f32 v100, s38, v207 :: v_dual_mul_f32 v101, s38, v208
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s40
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v80, v74, v75
	v_max3_f32 v94, v76, v79, v78
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v89, s60
	v_cndmask_b32_e64 v95, 0xff800000, v90, s56
	v_cndmask_b32_e64 v93, 0xff800000, v93, s104
	v_cndmask_b32_e64 v89, 0xff800000, v100, s102
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v80, v77, v94
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v92, vcc_hi
	v_cndmask_b32_e64 v92, 0xff800000, v99, s103
	v_cndmask_b32_e64 v90, 0xff800000, v101, s101
	v_cndmask_b32_e64 v91, 0xff800000, v91, s61
	v_cndmask_b32_e64 v193, 0xff800000, v98, s57
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v80, v96, v95, v94
	v_max3_f32 v99, v93, v92, v89
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v199.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v99, v80, v99, v90
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v97, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v100.h, v199.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v97, v91, v80, v193
	v_max3_f32 v97, v102, v97, v99
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v102.h, v199.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v98, v97, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v201, v73, v97, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v201
	v_sub_f32_e32 v74, v74, v201
	v_sub_f32_e32 v76, v76, v201
	v_sub_f32_e32 v78, v78, v201
	v_sub_f32_e32 v80, v80, v201
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v97, v74
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v96, v201
	v_sub_f32_e32 v77, v77, v201
	v_sub_f32_e32 v95, v95, v201
	v_sub_f32_e32 v94, v94, v201
	v_sub_f32_e32 v92, v92, v201
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v95, v95
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v75, s41
	v_cndmask_b32_e64 v75, 0, v97, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v97.h, v199.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v92, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v199.l, v74.h
	v_mov_b16_e32 v97.l, v75.h
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v204, 0, v96, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v98, 1, v199
	v_and_b32_e32 v97, 1, v97
	v_mov_b16_e64 v96.h, v199.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v205, 0, v95, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v95.h, v199.h
	v_add3_u32 v98, v74, v98, 0x7fff
	v_add3_u32 v97, v75, v97, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v206, 0, v94, vcc_hi
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v95.l, v205.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v208, 0, v92, s103
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v98.h, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.l, 0x7fff, v97.h, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v93, v201
	v_sub_f32_e32 v90, v90, v201
	v_sub_f32_e32 v79, v79, v201
	v_sub_f32_e32 v91, v91, v201
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v99, v98, s63, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v91, v91
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v97, v99, v98, v228
	v_perm_b32 v98, v99, v98, v229
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v76
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v77, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v94, 1, v95
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v75, v74
.Ltmp14:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v207, 0, v93, s104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v93.h, v199.h
	v_mov_b16_e32 v100.l, v76.h
	v_cmp_o_f32_e64 s6, v76, v76
	v_add3_u32 v94, v205, v94, 0x7fff
	v_mov_b16_e64 v93.l, v207.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v99, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v99, 1, v100
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v92, 1, v93
	v_mov_b16_e64 v199.l, v77.h
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_add3_u32 v99, v76, v99, 0x7fff
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v76, v77
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v92, v207, v92, 0x7fff
	v_and_b32_e32 v100, 1, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v75
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v100, v77, v100, 0x7fff
	v_cndmask_b16 v100.l, 0x7fff, v99.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v100.h, 0x7fff, v100.h, vcc_lo
	v_permlanex16_b32 v101, v100, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v99, v101, v100, v228
	v_perm_b32 v100, v101, v100, v229
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v78
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v79, s62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v102.l, v78.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s6, v78, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v101, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v101, 1, v102
	v_mov_b16_e64 v199.l, v79.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v101, v78, v101, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v102, 1, v199
	v_add3_u32 v102, v79, v102, 0x7fff
	v_cndmask_b16 v102.l, 0x7fff, v101.h, s6
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v205, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v102.h, 0x7fff, v102.h, vcc_lo
	v_permlanex16_b32 v103, v102, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v101, v103, v102, v228
	v_perm_b32 v102, v103, v102, v229
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v80
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v91, s61
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v91.h, v199.h
	v_mov_b16_e32 v91.l, v80.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s6, v80, v80
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v103, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v91
	v_mov_b16_e64 v199.l, v202.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v91, v80, v91, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v202, v202
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v77, v80, v202 :: v_dual_add_f32 v80, v207, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v199
	v_cndmask_b16 v104.l, 0x7fff, v91.h, s6
	v_mov_b16_e64 v199.l, v204.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v76, v77
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v103, v202, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v75
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v104.h, 0x7fff, v103.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v73
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v73, v73, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v91, v104, s63, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v103, v91, v104, v228
	v_perm_b32 v104, v91, v104, v229
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v185, v185, v73
	v_mul_f32_e32 v186, v186, v73
	v_mul_f32_e32 v187, v187, v73
	v_mul_f32_e32 v188, v188, v73
	v_mul_f32_e32 v189, v189, v73
	v_mul_f32_e32 v190, v190, v73
	v_mul_f32_e32 v191, v191, v73
	v_mul_f32_e32 v192, v192, v73
	v_mul_f32_e32 v177, v177, v73
	v_mul_f32_e32 v178, v178, v73
	v_mul_f32_e32 v179, v179, v73
	v_mul_f32_e32 v180, v180, v73
	v_mul_f32_e32 v181, v181, v73
	v_mul_f32_e32 v182, v182, v73
	v_mul_f32_e32 v183, v183, v73
	v_mul_f32_e32 v184, v184, v73
	v_mul_f32_e32 v169, v169, v73
	v_mul_f32_e32 v170, v170, v73
	v_mul_f32_e32 v171, v171, v73
	v_mul_f32_e32 v172, v172, v73
	v_mul_f32_e32 v173, v173, v73
	v_mul_f32_e32 v174, v174, v73
	v_mul_f32_e32 v175, v175, v73
	v_mul_f32_e32 v176, v176, v73
	v_mul_f32_e32 v161, v161, v73
	v_mul_f32_e32 v162, v162, v73
	v_mul_f32_e32 v163, v163, v73
	v_mul_f32_e32 v164, v164, v73
	v_mul_f32_e32 v165, v165, v73
	v_mul_f32_e32 v166, v166, v73
	v_mul_f32_e32 v167, v167, v73
	v_mul_f32_e32 v168, v168, v73
	v_mul_f32_e32 v153, v153, v73
	v_mul_f32_e32 v154, v154, v73
	v_mul_f32_e32 v155, v155, v73
	v_mul_f32_e32 v156, v156, v73
	v_mul_f32_e32 v157, v157, v73
	v_mul_f32_e32 v158, v158, v73
	v_mul_f32_e32 v159, v159, v73
	v_mul_f32_e32 v160, v160, v73
	v_mul_f32_e32 v145, v145, v73
	v_mul_f32_e32 v146, v146, v73
	v_mul_f32_e32 v147, v147, v73
	v_mul_f32_e32 v148, v148, v73
	v_mul_f32_e32 v149, v149, v73
	v_mul_f32_e32 v150, v150, v73
	v_mul_f32_e32 v151, v151, v73
	v_mul_f32_e32 v152, v152, v73
	v_mul_f32_e32 v81, v81, v73
	v_mul_f32_e32 v82, v82, v73
	v_mul_f32_e32 v83, v83, v73
	v_mul_f32_e32 v84, v84, v73
	v_mul_f32_e32 v85, v85, v73
	v_mul_f32_e32 v86, v86, v73
	v_mul_f32_e32 v87, v87, v73
	v_mul_f32_e32 v88, v88, v73
	v_mul_f32_e32 v1, v1, v73
	v_mul_f32_e32 v2, v2, v73
	v_mul_f32_e32 v3, v3, v73
	v_mul_f32_e32 v4, v4, v73
	v_mul_f32_e32 v5, v5, v73
	v_mul_f32_e32 v6, v6, v73
	v_mul_f32_e32 v7, v7, v73
	v_mul_f32_e32 v8, v8, v73
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, 0, v9
	ds_load_b128 v[109:112], v246 offset:16384
	ds_load_b128 v[105:108], v91 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[185:192], v[105:112], v[97:104], v[185:192]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v250 offset:16384
	ds_load_b128 v[109:112], v251 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[177:184], v[105:112], v[97:104], v[177:184]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[109:112], v246 offset:18432
	ds_load_b128 v[105:108], v91 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[105:112], v[97:104], v[169:176]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v250 offset:18432
	ds_load_b128 v[109:112], v251 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[105:112], v[97:104], v[161:168]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v91 offset:20480
	ds_load_b128 v[109:112], v246 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[105:112], v[97:104], v[153:160]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v250 offset:20480
	ds_load_b128 v[109:112], v251 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[105:112], v[97:104], v[145:152]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v91 offset:22528
	ds_load_b128 v[109:112], v246 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[97:104], v[81:88]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v250 offset:22528
	ds_load_b128 v[109:112], v251 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[97:104], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v97, v193, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v203, 0, v97, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v97, 1, v199
	v_mov_b16_e64 v199.l, v206.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v96.l, v203.h
	v_add3_u32 v97, v204, v97, 0x7fff
	v_cmp_o_f32_e64 s6, v203, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v95, 1, v199
	v_mov_b16_e64 v199.l, v208.h
	v_and_b32_e32 v96, 1, v96
	v_cndmask_b16 v97.h, 0x7fff, v97.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_add3_u32 v95, v206, v95, 0x7fff
	v_and_b32_e32 v93, 1, v199
	v_add3_u32 v96, v203, v96, 0x7fff
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v203, v204 :: v_dual_sub_f32 v89, v89, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v95.h, 0x7fff, v95.h, vcc_lo
	v_add3_u32 v93, v208, v93, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v97.l, 0x7fff, v96.h, s6
	v_cmp_o_f32_e64 s6, v205, v205
	v_cmp_o_f32_e32 vcc_lo, v208, v208
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v78, v79
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v199.l, v90.h
	v_cndmask_b16 v95.l, 0x7fff, v94.h, s6
	v_cmp_o_f32_e64 s6, v207, v207
	v_cndmask_b16 v93.h, 0x7fff, v93.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_permlanex16_b32 v96, v97, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v94, v95, s63, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v93.l, 0x7fff, v92.h, s6
	v_mov_b32_e32 v78, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s102
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v193, v96, v97, v228
	v_perm_b32 v194, v96, v97, v229
	v_permlanex16_b32 v92, v93, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v195, v94, v95, v228
	v_cmp_o_f32_e64 s6, v89, v89
	v_perm_b32 v196, v94, v95, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v197, v92, v93, v228
	v_perm_b32 v198, v92, v93, v229
	v_mov_b16_e32 v92.l, v89.h
	v_mov_b16_e64 v92.h, v199.h
	v_and_b32_e32 v93, 1, v199
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v93, v90, v93, 0x7fff
	v_add3_u32 v92, v89, v92, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v93.h, 0x7fff, v93.h, vcc_lo
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v90
.Ltmp34:
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s99
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v93.l, 0x7fff, v92.h, s6
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s6, s5, s75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v80, v89
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v92, v93, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v76, v77
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v199, v92, v93, v228
	v_perm_b32 v200, v92, v93, v229
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v247 offset:16384
	ds_load_b128 v[96:99], v248 offset:16384
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v74, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v202, v74, v75
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp42:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v202, v253, v73
	v_mov_b32_e32 v73, v201
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[185:192], v[92:99], v[193:200], v[185:192]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v91 offset:17408
	ds_load_b128 v[96:99], v252 offset:16384
	v_mov_b32_e32 v253, v202
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[177:184], v[92:99], v[193:200], v[177:184]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v247 offset:18432
	ds_load_b128 v[96:99], v248 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[92:99], v[193:200], v[169:176]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[96:99], v252 offset:18432
	ds_load_b128 v[92:95], v91 offset:19456
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[92:99], v[193:200], v[161:168]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v247 offset:20480
	ds_load_b128 v[96:99], v248 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[92:99], v[193:200], v[153:160]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v91 offset:21504
	ds_load_b128 v[96:99], v252 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[145:152], v[92:99], v[193:200], v[145:152]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v247 offset:22528
	ds_load_b128 v[96:99], v248 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[92:99], v[193:200], v[81:88]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[91:94], v91 offset:23552
	ds_load_b128 v[95:98], v252 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[91:98], v[193:200], v[1:8]
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[91:92], null, s66, s68, v[131:132]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v107, s68, v91
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v92, 1, v91
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v93, s68, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v91, 0x80000000, v92, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s100
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v107, 1, v107
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v108, s68, v93
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v92, 1, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v94, s68, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s98
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v91, v91, s[48:51], 0 offen
	buffer_load_u16 v92, v92, s[48:51], 0 offen
	v_lshlrev_b32_e32 v93, 1, v94
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v109, s68, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v95, s68, v109
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s97
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v93, v93, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v110, s68, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v94, 1, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v95, s68, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v111, s68, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v96, 1, v95
	buffer_load_u16 v94, v94, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v97, s68, v111
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v95, 0x80000000, v96, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v112, s68, v97
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v96, 1, v97
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v98, s68, v112
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s91
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v95, v95, s[48:51], 0 offen
	buffer_load_u16 v96, v96, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v193, s68, v98
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v97, 1, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v99, s68, v193
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v194, s68, v99
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v98, 1, v99
	buffer_load_u16 v97, v97, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v99, s68, v194
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v195, s68, v99
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v100, 1, v99
	buffer_load_u16 v98, v98, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v101, s68, v195
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v99, 0x80000000, v100, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v196, s68, v101
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v100, 1, v101
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v102, s68, v196
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s89
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v99, v99, s[48:51], 0 offen
	buffer_load_u16 v100, v100, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v197, s68, v102
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v101, 1, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v103, s68, v197
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v115, 1, v197
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v198, s68, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v102, 1, v103
	buffer_load_u16 v101, v101, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v103, s68, v198
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s86
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v116, 1, v198
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v199, s68, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v104, 1, v103
	buffer_load_u16 v102, v102, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v105, s68, v199
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v103, 0x80000000, v104, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v117, 1, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v200, s68, v105
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v104, 1, v105
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v106, s68, v200
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s92
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v118, 1, v200
	s_clause 0x1
	buffer_load_u16 v103, v103, s[48:51], 0 offen
	buffer_load_u16 v104, v104, s[48:51], 0 offen
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v113, s68, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v105, 1, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v114, s68, v113
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v106, 1, v114
	buffer_load_u16 v105, v105, s[48:51], 0 offen
	v_add_lshl_u32 v114, v114, s68, 1
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s84
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s83
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v106, v106, s[48:51], 0 offen
	buffer_load_u16 v107, v107, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v107.l
	v_lshlrev_b32_e32 v107, 1, v108
	v_lshlrev_b32_e32 v108, 1, v112
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_lshlrev_b32 v112, 1, v196
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s82
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v107, v107, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v92.h, v107.l
	v_lshlrev_b32_e32 v107, 1, v109
	v_lshlrev_b32_e32 v109, 1, v193
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s81
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v107, v107, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v93.h, v107.l
	v_lshlrev_b32_e32 v107, 1, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_lshlrev_b32 v110, 1, v194
	v_cndmask_b32_e64 v110, 0x80000000, v110, s6
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s79
	s_and_b32 s6, s5, s70
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v107, v107, s[48:51], 0 offen
	buffer_load_u16 v110, v110, s[48:51], 0 offen
	v_cndmask_b32_e64 v116, 0x80000000, v116, s6
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s6, s5, s80
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v114, 0x80000000, v114, s6
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v94.h, v107.l
	v_lshlrev_b32_e32 v107, 1, v111
	v_lshlrev_b32_e32 v111, 1, v195
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v98.h, v110.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s78
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s69
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_u16 v107, v107, s[48:51], 0 offen
	buffer_load_u16 v108, v108, s[48:51], 0 offen
	buffer_load_u16 v109, v109, s[48:51], 0 offen
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s65
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s71
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v111, v111, s[48:51], 0 offen
	buffer_load_u16 v112, v112, s[48:51], 0 offen
	buffer_load_u16 v115, v115, s[48:51], 0 offen
	buffer_load_u16 v116, v116, s[48:51], 0 offen
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s76
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s5, s77
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s64, s44
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	s_clause 0x3
	buffer_load_u16 v117, v117, s[48:51], 0 offen
	buffer_load_u16 v118, v118, s[48:51], 0 offen
	buffer_load_u16 v113, v113, s[48:51], 0 offen
	buffer_load_u16 v114, v114, s[48:51], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v9, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v95.h, v107.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v96.h, v108.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v97.h, v109.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v99.h, v111.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v100.h, v112.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v101.h, v115.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v102.h, v116.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v103.h, v117.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v104.h, v118.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v105.h, v113.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v106.h, v114.l
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[91:94] offset:16384
	scratch_load_b32 v9, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[95:98] offset:16384
	scratch_load_b32 v9, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[99:102] offset:16384
	scratch_load_b32 v9, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[103:106] offset:16384
	.loc	1 854 32                        ; attention.py:854:32
	scratch_load_b32 v9, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v209, v9
	scratch_load_b32 v9, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v209, v9 offset:256
	ds_store_b16 v209, v47 offset:8192
	ds_store_b16 v209, v48 offset:8448
	scratch_load_b32 v9, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v210, v9
	scratch_load_b32 v9, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v210, v9 offset:256
	ds_store_b16 v210, v45 offset:8192
	ds_store_b16 v210, v46 offset:8448
	scratch_load_b32 v9, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v211, v9
	scratch_load_b32 v9, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v211, v9 offset:256
	ds_store_b16 v211, v43 offset:8192
	ds_store_b16 v211, v44 offset:8448
	scratch_load_b32 v9, off, off           ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v212, v9
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v212, v9 offset:256
	ds_store_b16 v212, v41 offset:8192
	ds_store_b16 v212, v42 offset:8448
	scratch_load_b32 v9, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v213, v9
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v213, v9 offset:256
	ds_store_b16 v213, v55 offset:8192
	ds_store_b16 v213, v56 offset:8448
	scratch_load_b32 v9, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v214, v9
	scratch_load_b32 v9, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v214, v9 offset:256
	ds_store_b16 v214, v53 offset:8192
	ds_store_b16 v214, v54 offset:8448
	scratch_load_b32 v9, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v215, v9
	scratch_load_b32 v9, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v215, v9 offset:256
	ds_store_b16 v215, v51 offset:8192
	ds_store_b16 v215, v52 offset:8448
	scratch_load_b32 v9, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v216, v9
	scratch_load_b32 v9, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v216, v9 offset:256
	ds_store_b16 v216, v49 offset:8192
	ds_store_b16 v216, v50 offset:8448
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v217, v9
	scratch_load_b32 v9, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v217, v9 offset:256
	ds_store_b16 v217, v63 offset:8192
	ds_store_b16 v217, v64 offset:8448
	scratch_load_b32 v9, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v218, v9
	scratch_load_b32 v9, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v218, v9 offset:256
	ds_store_b16 v218, v61 offset:8192
	ds_store_b16 v218, v62 offset:8448
	ds_store_b16 v219, v249
	scratch_load_b32 v9, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v9 offset:256
	ds_store_b16 v219, v59 offset:8192
	ds_store_b16 v219, v60 offset:8448
	scratch_load_b32 v9, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v220, v9
	ds_store_b16 v220, v254 offset:256
	ds_store_b16 v220, v57 offset:8192
	ds_store_b16 v220, v58 offset:8448
	ds_store_b16 v221, v39
	ds_store_b16 v221, v40 offset:256
	ds_store_b16 v221, v72 offset:8192
	ds_store_b16 v221, v233 offset:8448
	ds_store_b16 v222, v37
	ds_store_b16 v222, v38 offset:256
	ds_store_b16 v222, v69 offset:8192
	ds_store_b16 v222, v70 offset:8448
	ds_store_b16 v223, v35
	ds_store_b16 v223, v36 offset:256
	ds_store_b16 v223, v67 offset:8192
	ds_store_b16 v223, v68 offset:8448
	ds_store_b16 v224, v33
	ds_store_b16 v224, v34 offset:256
	ds_store_b16 v224, v65 offset:8192
	ds_store_b16 v224, v66 offset:8448
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	v_readlane_b32 s1, v255, 1
	s_mov_b32 s20, s64
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s64, s64, 32
	.loc	1 819 31                        ; attention.py:819:31
	s_add_i32 s4, s20, 34
	s_add_i32 s6, s20, 35
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s66, s64, s1
	.loc	1 819 31                        ; attention.py:819:31
	s_add_i32 s1, s20, 33
	s_add_i32 s7, s20, 36
	s_add_i32 s8, s20, 37
	s_add_i32 s9, s20, 38
	s_add_i32 s10, s20, 39
	s_add_i32 s11, s20, 40
	s_add_i32 s12, s20, 41
	s_add_i32 s13, s20, 42
	s_add_i32 s14, s20, 43
	s_add_i32 s15, s20, 44
	s_add_i32 s16, s20, 45
	s_add_i32 s17, s20, 46
	s_add_i32 s18, s20, 47
	s_add_i32 s19, s20, 48
	s_add_i32 s21, s20, 49
	s_add_i32 s22, s20, 50
	s_add_i32 s23, s20, 51
	s_add_i32 s24, s20, 52
	s_add_i32 s25, s20, 53
	s_add_i32 s26, s20, 54
	s_add_i32 s27, s20, 55
	s_add_i32 s28, s20, 56
	s_add_i32 s29, s20, 57
	s_add_i32 s30, s20, 58
	s_add_i32 s31, s20, 59
	s_add_i32 s33, s20, 60
	s_add_i32 s34, s20, 61
	s_add_i32 s35, s20, 62
	s_add_i32 s36, s20, 63
	.loc	1 856 65                        ; attention.py:856:65
	s_cmp_lt_i32 s64, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[9:10], null, s66, s58, v[131:132]
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s1, s39
	v_mov_b32_e32 v71, v131
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s4, s39
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s6, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v10, s58, v9
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s7, s39
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s8, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v11, s58, v10
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s9, s39
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s10, s39
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s11, s39
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s12, s39
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s13, s39
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s14, s39
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s8, v255, 3
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s16, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s15, v255, 10
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s17, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s9, v255, 4
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s18, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s10, v255, 5
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s19, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s11, v255, 6
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s21, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s12, v255, 7
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s22, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s13, v255, 8
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s23, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s14, v255, 9
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s24, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v12, s58, v11
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s25, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v112, s15
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s26, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v111, s14
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s27, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v110, s13 :: v_dual_add_nc_u32 v13, s58, v12
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s28, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v106, s9
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s29, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v108, s11 :: v_dual_add_nc_u32 v17, s58, v13
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s30, s39
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v18, 1, v13
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s31, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v109, s12
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s33, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v107, s10
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s34, s39
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v105, s8
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s35, s39
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s36, s39
	s_cselect_b32 s80, -1, 0
	.loc	1 856 30 is_stmt 0              ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s99
	.loc	1 853 32 is_stmt 1              ; attention.py:853:32
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v13, 0x100, v9
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s84
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v14, 0x100, v10
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	buffer_load_u16 v0, v9, s[52:55], 0 offen
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s84
	s_and_b32 vcc_lo, s2, s100
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v15, 0x100, v11
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s83
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v20, 0x80000000, v12, vcc_lo
	v_cndmask_b32_e64 v19, 0x80000000, v15, s6
	v_add_nc_u32_e32 v15, 0x100, v12
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s83
	s_and_b32 vcc_lo, s2, s98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v21, 0x80000000, v15, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s98
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	buffer_load_u16 v0, v13, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	buffer_load_u16 v0, v10, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	buffer_load_u16 v0, v14, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	buffer_load_u16 v0, v11, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	buffer_load_u16 v0, v19, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v19, s58, v17
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	buffer_load_u16 v0, v20, s[52:55], 0 offen
	v_add_nc_u32_e32 v20, 0x100, v18
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s82
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v22, 0x100, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s97
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	buffer_load_u16 v0, v21, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v21, s58, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v23, s58, v21
	v_lshlrev_b32_e32 v21, 1, v21
	v_add_nc_u32_e32 v28, s58, v23
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s82
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s97
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v29, 1, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v24, 0x100, v19
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s81
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v26, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e64 v25, 0x80000000, v24, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s94
	s_and_b32 s6, s3, s81
	.loc	1 853 32                        ; attention.py:853:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	.loc	1 854 32                        ; attention.py:854:32
	buffer_load_u16 v0, v18, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	buffer_load_u16 v0, v20, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	buffer_load_u16 v0, v17, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	buffer_load_u16 v0, v22, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	buffer_load_u16 v0, v19, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	buffer_load_u16 v0, v25, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v25, s58, v28
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	buffer_load_u16 v0, v26, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v26, 1, v28
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v28, 0x80000000, v29, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v30, 0x100, v26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v24, 0x100, v21
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s79
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s95
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v27, 0x80000000, v24, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s94
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	buffer_load_u16 v0, v27, s[52:55], 0 offen
	v_add_nc_u32_e32 v27, 0x100, v29
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v29, s58, v25
	v_lshlrev_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v31, s58, v29
	v_lshlrev_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v32, 0x100, v25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s95
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v37, 1, v31
	v_add_nc_u32_e32 v36, s58, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v33, 0x80000000, v32, s6
	v_add_nc_u32_e32 v32, 0x100, v29
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s78
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s78
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v35, 0x80000000, v32, s6
	v_cndmask_b32_e32 v34, 0x80000000, v29, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s91
	s_and_b32 s6, s3, s91
	.loc	1 854 32                        ; attention.py:854:32
	buffer_load_u16 v254, v35, s[52:55], 0 offen
	v_add_nc_u32_e32 v35, 0x100, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s90
	.loc	1 853 32                        ; attention.py:853:32
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	.loc	1 854 32                        ; attention.py:854:32
	buffer_load_u16 v0, v28, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	buffer_load_u16 v0, v27, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	buffer_load_u16 v0, v26, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	buffer_load_u16 v0, v30, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u16 v249, v25, s[52:55], 0 offen
	buffer_load_u16 v0, v33, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v33, s58, v36
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	buffer_load_u16 v0, v34, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v34, 1, v36
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v36, 0x80000000, v37, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s74
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v37, s58, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v38, 0x100, v34
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s74
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v33, 1, v33
	v_add_nc_u32_e32 v39, s58, v37
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_lshlrev_b32 v37, 1, v37
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v40, 0x100, v33
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v44, s58, v39
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s75
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v45, 1, v39
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v41, 0x80000000, v40, s6
	v_add_nc_u32_e32 v40, 0x100, v37
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s75
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v42, 0x80000000, v37, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v43, 0x80000000, v40, s6
	s_clause 0x7
	buffer_load_u16 v39, v36, s[52:55], 0 offen
	buffer_load_u16 v40, v35, s[52:55], 0 offen
	buffer_load_u16 v37, v34, s[52:55], 0 offen
	buffer_load_u16 v38, v38, s[52:55], 0 offen
	buffer_load_u16 v35, v33, s[52:55], 0 offen
	buffer_load_u16 v36, v41, s[52:55], 0 offen
	buffer_load_u16 v33, v42, s[52:55], 0 offen
	buffer_load_u16 v34, v43, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v41, s58, v44
	v_lshlrev_b32_e32 v42, 1, v44
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v44, 0x80000000, v45, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s69
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v43, 0x100, v45
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v45, s58, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v46, 0x100, v42
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s69
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v41, 1, v41
	v_add_nc_u32_e32 v47, s58, v45
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_lshlrev_b32 v45, 1, v45
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s85
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v48, 0x100, v41
	v_cndmask_b32_e64 v43, 0x80000000, v43, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s87
	s_and_b32 vcc_lo, s2, s87
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v52, s58, v47
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v49, 0x80000000, v48, s6
	v_add_nc_u32_e32 v48, 0x100, v45
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s65
	s_and_b32 s6, s3, s65
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v50, 0x80000000, v45 :: v_dual_lshlrev_b32 v53, 1, v47
	v_cndmask_b32_e64 v51, 0x80000000, v48, s6
	s_clause 0x7
	buffer_load_u16 v47, v44, s[52:55], 0 offen
	buffer_load_u16 v48, v43, s[52:55], 0 offen
	buffer_load_u16 v45, v42, s[52:55], 0 offen
	buffer_load_u16 v46, v46, s[52:55], 0 offen
	buffer_load_u16 v43, v41, s[52:55], 0 offen
	buffer_load_u16 v44, v49, s[52:55], 0 offen
	buffer_load_u16 v41, v50, s[52:55], 0 offen
	buffer_load_u16 v42, v51, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v49, s58, v52
	v_lshlrev_b32_e32 v50, 1, v52
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s89
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v51, 0x100, v53
	v_cndmask_b32_e32 v52, 0x80000000, v53, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s67
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v53, s58, v49
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v54, 0x100, v50
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s67
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v49, 1, v49
	v_add_nc_u32_e32 v55, s58, v53
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_lshlrev_b32 v53, 1, v53
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s89
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v56, 0x100, v49
	v_cndmask_b32_e64 v51, 0x80000000, v51, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s88
	s_and_b32 vcc_lo, s2, s88
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v60, s58, v55
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v57, 0x80000000, v56, s6
	v_add_nc_u32_e32 v56, 0x100, v53
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s70
	s_and_b32 s6, s3, s70
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v58, 0x80000000, v53 :: v_dual_lshlrev_b32 v61, 1, v55
	v_cndmask_b32_e64 v59, 0x80000000, v56, s6
	s_clause 0x7
	buffer_load_u16 v55, v52, s[52:55], 0 offen
	buffer_load_u16 v56, v51, s[52:55], 0 offen
	buffer_load_u16 v53, v50, s[52:55], 0 offen
	buffer_load_u16 v54, v54, s[52:55], 0 offen
	buffer_load_u16 v51, v49, s[52:55], 0 offen
	buffer_load_u16 v52, v57, s[52:55], 0 offen
	buffer_load_u16 v49, v58, s[52:55], 0 offen
	buffer_load_u16 v50, v59, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v57, s58, v60
	v_lshlrev_b32_e32 v58, 1, v60
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s86
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v59, 0x100, v61
	v_cndmask_b32_e32 v60, 0x80000000, v61, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s71
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v61, s58, v57
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v62, 0x100, v58
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s71
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v57, 1, v57
	v_add_nc_u32_e32 v63, s58, v61
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_lshlrev_b32 v61, 1, v61
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s86
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v64, 0x100, v57
	v_cndmask_b32_e64 v59, 0x80000000, v59, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s93
	s_and_b32 vcc_lo, s2, s93
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v68, s58, v63
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v65, 0x80000000, v64, s6
	v_add_nc_u32_e32 v64, 0x100, v61
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s76
	s_and_b32 s6, s3, s76
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v61, vcc_lo
	v_cndmask_b32_e64 v67, 0x80000000, v64, s6
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v69, 1, v63
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x7
	buffer_load_u16 v63, v60, s[52:55], 0 offen
	buffer_load_u16 v64, v59, s[52:55], 0 offen
	buffer_load_u16 v61, v58, s[52:55], 0 offen
	buffer_load_u16 v62, v62, s[52:55], 0 offen
	buffer_load_u16 v59, v57, s[52:55], 0 offen
	buffer_load_u16 v60, v65, s[52:55], 0 offen
	buffer_load_u16 v57, v66, s[52:55], 0 offen
	buffer_load_u16 v58, v67, s[52:55], 0 offen
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v65, s58, v68
	v_lshlrev_b32_e32 v66, 1, v68
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s92
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v67, 0x100, v69
	v_cndmask_b32_e32 v68, 0x80000000, v69, vcc_lo
	.loc	1 853 32                        ; attention.py:853:32
	v_lshlrev_b32_e32 v70, 1, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v69, 0x100, v66
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s77
	.loc	1 853 32                        ; attention.py:853:32
	v_add_lshl_u32 v65, v65, s58, 1
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s3, s77
	s_and_b32 s6, s3, s92
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v74, 0x80000000, v69, vcc_lo
	v_add_nc_u32_e32 v69, 0x100, v70
	v_cndmask_b32_e64 v67, 0x80000000, v67, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s3, s96
	s_and_b32 vcc_lo, s2, s96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v76, 0x80000000, v69, s6
	v_add_nc_u32_e32 v69, 0x100, v65
	v_cndmask_b32_e32 v75, 0x80000000, v70, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, s80
	s_and_b32 s6, s3, s80
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e64 v77, 0x80000000, v69, s6
	s_clause 0x7
	buffer_load_u16 v72, v68, s[52:55], 0 offen
	buffer_load_u16 v233, v67, s[52:55], 0 offen
	buffer_load_u16 v69, v66, s[52:55], 0 offen
	buffer_load_u16 v70, v74, s[52:55], 0 offen
	buffer_load_u16 v67, v75, s[52:55], 0 offen
	buffer_load_u16 v68, v76, s[52:55], 0 offen
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v66, v77, s[52:55], 0 offen
	v_add_nc_u32_e32 v74, 0, v78
	s_waitcnt vmcnt(40)
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:632
	scratch_load_b128 v[29:32], off, off offset:648
	scratch_load_b128 v[17:20], off, off offset:600
	scratch_load_b128 v[21:24], off, off offset:616
	scratch_load_b128 v[9:12], off, off offset:568
	scratch_load_b128 v[13:16], off, off offset:584
	scratch_load_b128 v[129:132], off, off offset:504
	scratch_load_b128 v[133:136], off, off offset:520
	ds_load_b128 v[89:92], v74
	ds_load_b128 v[93:96], v225
	ds_load_b128 v[97:100], v226
	ds_load_b128 v[101:104], v227
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[113:116], off, off offset:440
	scratch_load_b128 v[117:120], off, off offset:456
	v_mov_b32_e32 v0, v78
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(8) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[25:32], v[105:112]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v234
	ds_load_b128 v[89:92], v235
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(6) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[97:104], v[17:24], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:408
	scratch_load_b128 v[101:104], off, off offset:424
	s_waitcnt vmcnt(6) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[9:16], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v237
	ds_load_b128 v[89:92], v236
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[137:144], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v239
	ds_load_b128 v[89:92], v238
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(4) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[129:136], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v241
	ds_load_b128 v[89:92], v240
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[121:128], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v243
	ds_load_b128 v[89:92], v242
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[113:120], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v245
	ds_load_b128 v[89:92], v244
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v225 offset:8192
	ds_load_b128 v[89:92], v74 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[25:32], v[105:112]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v227 offset:8192
	ds_load_b128 v[89:92], v226 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[17:24], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v234 offset:8192
	ds_load_b128 v[89:92], v235 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[9:16], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v237 offset:8192
	ds_load_b128 v[89:92], v236 offset:8192
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v9, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[137:144], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v239 offset:8192
	ds_load_b128 v[89:92], v238 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[129:136], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v241 offset:8192
	ds_load_b128 v[89:92], v240 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[121:128], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v243 offset:8192
	ds_load_b128 v[89:92], v242 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[113:120], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[93:96], v245 offset:8192
	ds_load_b128 v[89:92], v244 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:152
	scratch_load_b128 v[101:104], off, off offset:168
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v74 offset:256
	ds_load_b128 v[93:96], v225 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v74 offset:8448
	ds_load_b128 v[93:96], v225 offset:8448
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v74, s20, v9
	scratch_load_b32 v9, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v74
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s41, s0, vcc_lo
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s46
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:184
	scratch_load_b128 v[101:104], off, off offset:200
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v226 offset:256
	ds_load_b128 v[93:96], v227 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v76, s20, v9
	scratch_load_b32 v9, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s39, v76
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s42, s0, s6
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v226 offset:8448
	ds_load_b128 v[93:96], v227 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:216
	scratch_load_b128 v[101:104], off, off offset:232
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v235 offset:256
	ds_load_b128 v[93:96], v234 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v75, s20, v9
	scratch_load_b32 v9, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s39, v75
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s59, s0, s7
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v235 offset:8448
	ds_load_b128 v[93:96], v234 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:248
	scratch_load_b128 v[101:104], off, off offset:264
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v236 offset:256
	ds_load_b128 v[93:96], v237 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v78, s20, v9
	scratch_load_b32 v9, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s39, v78
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s40, s0, s8
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v236 offset:8448
	ds_load_b128 v[93:96], v237 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:280
	scratch_load_b128 v[101:104], off, off offset:296
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v238 offset:256
	ds_load_b128 v[93:96], v239 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v77, s20, v9
	scratch_load_b32 v9, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s39, v77
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s1, s0, s9
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v238 offset:8448
	ds_load_b128 v[93:96], v239 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:312
	scratch_load_b128 v[101:104], off, off offset:328
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v240 offset:256
	ds_load_b128 v[93:96], v241 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v80, s20, v9
	scratch_load_b32 v9, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s39, v80
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s62, s0, s10
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v240 offset:8448
	ds_load_b128 v[93:96], v241 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:376
	scratch_load_b128 v[101:104], off, off offset:392
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v242 offset:256
	ds_load_b128 v[93:96], v243 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v79, s20, v9
	scratch_load_b32 v9, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s39, v79
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s4, s0, s11
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v242 offset:8448
	ds_load_b128 v[93:96], v243 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:344
	scratch_load_b128 v[101:104], off, off offset:360
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v244 offset:256
	ds_load_b128 v[93:96], v245 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[89:96], v[97:104], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[89:92], v244 offset:8448
	ds_load_b128 v[93:96], v245 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[89:96], v[97:104], v[201:208]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v90, s20, v9
	scratch_load_b32 v9, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s39, v90
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s61, s0, s12
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v89, s20, v9
	scratch_load_b32 v9, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s39, v89
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s60, s0, s13
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v92, s20, v9
	scratch_load_b32 v9, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s39, v92
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s57, s0, s14
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v91, s20, v9
	scratch_load_b32 v9, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s39, v91
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 vcc_hi, s0, s15
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v94, s20, v9
	scratch_load_b32 v9, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s39, v94
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s56, s0, s16
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v93, s20, v9
	scratch_load_b32 v9, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s39, v93
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s103, s0, s17
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v96, s20, v9
	scratch_load_b32 v9, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s39, v96
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s104, s0, s18
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v95, s20, v9
	scratch_load_b32 v9, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s39, v95
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s101, s0, s19
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v97, s20, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s39, v97
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s102, s0, s20
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v76, v232
	v_cmp_le_i32_e64 s6, v74, v232
	v_cmp_le_i32_e64 s7, v78, v232
	v_cmp_le_i32_e64 s8, v75, v232
	v_cmp_le_i32_e64 s9, v80, v232
	v_cmp_le_i32_e64 s10, v77, v232
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s21, vcc_lo, s42
	s_and_b32 s6, s6, s41
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v90, v232
	v_cmp_le_i32_e64 s12, v79, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s40
	s_and_b32 s8, s8, s59
	s_and_not1_b32 s22, s42, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s41, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v92, v232
	v_cmp_le_i32_e64 s14, v89, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s62
	s_and_b32 s10, s10, s1
	s_or_b32 s42, s22, s21
	s_or_b32 s41, s23, s6
	s_and_not1_b32 s6, s40, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s21, s59, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v94, v232
	v_cmp_le_i32_e64 s16, v91, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s61
	s_and_b32 s12, s12, s4
	s_or_b32 s40, s6, s7
	s_or_b32 s59, s21, s8
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s8, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v96, v232
	v_cmp_le_i32_e64 s18, v93, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s57
	s_and_b32 s14, s14, s60
	s_or_b32 s62, s6, s7
	s_or_b32 s1, s1, s8
	s_and_not1_b32 s6, s61, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s8, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v97, v232
	v_cmp_le_i32_e64 s20, v95, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s15, s56
	s_and_b32 s16, s16, vcc_hi
	s_or_b32 s61, s6, s7
	s_or_b32 s4, s4, s8
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s7, s13, exec_lo
	s_and_not1_b32 s8, s60, exec_lo
	s_and_b32 s9, s14, exec_lo
	s_and_b32 s17, s17, s104
	s_and_b32 s18, s18, s103
	s_or_b32 s57, s6, s7
	s_or_b32 s60, s8, s9
	s_and_not1_b32 s6, s56, exec_lo
	s_and_b32 s7, s15, exec_lo
	s_and_not1_b32 s8, vcc_hi, exec_lo
	s_and_b32 s9, s16, exec_lo
	s_and_b32 s19, s19, s102
	s_and_b32 s20, s20, s101
	s_or_b32 s56, s6, s7
	s_or_b32 vcc_hi, s8, s9
	s_and_not1_b32 s6, s104, exec_lo
	s_and_b32 s7, s17, exec_lo
	s_and_not1_b32 s8, s103, exec_lo
	s_and_b32 s9, s18, exec_lo
	s_or_b32 s104, s6, s7
	s_or_b32 s103, s8, s9
	s_and_not1_b32 s6, s102, exec_lo
	s_and_b32 s7, s19, exec_lo
	s_and_not1_b32 s8, s101, exec_lo
	s_and_b32 s9, s20, exec_lo
	s_or_b32 s102, s6, s7
	s_or_b32 s101, s8, s9
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v131, v71
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s43
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v76, v231
	v_cmp_ge_i32_e64 s6, v74, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v76, v230
	v_cmp_le_i32_e64 s22, v74, v230
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v78, v231
	v_cmp_ge_i32_e64 s8, v75, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v78, v230
	v_cmp_le_i32_e64 s24, v75, v230
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v80, v231
	v_cmp_ge_i32_e64 s10, v77, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v80, v230
	v_cmp_le_i32_e64 s26, v77, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s6, s6, s22
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v90, v231
	v_cmp_ge_i32_e64 s12, v79, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v90, v230
	v_cmp_le_i32_e64 s28, v79, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s21, s21, s42
	s_and_b32 s6, s6, s41
	s_and_b32 s7, s7, s23
	s_and_b32 s8, s8, s24
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v92, v231
	v_cmp_ge_i32_e64 s14, v89, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v92, v230
	v_cmp_le_i32_e64 s30, v89, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s7, s7, s40
	s_and_b32 s8, s8, s59
	s_and_b32 s9, s9, s25
	s_and_b32 s10, s10, s26
	s_and_not1_b32 s22, s42, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s41, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v94, v231
	v_cmp_ge_i32_e64 s16, v91, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v94, v230
	v_cmp_le_i32_e64 s33, v91, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, s9, s62
	s_and_b32 s10, s10, s1
	s_and_b32 s11, s11, s27
	s_and_b32 s12, s12, s28
	s_or_b32 s42, s22, s21
	s_or_b32 s41, s23, s6
	s_and_not1_b32 s6, s40, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s21, s59, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v96, v231
	v_cmp_ge_i32_e64 s18, v93, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v96, v230
	v_cmp_le_i32_e64 s35, v93, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s11, s11, s61
	s_and_b32 s12, s12, s4
	s_and_b32 s13, s13, s29
	s_and_b32 s14, s14, s30
	s_or_b32 s40, s6, s7
	s_or_b32 s59, s21, s8
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s8, s10, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v97, v231
	v_cmp_ge_i32_e64 s20, v95, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v97, v230
	v_cmp_le_i32_e64 s37, v95, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s13, s13, s57
	s_and_b32 s14, s14, s60
	s_and_b32 s15, s15, s31
	s_and_b32 s16, s16, s33
	s_or_b32 s62, s6, s7
	s_or_b32 s1, s1, s8
	s_and_not1_b32 s6, s61, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_b32 s15, s15, s56
	s_and_b32 s16, s16, vcc_hi
	s_and_b32 s17, s17, s34
	s_and_b32 s18, s18, s35
	s_or_b32 s61, s6, s7
	s_or_b32 s4, s4, s8
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s7, s13, exec_lo
	s_and_not1_b32 s8, s60, exec_lo
	s_and_b32 s9, s14, exec_lo
	s_and_b32 s17, s17, s104
	s_and_b32 s18, s18, s103
	s_and_b32 s19, s19, s36
	s_and_b32 s20, s20, s37
	s_or_b32 s57, s6, s7
	s_or_b32 s60, s8, s9
	s_and_not1_b32 s6, s56, exec_lo
	s_and_b32 s7, s15, exec_lo
	s_and_not1_b32 s8, vcc_hi, exec_lo
	s_and_b32 s9, s16, exec_lo
	s_and_b32 s19, s19, s102
	s_and_b32 s20, s20, s101
	s_or_b32 s56, s6, s7
	s_or_b32 vcc_hi, s8, s9
	s_and_not1_b32 s6, s104, exec_lo
	s_and_b32 s7, s17, exec_lo
	s_and_not1_b32 s8, s103, exec_lo
	s_and_b32 s9, s18, exec_lo
	s_or_b32 s104, s6, s7
	s_or_b32 s103, s8, s9
	s_and_not1_b32 s6, s102, exec_lo
	s_and_b32 s7, s19, exec_lo
	s_and_not1_b32 s8, s101, exec_lo
	s_and_b32 s9, s20, exec_lo
	s_or_b32 s102, s6, s7
	s_or_b32 s101, s8, s9
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v201, 0xff800000
	v_readlane_b32 s43, v255, 0
	v_readlane_b32 s46, v255, 11
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v87, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v85, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v83, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v81, v8
	v_mov_b32_e32 v152, v8
	v_mov_b32_e32 v151, v8
	v_mov_b32_e32 v150, v8
	v_mov_b32_e32 v149, v8
	v_mov_b32_e32 v148, v8
	v_mov_b32_e32 v147, v8
	v_mov_b32_e32 v146, v8
	v_mov_b32_e32 v145, v8
	v_mov_b32_e32 v160, v8
	v_mov_b32_e32 v159, v8
	v_mov_b32_e32 v158, v8
	v_mov_b32_e32 v157, v8
	v_mov_b32_e32 v156, v8
	v_mov_b32_e32 v155, v8
	v_mov_b32_e32 v154, v8
	v_mov_b32_e32 v153, v8
	v_mov_b32_e32 v168, v8
	v_mov_b32_e32 v167, v8
	v_mov_b32_e32 v166, v8
	v_mov_b32_e32 v165, v8
	v_mov_b32_e32 v164, v8
	v_mov_b32_e32 v163, v8
	v_mov_b32_e32 v162, v8
	v_mov_b32_e32 v161, v8
	v_mov_b32_e32 v176, v8
	v_mov_b32_e32 v175, v8
	v_mov_b32_e32 v174, v8
	v_mov_b32_e32 v173, v8
	v_mov_b32_e32 v172, v8
	v_mov_b32_e32 v171, v8
	v_mov_b32_e32 v170, v8
	v_mov_b32_e32 v169, v8
	v_mov_b32_e32 v184, v8
	v_mov_b32_e32 v183, v8
	v_mov_b32_e32 v182, v8
	v_mov_b32_e32 v181, v8
	v_mov_b32_e32 v180, v8
	v_mov_b32_e32 v179, v8
	v_mov_b32_e32 v178, v8
	v_mov_b32_e32 v177, v8
	v_mov_b32_e32 v192, v8
	v_mov_b32_e32 v191, v8
	v_mov_b32_e32 v190, v8
	v_mov_b32_e32 v189, v8
	v_mov_b32_e32 v188, v8
	v_mov_b32_e32 v187, v8
	v_mov_b32_e32 v186, v8
	v_mov_b32_e32 v185, v8
	v_mov_b32_e32 v202, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v228, off, off offset:688
	scratch_load_b32 v227, off, off offset:684
	scratch_load_b32 v203, off, off offset:692
	scratch_load_b32 v74, off, off offset:696
	scratch_load_b32 v75, off, off offset:700
	s_waitcnt vmcnt(4)
	v_cmp_eq_u32_e64 s74, 0, v228
.LBB0_13:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_sub_i32 s3, s47, s45
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	s_add_i32 s3, s3, 31
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	s_cmp_gt_i32 s3, 31
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	.loc	1 818 13                        ; attention.py:818:13
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s3, 32
	.loc	1 854 32                        ; attention.py:854:32
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	s_cbranch_scc1 .LBB0_15
; %bb.14:
	.loc	1 0 30 is_stmt 0                ; attention.py:0:30
	s_clause 0xb                            ; 192-byte Folded Reload
	scratch_load_b128 v[26:29], off, off offset:632
	scratch_load_b128 v[30:33], off, off offset:648
	scratch_load_b128 v[50:53], off, off offset:600
	scratch_load_b128 v[54:57], off, off offset:616
	scratch_load_b128 v[66:69], off, off offset:568
	scratch_load_b128 v[70:73], off, off offset:584
	scratch_load_b128 v[97:100], off, off offset:536
	scratch_load_b128 v[101:104], off, off offset:552
	scratch_load_b128 v[113:116], off, off offset:504
	scratch_load_b128 v[117:120], off, off offset:520
	scratch_load_b128 v[129:132], off, off offset:472
	scratch_load_b128 v[133:136], off, off offset:488
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	s_mov_b32 s4, 0
	v_xad_u32 v0, v78, 16, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v224, s11 :: v_dual_add_nc_u32 v9, 0, v78
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[197:200], v0 offset:8192
	ds_load_b128 v[193:196], v9 offset:8192
	ds_load_b128 v[234:237], v9
	ds_load_b128 v[238:241], v0
	ds_load_b128 v[14:17], v0 offset:256
	ds_load_b128 v[10:13], v9 offset:256
	ds_load_b128 v[22:25], v0 offset:8448
	ds_load_b128 v[18:21], v9 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v223, s10 :: v_dual_mov_b32 v222, s9
	v_dual_mov_b32 v221, s8 :: v_dual_mov_b32 v220, s7
	v_dual_mov_b32 v219, s6 :: v_dual_mov_b32 v218, s5
	v_mov_b32_e32 v217, s4
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[242:245], off, off offset:408
	scratch_load_b128 v[246:249], off, off offset:424
	.loc	1 854 32                        ; attention.py:854:32
	v_xad_u32 v0, v78, 32, 0
	v_xad_u32 v9, v78, 48, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(12) lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[234:241], v[26:33], v[217:224]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[193:200], v[26:33], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[193:196], off, off offset:440
	scratch_load_b128 v[197:200], off, off offset:456
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[38:41], v9 offset:256
	ds_load_b128 v[34:37], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(12) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[50:57], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[46:49], v9 offset:8448
	ds_load_b128 v[42:45], v0 offset:8448
	v_xad_u32 v0, v78, 64, 0
	v_xad_u32 v9, 0x50, v78, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[50:57], v[217:224]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[54:57], v9 offset:256
	ds_load_b128 v[50:53], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(10) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[66:73], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[62:65], v9 offset:8448
	ds_load_b128 v[58:61], v0 offset:8448
	v_xad_u32 v0, 0x60, v78, 0
	v_xad_u32 v9, 0x70, v78, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[66:73], v[217:224]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[70:73], v9 offset:256
	ds_load_b128 v[66:69], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(8) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[97:104], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[93:96], v9 offset:8448
	ds_load_b128 v[89:92], v0 offset:8448
	v_xad_u32 v0, 0x80, v78, 0
	v_xad_u32 v9, 0x90, v78, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[97:104], v[217:224]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[101:104], v9 offset:256
	ds_load_b128 v[97:100], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(6) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[113:120], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[109:112], v9 offset:8448
	ds_load_b128 v[105:108], v0 offset:8448
	v_xad_u32 v0, 0xa0, v78, 0
	v_xad_u32 v9, 0xb0, v78, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[113:120], v[217:224]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[117:120], v9 offset:256
	ds_load_b128 v[113:116], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(4) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[129:136], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[125:128], v9 offset:8448
	ds_load_b128 v[121:124], v0 offset:8448
	v_xad_u32 v0, 0xc0, v78, 0
	v_xad_u32 v9, 0xd0, v78, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[129:136], v[217:224]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[133:136], v9 offset:256
	ds_load_b128 v[129:132], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[193:200], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[141:144], v9 offset:8448
	ds_load_b128 v[137:140], v0 offset:8448
	v_xad_u32 v0, 0xe0, v78, 0
	v_xad_u32 v9, 0xf0, v78, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[193:200], v[217:224]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[197:200], v9 offset:256
	ds_load_b128 v[193:196], v0 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[26:33], v[242:249], v[209:216]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[26:29], v0 offset:8192
	ds_load_b128 v[30:33], v9 offset:8192
	ds_load_b128 v[238:241], v9 offset:8448
	ds_load_b128 v[234:237], v0 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[26:33], v[242:249], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[26:29], off, off offset:152
	scratch_load_b128 v[30:33], off, off offset:168
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[10:17], v[26:33], v[209:216]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:184
	scratch_load_b128 v[13:16], off, off offset:200
	v_wmma_f32_16x16x16_bf16 v[217:224], v[18:25], v[26:33], v[217:224]
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[34:41], v[9:16], v[209:216]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[42:49], v[9:16], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:216
	scratch_load_b128 v[13:16], off, off offset:232
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[50:57], v[9:16], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[58:65], v[9:16], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:248
	scratch_load_b128 v[13:16], off, off offset:264
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[66:73], v[9:16], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[89:96], v[9:16], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:280
	scratch_load_b128 v[13:16], off, off offset:296
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[97:104], v[9:16], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[105:112], v[9:16], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:312
	scratch_load_b128 v[13:16], off, off offset:328
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[113:120], v[9:16], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[121:128], v[9:16], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:376
	scratch_load_b128 v[13:16], off, off offset:392
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[129:136], v[9:16], v[209:216]
	v_wmma_f32_16x16x16_bf16 v[217:224], v[137:144], v[9:16], v[217:224]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:344
	scratch_load_b128 v[13:16], off, off offset:360
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[209:216], v[193:200], v[9:16], v[209:216]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[234:241], v[9:16], v[217:224]
.LBB0_15:
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 818 13                        ; attention.py:818:13
	s_ashr_i32 s1, s3, 31
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v9, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 818 13                        ; attention.py:818:13
	s_lshr_b32 s1, s1, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s1
	s_ashr_i32 s1, s3, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_max_i32 s1, s1, 1
	s_lshl_b32 s1, s1, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s45, s1
	s_sub_i32 s1, s1, 32
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v22, s1, v0
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v9, s1, v9
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s39, v22
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s17, s39, v9
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s33, s0, s3
	s_and_b32 s19, s0, s17
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v23, s1, v0
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v23
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s34, s0, vcc_lo
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s46
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v20, s1, v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s39, v20
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s30, s0, s6
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v21, s1, v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s5, s39, v21
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s31, s0, s5
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v18, s1, v0
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s39, v18
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s28, s0, s8
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v19, s1, v0
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s39, v19
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s29, s0, s7
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v16, s1, v0
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s39, v16
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s26, s0, s10
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s1, v0
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s39, v17
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s27, s0, s9
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v14, s1, v0
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s39, v14
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s24, s0, s12
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v15, s1, v0
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s39, v15
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s25, s0, s11
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v12, s1, v0
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s39, v12
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s22, s0, s14
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v13, s1, v0
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s39, v13
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s23, s0, s13
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v10, s1, v0
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s39, v10
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s20, s0, s16
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v11, s1, v0
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s39, v11
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s21, s0, s15
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s39, v0
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s1, s0, s18
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v23, v232
	v_cmp_le_i32_e64 s3, v22, v232
	v_cmp_le_i32_e64 s4, v21, v232
	v_cmp_le_i32_e64 s5, v20, v232
	v_cmp_le_i32_e64 s6, v19, v232
	v_cmp_le_i32_e64 s7, v18, v232
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s18, vcc_lo, s34
	s_and_b32 s3, s3, s33
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v17, v232
	v_cmp_le_i32_e64 s9, v16, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s4, s31
	s_and_b32 s5, s5, s30
	s_and_not1_b32 s34, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s33, s33, exec_lo
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v15, v232
	v_cmp_le_i32_e64 s11, v14, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s29
	s_and_b32 s7, s7, s28
	s_or_b32 s34, s34, s18
	s_or_b32 s33, s33, s3
	s_and_not1_b32 s3, s31, exec_lo
	s_and_b32 s4, s4, exec_lo
	s_and_not1_b32 s18, s30, exec_lo
	s_and_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v13, v232
	v_cmp_le_i32_e64 s13, v12, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s27
	s_and_b32 s9, s9, s26
	s_or_b32 s31, s3, s4
	s_or_b32 s30, s18, s5
	s_and_not1_b32 s3, s29, exec_lo
	s_and_b32 s4, s6, exec_lo
	s_and_not1_b32 s5, s28, exec_lo
	s_and_b32 s6, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v11, v232
	v_cmp_le_i32_e64 s15, v10, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s25
	s_and_b32 s11, s11, s24
	s_or_b32 s29, s3, s4
	s_or_b32 s28, s5, s6
	s_and_not1_b32 s3, s27, exec_lo
	s_and_b32 s4, s8, exec_lo
	s_and_not1_b32 s5, s26, exec_lo
	s_and_b32 s6, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v9, v232
	v_cmp_le_i32_e64 s17, v0, v232
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s23
	s_and_b32 s13, s13, s22
	s_or_b32 s27, s3, s4
	s_or_b32 s26, s5, s6
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s4, s10, exec_lo
	s_and_not1_b32 s5, s24, exec_lo
	s_and_b32 s6, s11, exec_lo
	s_and_b32 s14, s14, s21
	s_and_b32 s15, s15, s20
	s_or_b32 s25, s3, s4
	s_or_b32 s24, s5, s6
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s4, s12, exec_lo
	s_and_not1_b32 s5, s22, exec_lo
	s_and_b32 s6, s13, exec_lo
	s_and_b32 s16, s16, s19
	s_and_b32 s17, s17, s1
	s_or_b32 s23, s3, s4
	s_or_b32 s22, s5, s6
	s_and_not1_b32 s3, s21, exec_lo
	s_and_b32 s4, s14, exec_lo
	s_and_not1_b32 s5, s20, exec_lo
	s_and_b32 s6, s15, exec_lo
	s_or_b32 s21, s3, s4
	s_or_b32 s20, s5, s6
	s_and_not1_b32 s3, s19, exec_lo
	s_and_b32 s4, s16, exec_lo
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s5, s17, exec_lo
	s_or_b32 s19, s3, s4
	s_or_b32 s1, s1, s5
.LBB0_17:
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s43
	s_cbranch_vccnz .LBB0_19
; %bb.18:
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v23, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v23, v230
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v22, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v22, v230
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v20, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v21, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s8, vcc_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v21, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v20, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s4, s5
	s_and_b32 s8, s8, s34
	s_and_b32 s9, s4, s33
	s_and_b32 s5, vcc_lo, s7
	s_and_b32 s4, s6, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v19, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v19, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s5, s31
	s_and_b32 s11, s4, s30
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v18, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v18, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s12, vcc_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v16, v231
	v_cmp_ge_i32_e64 s3, v17, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v16, v230
	v_cmp_le_i32_e64 s7, v17, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s4, s5
	s_and_b32 s8, s8, exec_lo
	s_and_b32 s13, s4, s28
	s_and_b32 s4, vcc_lo, s6
	s_and_b32 s5, s3, s7
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v15, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v15, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s5, s27
	s_and_b32 s15, s4, s26
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v14, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v14, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s16, vcc_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v12, v231
	v_cmp_ge_i32_e64 s3, v13, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v12, v230
	v_cmp_le_i32_e64 s7, v13, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s4, s5
	s_and_b32 s12, s12, s29
	s_and_b32 s17, s4, s24
	s_and_b32 s4, vcc_lo, s6
	s_and_b32 s5, s3, s7
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v11, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v11, v230
	v_cmp_le_i32_e64 s6, v9, v230
	v_cmp_le_i32_e64 s7, v0, v230
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s5, s23
	s_and_b32 s35, s4, s22
	s_and_b32 s36, vcc_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v0, v231
	v_cmp_ge_i32_e64 s3, v9, v231
	v_cmp_ge_i32_e64 s4, v10, v231
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v10, v230
	s_and_not1_b32 s33, s33, exec_lo
	s_and_b32 s9, s9, exec_lo
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s6
	s_and_b32 s6, vcc_lo, s7
	s_and_not1_b32 s7, s34, exec_lo
	s_and_b32 s16, s16, s25
	s_or_b32 s34, s7, s8
	s_and_not1_b32 s7, s31, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_or_b32 s33, s33, s9
	s_or_b32 s31, s7, s8
	s_and_not1_b32 s7, s29, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s9, s30, exec_lo
	s_and_b32 s10, s11, exec_lo
	s_or_b32 s29, s7, s8
	s_and_not1_b32 s7, s27, exec_lo
	s_and_b32 s8, s14, exec_lo
	s_and_b32 s4, s4, s5
	s_or_b32 s30, s9, s10
	s_and_not1_b32 s9, s28, exec_lo
	s_and_b32 s10, s13, exec_lo
	s_or_b32 s27, s7, s8
	s_and_not1_b32 s7, s25, exec_lo
	s_and_b32 s8, s16, exec_lo
	s_and_b32 s5, s36, s21
	s_and_b32 s4, s4, s20
	s_or_b32 s28, s9, s10
	s_and_not1_b32 s9, s26, exec_lo
	s_and_b32 s10, s15, exec_lo
	s_or_b32 s25, s7, s8
	s_and_not1_b32 s7, s23, exec_lo
	s_and_b32 s8, s18, exec_lo
	s_and_b32 s3, s3, s19
	s_and_b32 s6, s6, s1
	s_or_b32 s26, s9, s10
	s_and_not1_b32 s9, s24, exec_lo
	s_and_b32 s10, s17, exec_lo
	s_or_b32 s23, s7, s8
	s_and_not1_b32 s7, s21, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_not1_b32 s8, s20, exec_lo
	s_and_b32 s4, s4, exec_lo
	s_or_b32 s24, s9, s10
	s_and_not1_b32 s9, s22, exec_lo
	s_and_b32 s10, s35, exec_lo
	s_or_b32 s21, s7, s5
	s_or_b32 s20, s8, s4
	s_and_not1_b32 s4, s19, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s5, s6, exec_lo
	s_or_b32 s22, s9, s10
	s_or_b32 s19, s4, s3
	s_or_b32 s1, s1, s5
.LBB0_19:
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v0, s38, v209 :: v_dual_mul_f32 v9, s38, v210
	v_dual_mul_f32 v10, s38, v211 :: v_dual_mul_f32 v11, s38, v212
	v_dual_mul_f32 v12, s38, v213 :: v_dual_mul_f32 v13, s38, v214
	v_dual_mul_f32 v16, s38, v217 :: v_dual_mul_f32 v17, s38, v218
	v_dual_mul_f32 v18, s38, v219 :: v_dual_mul_f32 v19, s38, v220
	v_dual_mul_f32 v20, s38, v221 :: v_dual_mul_f32 v21, s38, v222
	v_dual_mul_f32 v22, s38, v223 :: v_dual_mul_f32 v23, s38, v224
	v_dual_mul_f32 v14, s38, v215 :: v_dual_mul_f32 v15, s38, v216
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v0, 0xff800000, v0, s34
	v_cndmask_b32_e64 v9, 0xff800000, v9, s33
	v_cndmask_b32_e64 v11, 0xff800000, v11, s30
	v_cndmask_b32_e64 v12, 0xff800000, v12, s29
	v_cndmask_b32_e64 v13, 0xff800000, v13, s28
	v_cndmask_b32_e64 v17, 0xff800000, v17, s24
	v_cndmask_b32_e64 v18, 0xff800000, v18, s23
	v_cndmask_b32_e64 v19, 0xff800000, v19, s22
	v_cndmask_b32_e64 v20, 0xff800000, v20, s21
	v_cndmask_b32_e64 v21, 0xff800000, v21, s20
	v_cndmask_b32_e64 v22, 0xff800000, v22, s19
	v_cndmask_b32_e64 v10, 0xff800000, v10, s31
	v_cndmask_b32_e64 v14, 0xff800000, v14, s27
	v_cndmask_b32_e64 v15, 0xff800000, v15, s26
	v_cndmask_b32_e64 v16, 0xff800000, v16, s25
	v_cndmask_b32_e64 v23, 0xff800000, v23, s1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v24, v0, v9
	v_max3_f32 v25, v11, v12, v13
	v_max3_f32 v26, v17, v18, v19
	v_max3_f32 v27, v20, v21, v22
	v_max3_f32 v28, v14, v15, v16
	s_mov_b32 s71, 0x76543210
	v_max3_f32 v24, v24, v10, v25
.Ltmp44:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v201
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v25, v26, v27, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v24, v24, v28, v25
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v25, v24, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v24, v201, v24, v25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v10, v24
	v_sub_f32_e32 v9, v9, v24
	v_sub_f32_e32 v23, v23, v24
	v_sub_f32_e32 v18, v18, v24
	v_sub_f32_e32 v12, v12, v24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v18, v18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v13, v24
	v_sub_f32_e32 v20, v20, v24
	v_sub_f32_e32 v21, v21, v24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v16, v16, v24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s31
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v25, v201, v24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s33
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v26, v11, v24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v14, v14, v24
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v25, v25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v0, v24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v21, v21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v17, v24
	v_sub_f32_e32 v22, v22, v24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s29
	v_cndmask_b32_e64 v13, 0, v13, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v15, v24
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e32 v11, 0, v25, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	v_exp_f32_e32 v25, v14
	v_exp_f32_e32 v27, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s20
	v_cndmask_b32_e64 v20, 0, v20, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v19, v19, v24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v22, v22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v0, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v9.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v28, v19
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_and_b32_e32 v17, 1, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v17, v9, v17, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v14, v9
.Ltmp49:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v24, v26
	v_exp_f32_e32 v26, v15
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v15.l, v14.h
	v_mov_b16_e32 v15.h, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v15, 1, v15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v24, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v24.l, v10.h
	v_mov_b16_e32 v24.h, v0.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	v_mov_b16_e32 v0.l, v19.h
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v17, 1, v24
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v24, v10, v19 :: v_dual_and_b32 v15, 1, v0
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v0.l, v13.h
	v_add3_u32 v17, v10, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v24
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v15, v19, v15, 0x7fff
	v_mov_b16_e32 v19.l, v12.h
	v_mov_b16_e32 v19.h, v0.h
	v_cndmask_b16 v15.l, 0x7fff, v17.h, s3
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v24, v12, v13
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v10, 1, v19
	v_and_b32_e32 v19, 1, v0
	v_cmp_o_f32_e64 s3, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v12, v10, 0x7fff
	v_add3_u32 v17, v13, v19, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v26, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v13.l, v25.h
	v_mov_b16_e32 v13.h, v0.h
	v_cndmask_b16 v17.l, 0x7fff, v10.h, s3
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v0.l, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v12, v25, v19 :: v_dual_and_b32 v13, 1, v13
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v26.h, v0.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_and_b32_e32 v10, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v24, v12
.Ltmp59:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v24, 0, v27, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v25, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v10, v19, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v25, v25
	v_mov_b16_e32 v0.l, v24.h
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v12 :: v_dual_and_b32 v12, 1, v26
.Ltmp61:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v28, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v19.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v10, 1, v0
	v_cndmask_b16 v19.l, 0x7fff, v13.h, s3
	v_add3_u32 v12, v16, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v16, v16
	v_mov_b16_e32 v0.l, v25.h
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v13, v16, v24
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v10, v24, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_mov_b16_e32 v24.l, v18.h
	v_mov_b16_e32 v24.h, v0.h
	v_cndmask_b16 v16.l, 0x7fff, v12.h, s3
	v_and_b32_e32 v12, 1, v0
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v18, v25
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v10, 1, v24
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v12, v25, v12, 0x7fff
	v_mov_b16_e32 v24.l, v20.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v22, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v10, v18, v10, 0x7fff
	v_mov_b16_e32 v0.l, v21.h
	v_cmp_o_f32_e64 s3, v18, v18
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v22, v20, v21
	v_dual_add_f32 v27, v25, v23 :: v_dual_and_b32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v13, v13, v26 :: v_dual_and_b32 v26, 1, v0
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.l, 0x7fff, v10.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v20, v24, 0x7fff
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v22, v22, v27
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v24.l, v25.h
	v_mov_b16_e32 v24.h, v0.h
	v_mov_b16_e32 v0.l, v23.h
	v_cndmask_b16 v18.h, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v12, v21, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s3, v20, v20
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v13, v13, v22 :: v_dual_and_b32 v20, 1, v24
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v21, 1, v0
	v_cndmask_b16 v22.h, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s3
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v9, v13
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v9, v25, v20, 0x7fff
	v_add3_u32 v10, v23, v21, 0x7fff
	v_mov_b32_e32 v20, 0x5410
	v_mov_b32_e32 v21, 0x7632
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_cmp_o_f32_e64 s3, v25, v25
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v13, v12, s71, 0xfedcba98 op_sel:[1,0]
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b32_e64 v20, 0x1054, v20, s74
	v_cndmask_b32_e64 v21, 0x3276, v21, s74
	v_cndmask_b16 v25.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v25.l, 0x7fff, v9.h, s3
	v_permlanex16_b32 v23, v14, s71, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v20, 8, v20
	v_lshl_or_b32 v10, v21, 8, v21
	v_permlanex16_b32 v24, v15, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v17, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v19, s71, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v20, v16, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v18, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v22, s71, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v10, 4, v10
	v_permlanex16_b32 v29, v25, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v9, 0x5040504, v9
	v_and_b32_e32 v10, 0x7060706, v10
	.loc	1 896 23                        ; attention.py:896:23
	s_cbranch_vccnz .LBB0_21
; %bb.20:
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_and_or_b32 v32, 0x1c0, v203, v75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v31, v29, v25, v10
	v_perm_b32 v30, v29, v25, v9
	v_perm_b32 v29, v28, v22, v10
	v_perm_b32 v28, v28, v22, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_xor_b32_e32 v22, v32, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v23, v14, v10
	v_perm_b32 v32, v23, v14, v9
	v_perm_b32 v39, v27, v19, v10
	v_perm_b32 v38, v27, v19, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_xad_u32 v14, 0x430, v22, 0
	v_xad_u32 v19, 0x420, v22, 0
	v_xad_u32 v23, v22, 16, 0
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v37, v26, v17, v10
	v_perm_b32 v36, v26, v17, v9
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[60:63], v14 offset:22528
	ds_load_b128 v[68:71], v14 offset:20480
	ds_load_b128 v[76:79], v14 offset:18432
	ds_load_b128 v[93:96], v14 offset:16384
	v_xad_u32 v14, v22, 48, 0
	v_xad_u32 v17, 0x410, v22, 0
	ds_load_b128 v[56:59], v19 offset:22528
	ds_load_b128 v[64:67], v19 offset:20480
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v24, v15, v10
	v_perm_b32 v34, v24, v15, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v15, 0, v22
	ds_load_b128 v[72:75], v19 offset:18432
	ds_load_b128 v[89:92], v19 offset:16384
	ds_load_b128 v[101:104], v14 offset:22528
	ds_load_b128 v[109:112], v14 offset:20480
	v_xad_u32 v19, v22, 32, 0
	ds_load_b128 v[117:120], v23 offset:18432
	ds_load_b128 v[125:128], v23 offset:16384
	ds_load_b128 v[48:51], v15 offset:17408
	ds_load_b128 v[121:124], v15 offset:16384
	ds_load_b128 v[40:43], v15 offset:19456
	ds_load_b128 v[113:116], v15 offset:18432
	ds_load_b128 v[133:136], v14 offset:18432
	ds_load_b128 v[141:144], v14 offset:16384
	ds_load_b128 v[129:132], v19 offset:18432
	ds_load_b128 v[137:140], v19 offset:16384
	ds_load_b128 v[197:200], v23 offset:22528
	ds_load_b128 v[207:210], v23 offset:20480
	ds_load_b128 v[211:214], v15 offset:21504
	ds_load_b128 v[203:206], v15 offset:20480
	ds_load_b128 v[219:222], v15 offset:23552
	ds_load_b128 v[193:196], v15 offset:22528
	ds_load_b128 v[97:100], v19 offset:22528
	ds_load_b128 v[105:108], v19 offset:20480
	ds_load_b128 v[223:226], v17 offset:22528
	ds_load_b128 v[215:218], v17 offset:20480
	ds_load_b128 v[44:47], v17 offset:18432
	ds_load_b128 v[52:55], v17 offset:16384
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v11
	v_mul_f32_e32 v6, v6, v11
	v_mul_f32_e32 v5, v5, v11
	v_mul_f32_e32 v4, v4, v11
	v_mul_f32_e32 v3, v3, v11
	v_mul_f32_e32 v2, v2, v11
	v_mul_f32_e32 v1, v1, v11
	v_mul_f32_e32 v88, v88, v11
	v_mul_f32_e32 v87, v87, v11
	v_mul_f32_e32 v86, v86, v11
	v_mul_f32_e32 v85, v85, v11
	v_mul_f32_e32 v84, v84, v11
	v_mul_f32_e32 v83, v83, v11
	v_mul_f32_e32 v82, v82, v11
	v_mul_f32_e32 v81, v81, v11
	v_mul_f32_e32 v152, v152, v11
	v_mul_f32_e32 v151, v151, v11
	v_mul_f32_e32 v150, v150, v11
	v_mul_f32_e32 v149, v149, v11
	v_mul_f32_e32 v148, v148, v11
	v_mul_f32_e32 v147, v147, v11
	v_mul_f32_e32 v146, v146, v11
	v_mul_f32_e32 v145, v145, v11
	v_mul_f32_e32 v160, v160, v11
	v_mul_f32_e32 v159, v159, v11
	v_mul_f32_e32 v158, v158, v11
	v_mul_f32_e32 v157, v157, v11
	v_mul_f32_e32 v156, v156, v11
	v_mul_f32_e32 v155, v155, v11
	v_mul_f32_e32 v154, v154, v11
	v_mul_f32_e32 v168, v168, v11
	v_mul_f32_e32 v167, v167, v11
	v_mul_f32_e32 v166, v166, v11
	v_mul_f32_e32 v165, v165, v11
	v_mul_f32_e32 v164, v164, v11
	v_mul_f32_e32 v163, v163, v11
	v_mul_f32_e32 v162, v162, v11
	v_mul_f32_e32 v176, v176, v11
	v_mul_f32_e32 v175, v175, v11
	v_mul_f32_e32 v174, v174, v11
	v_mul_f32_e32 v173, v173, v11
	v_mul_f32_e32 v172, v172, v11
	v_mul_f32_e32 v171, v171, v11
	v_mul_f32_e32 v170, v170, v11
	v_mul_f32_e32 v169, v169, v11
	v_mul_f32_e32 v184, v184, v11
	v_mul_f32_e32 v183, v183, v11
	v_mul_f32_e32 v182, v182, v11
	v_mul_f32_e32 v181, v181, v11
	v_mul_f32_e32 v180, v180, v11
	v_mul_f32_e32 v179, v179, v11
	v_mul_f32_e32 v178, v178, v11
	v_mul_f32_e32 v177, v177, v11
	v_mul_f32_e32 v192, v192, v11
	v_mul_f32_e32 v191, v191, v11
	v_mul_f32_e32 v190, v190, v11
	v_mul_f32_e32 v189, v189, v11
	v_mul_f32_e32 v188, v188, v11
	v_mul_f32_e32 v187, v187, v11
	v_mul_f32_e32 v186, v186, v11
	v_mul_f32_e32 v185, v185, v11
	v_mul_f32_e32 v161, v161, v11
	v_mul_f32_e32 v153, v153, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v27, v21, v18, v10
	v_perm_b32 v26, v21, v18, v9
	v_perm_b32 v25, v20, v16, v10
	v_perm_b32 v24, v20, v16, v9
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[185:192], v[121:128], v[32:39], v[185:192]
	v_wmma_f32_16x16x16_bf16 v[177:184], v[89:96], v[32:39], v[177:184]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[113:120], v[32:39], v[169:176]
	v_wmma_f32_16x16x16_bf16 v[161:168], v[72:79], v[32:39], v[161:168]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[203:210], v[32:39], v[153:160]
	v_wmma_f32_16x16x16_bf16 v[145:152], v[64:71], v[32:39], v[145:152]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[193:200], v[32:39], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[56:63], v[32:39], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[185:192], v[137:144], v[24:31], v[185:192]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[177:184], v[48:55], v[24:31], v[177:184]
	v_wmma_f32_16x16x16_bf16 v[169:176], v[129:136], v[24:31], v[169:176]
	v_wmma_f32_16x16x16_bf16 v[161:168], v[40:47], v[24:31], v[161:168]
	v_wmma_f32_16x16x16_bf16 v[153:160], v[105:112], v[24:31], v[153:160]
	v_wmma_f32_16x16x16_bf16 v[145:152], v[211:218], v[24:31], v[145:152]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[24:31], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[24:31], v[1:8]
.LBB0_21:
.Ltmp76:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v12, v13
.Ltmp77:
	.loc	1 1046 24                       ; attention.py:1046:24
	v_readlane_b32 s1, v255, 2
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v12, v202, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_cndmask_b32_e64 v11, v202, v12, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v12, null, v11, v11, v185
	v_div_scale_f32 v14, null, v11, v11, v186
	v_div_scale_f32 v16, null, v11, v11, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v20, v12
	v_div_scale_f32 v22, null, v11, v11, v190
	v_div_scale_f32 v18, null, v11, v11, v188
	v_rcp_f32_e32 v21, v14
	v_rcp_f32_e32 v23, v16
	v_rcp_f32_e32 v27, v22
	v_div_scale_f32 v19, null, v11, v11, v189
	v_rcp_f32_e32 v25, v18
	v_fma_f32 v28, -v12, v20, 1.0
	v_div_scale_f32 v13, vcc_lo, v185, v11, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v26, v19
	v_fma_f32 v29, -v14, v21, 1.0
	v_fma_f32 v31, -v16, v23, 1.0
	v_fma_f32 v33, -v22, v27, 1.0
	v_fmac_f32_e32 v20, v28, v20
	v_div_scale_f32 v15, s2, v186, v11, v186
	v_fmac_f32_e32 v21, v29, v21
	v_fma_f32 v28, -v18, v25, 1.0
	v_fmac_f32_e32 v23, v31, v23
	v_fmac_f32_e32 v27, v33, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v31, v13, v20 :: v_dual_mul_f32 v32, v15, v21
	v_div_scale_f32 v17, s3, v187, v11, v187
	v_div_scale_f32 v24, s4, v188, v11, v188
	v_fma_f32 v29, -v19, v26, 1.0
	v_dual_fmac_f32 v25, v28, v25 :: v_dual_mul_f32 v28, v17, v23
	v_fma_f32 v34, -v12, v31, v13
	v_fma_f32 v35, -v14, v32, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v26, v29, v26 :: v_dual_mul_f32 v29, v24, v25
	v_div_scale_f32 v30, s5, v189, v11, v189
	v_dual_fmac_f32 v31, v34, v20 :: v_dual_fmac_f32 v32, v35, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v18, v29, v24
	v_fma_f32 v36, -v16, v28, v17
	v_mul_f32_e32 v34, v30, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v12, v31, v13
	v_fma_f32 v13, -v14, v32, v15
	v_dual_fmac_f32 v29, v35, v25 :: v_dual_fmac_f32 v28, v36, v23
	v_div_scale_f32 v33, s6, v190, v11, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v12, v12, v20, v31
	v_div_scale_f32 v20, null, v11, v11, v191
	v_fma_f32 v15, -v18, v29, v24
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v14, -v16, v28, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v18, v20
	v_div_fmas_f32 v13, v13, v21, v32
	v_fma_f32 v16, -v19, v34, v30
	v_div_scale_f32 v21, null, v11, v11, v192
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v17, v33, v27 :: v_dual_fmac_f32 v34, v16, v26
	v_div_fmas_f32 v14, v14, v23, v28
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v23, v21
	v_div_fmas_f32 v15, v15, v25, v29
	v_fma_f32 v24, -v20, v18, 1.0
	v_div_scale_f32 v25, null, v11, v11, v177
	v_fma_f32 v16, -v22, v17, v33
	v_fma_f32 v19, -v19, v34, v30
	v_div_scale_f32 v29, s4, v192, v11, v192
	v_fmac_f32_e32 v18, v24, v18
	v_div_scale_f32 v24, s3, v191, v11, v191
	v_rcp_f32_e32 v28, v25
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v30, null, v11, v11, v178
	v_div_fmas_f32 v19, v19, v26, v34
	v_mul_f32_e32 v26, v24, v18
	v_fmac_f32_e32 v17, v16, v27
	v_fma_f32 v16, -v21, v23, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v32, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v25, v28, 1.0
	v_fma_f32 v22, -v22, v17, v33
	v_fmac_f32_e32 v23, v16, v23
	v_div_fixup_f32 v16, v19, v11, v189
	v_div_scale_f32 v35, null, v11, v11, v182
	v_div_fmas_f32 v17, v22, v27, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v28, v31, v28 :: v_dual_mul_f32 v27, v29, v23
	v_div_scale_f32 v31, null, v11, v11, v179
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v30, v32, 1.0
	v_fma_f32 v19, -v21, v27, v29
	v_rcp_f32_e32 v34, v31
	v_div_scale_f32 v36, null, v11, v11, v183
	v_div_scale_f32 v42, null, v11, v11, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v19, v23
	v_fma_f32 v22, -v20, v26, v24
	v_div_scale_f32 v44, null, v11, v11, v174
	v_div_scale_f32 v45, null, v11, v11, v176
	v_fmac_f32_e32 v26, v22, v18
	v_div_scale_f32 v22, s5, v177, v11, v177
	v_fma_f32 v19, -v21, v27, v29
	v_div_scale_f32 v29, null, v11, v11, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v26, v24
	v_div_scale_f32 v47, null, v11, v11, v162
	v_div_scale_f32 v46, null, v11, v11, v161
	v_div_fmas_f32 v18, v20, v18, v26
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v26, -v31, v34, 1.0
	v_div_fmas_f32 v19, v19, v23, v27
	v_rcp_f32_e32 v23, v29
	v_mul_f32_e32 v24, v22, v28
	v_div_scale_f32 v27, null, v11, v11, v181
	v_fmac_f32_e32 v34, v26, v34
	v_div_scale_f32 v26, s3, v179, v11, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v20, -v25, v24, v22
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, s6, v178, v11, v178
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v24, v20, v28
	v_rcp_f32_e32 v48, v47
	v_div_scale_f32 v52, null, v11, v11, v167
	v_div_scale_f32 v54, null, v11, v11, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v25, v24, v22
	v_mul_f32_e32 v25, v26, v34
	v_mul_f32_e32 v21, v33, v32
	v_div_scale_f32 v55, null, v11, v11, v154
	v_div_fmas_f32 v22, v22, v28, v24
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v30, v21, v33
	v_fma_f32 v28, -v31, v25, v26
	v_div_scale_f32 v57, null, v11, v11, v156
	v_div_scale_f32 v56, null, v11, v11, v155
	v_fmac_f32_e32 v21, v20, v32
	v_fma_f32 v20, -v29, v23, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v57
	v_div_scale_f32 v62, null, v11, v11, v145
	v_fma_f32 v24, -v30, v21, v33
	v_rcp_f32_e32 v30, v27
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v33, s4, v180, v11, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v24, v32, v21
	v_rcp_f32_e32 v24, v35
	v_dual_fmac_f32 v25, v28, v34 :: v_dual_mul_f32 v28, v33, v23
	v_div_fixup_f32 v20, v22, v11, v177
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v27, v30, 1.0
	v_fma_f32 v22, -v31, v25, v26
	v_fma_f32 v26, -v29, v28, v33
	v_div_scale_f32 v31, s5, v181, v11, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v30, v32, v30
	v_fma_f32 v32, -v35, v24, 1.0
	v_div_fmas_f32 v22, v22, v34, v25
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v34, null, v11, v11, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v25, v31, v30 :: v_dual_fmac_f32 v24, v32, v24
	v_div_scale_f32 v32, s3, v182, v11, v182
	v_fmac_f32_e32 v28, v26, v23
	v_rcp_f32_e32 v26, v36
	v_rcp_f32_e32 v38, v34
	v_mul_f32_e32 v37, v32, v24
	v_div_scale_f32 v64, null, v11, v11, v146
	v_fma_f32 v29, -v29, v28, v33
	v_fma_f32 v33, -v27, v25, v31
	v_div_scale_f32 v65, null, v11, v11, v148
	v_div_scale_f32 v66, null, v11, v11, v149
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v39, -v36, v26, 1.0
	v_div_fmas_f32 v23, v29, v23, v28
	v_fmac_f32_e32 v25, v33, v30
	v_fma_f32 v28, -v35, v37, v32
	v_div_scale_f32 v29, s4, v183, v11, v183
	v_fmac_f32_e32 v26, v39, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v27, v25, v31
	v_fmac_f32_e32 v37, v28, v24
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, null, v11, v11, v170
	v_mul_f32_e32 v28, v29, v26
	v_div_fmas_f32 v25, v27, v30, v25
	v_fma_f32 v27, -v35, v37, v32
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v34, v38, 1.0
	v_fma_f32 v30, -v36, v28, v29
	v_div_scale_f32 v31, s6, v184, v11, v184
	v_div_fmas_f32 v27, v27, v24, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v33, v38
	v_fmac_f32_e32 v28, v30, v26
	v_rcp_f32_e32 v30, v39
	v_div_scale_f32 v33, null, v11, v11, v169
	v_div_fixup_f32 v24, v25, v11, v181
	v_div_fixup_f32 v25, v27, v11, v182
	v_fma_f32 v27, -v36, v28, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v32, v33
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v29, s3, v169, v11, v169
	v_fma_f32 v36, -v39, v30, 1.0
	v_div_fmas_f32 v26, v27, v26, v28
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v73, null, v11, v11, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v30, v36, v30
	v_div_scale_f32 v36, null, v11, v11, v172
	v_fma_f32 v40, -v33, v32, 1.0
	v_mul_f32_e32 v35, v31, v38
	v_rcp_f32_e32 v75, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_div_scale_f32 v77, null, v11, v11, v2
	v_fmac_f32_e32 v32, v40, v32
	v_fma_f32 v37, -v34, v35, v31
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v79, v77
	v_div_fixup_f32 v12, v12, v11, v185
	v_mul_f32_e32 v28, v29, v32
	v_div_fixup_f32 v13, v13, v11, v186
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v36, v41, 1.0
	v_div_fixup_f32 v14, v14, v11, v187
	v_div_fixup_f32 v15, v15, v11, v188
	v_div_fixup_f32 v17, v17, v11, v190
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v89, 0, v13, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, s6, v172, v11, v172
	v_fmac_f32_e32 v35, v37, v38
	v_div_scale_f32 v37, null, v11, v11, v171
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v133, v89, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v18, v11, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v34, v35, v31
	v_rcp_f32_e32 v31, v37
	v_div_scale_f32 v34, s4, v170, v11, v170
	v_div_fixup_f32 v19, v19, v11, v192
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v38, v35
	v_fma_f32 v35, -v33, v28, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v21, v21, v11, v178
	v_div_fixup_f32 v22, v22, v11, v179
	v_div_fixup_f32 v23, v23, v11, v180
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v37, v31, 1.0
	v_fmac_f32_e32 v28, v35, v32
	v_div_fixup_f32 v26, v26, v11, v183
	v_div_fixup_f32 v27, v27, v11, v184
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v90, 0, v14, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v40, v31
	v_div_scale_f32 v40, s5, v171, v11, v171
	v_fma_f32 v29, -v33, v28, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v91, 0, v15, s2
	v_cndmask_b32_e64 v92, 0, v16, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v33, v40, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v93, 0, v17, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v29, v32, v28
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v94, 0, v18, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v37, v33, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v95, 0, v19, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v28, v11, v169
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v96, 0, v20, s2
	v_cndmask_b32_e64 v97, 0, v21, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v32, v31
	v_div_scale_f32 v32, s3, v173, v11, v173
	v_mul_f32_e32 v38, v34, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v98, 0, v22, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v33, v40
	v_div_scale_f32 v40, null, v11, v11, v175
	v_fma_f32 v35, -v39, v38, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v99, 0, v23, s2
	v_cndmask_b32_e64 v100, 0, v24, s2
	v_cndmask_b32_e64 v101, 0, v25, s2
	v_cndmask_b32_e64 v102, 0, v26, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v35, v30
	v_rcp_f32_e32 v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v103, 0, v27, s2
	v_cndmask_b32_e64 v104, 0, v28, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s67, v89, v89
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v39, v38, v34
	v_mul_f32_e32 v34, v43, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v29, v29, v30, v38
	v_fma_f32 v39, -v42, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v36, v34, v43
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v38, v44
	v_div_fmas_f32 v31, v37, v31, v33
	v_dual_fmac_f32 v35, v39, v35 :: v_dual_fmac_f32 v34, v30, v41
	v_rcp_f32_e32 v37, v40
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v29, v29, v11, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v39, v32, v35
	v_fma_f32 v33, -v36, v34, v43
	v_div_scale_f32 v43, s4, v174, v11, v174
	v_fma_f32 v30, -v44, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v42, v39, v32
	v_div_fmas_f32 v33, v33, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v40, v37, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v34, v45
	v_fmac_f32_e32 v39, v36, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v105, 0, v29, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s5, v175, v11, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v42, v39, v32
	v_fma_f32 v42, -v45, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v35, v39
	v_dual_mul_f32 v35, v41, v37 :: v_dual_fmac_f32 v38, v30, v38
	v_div_fixup_f32 v30, v31, v11, v171
	v_div_fixup_f32 v31, v33, v11, v172
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s3, v176, v11, v176
	v_mul_f32_e32 v36, v43, v38
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v39, v46
	v_div_fixup_f32 v32, v32, v11, v173
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v106, 0, v30, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v44, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v107, 0, v31, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v108, 0, v32, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v46, v39, 1.0
	v_fma_f32 v33, -v44, v36, v43
	v_fma_f32 v43, -v40, v35, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, v42, v34 :: v_dual_fmac_f32 v39, v49, v39
	v_div_scale_f32 v49, null, v11, v11, v164
	v_fmac_f32_e32 v35, v43, v37
	v_div_fmas_f32 v33, v33, v38, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v45, v44, v42
	v_fma_f32 v43, -v47, v48, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v40, v35, v41
	v_div_scale_f32 v38, s4, v161, v11, v161
	v_fmac_f32_e32 v44, v36, v34
	v_fmac_f32_e32 v48, v43, v48
	v_div_scale_f32 v43, null, v11, v11, v163
	v_div_fmas_f32 v35, v40, v37, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v44, v42
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v41, s6, v162, v11, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v34, v44
	v_div_fixup_f32 v34, v35, v11, v175
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v33, v33, v11, v174
	v_div_fixup_f32 v35, v37, v11, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v110, 0, v34, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v109, 0, v33, s2
	v_cndmask_b32_e64 v111, 0, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_mul_f32_e32 v36, v38, v39
	v_fma_f32 v40, -v46, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v40, v39
	v_rcp_f32_e32 v40, v49
	v_fma_f32 v37, -v46, v36, v38
	v_div_scale_f32 v38, s3, v163, v11, v163
	v_div_scale_f32 v46, null, v11, v11, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v37, v39, v36
	v_mul_f32_e32 v39, v38, v42
	v_mul_f32_e32 v45, v41, v48
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v36, v36, v11, v161
	v_fma_f32 v44, -v47, v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v112, 0, v36, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v44, v48
	v_fma_f32 v44, -v49, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v47, v45, v41
	v_rcp_f32_e32 v41, v46
	v_div_scale_f32 v47, null, v11, v11, v166
	v_div_fmas_f32 v37, v37, v48, v45
	v_fma_f32 v45, -v43, v39, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v47
	v_div_fixup_f32 v37, v37, v11, v162
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v46, v41, 1.0
	v_fmac_f32_e32 v39, v45, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v113, 0, v37, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s5, v165, v11, v165
	v_fma_f32 v38, -v43, v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v47, v51, 1.0
	v_mul_f32_e32 v43, v50, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s6, v166, v11, v166
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v50
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s4, v164, v11, v164
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v43, v42, v41
	v_div_scale_f32 v42, s3, v167, v11, v167
	v_mul_f32_e32 v48, v44, v40
	v_div_fixup_f32 v38, v38, v11, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v46, v43, v50
	v_div_scale_f32 v50, null, v11, v11, v153
	v_fma_f32 v45, -v49, v48, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v114, 0, v38, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v45, v40
	v_rcp_f32_e32 v45, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v49, v48, v44
	v_mul_f32_e32 v44, v53, v51
	v_div_fmas_f32 v39, v39, v40, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v52, v45, 1.0
	v_fma_f32 v40, -v47, v44, v53
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v48, v54
	v_div_fmas_f32 v41, v46, v41, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v45, v49, v45 :: v_dual_fmac_f32 v44, v40, v51
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v39, v39, v11, v164
	v_mul_f32_e32 v49, v42, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v43, -v47, v44, v53
	v_rcp_f32_e32 v47, v50
	v_fma_f32 v40, -v54, v48, 1.0
	v_div_scale_f32 v53, s4, v168, v11, v168
	v_fma_f32 v46, -v52, v49, v42
	v_div_fmas_f32 v43, v43, v51, v44
	v_rcp_f32_e32 v44, v55
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v115, 0, v39, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v46, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v50, v47, 1.0
	v_fma_f32 v42, -v52, v49, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s5, v153, v11, v153
	v_fmac_f32_e32 v48, v40, v48
	v_div_fmas_f32 v42, v42, v45, v49
	v_div_fixup_f32 v40, v41, v11, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v51, v47
	v_div_fixup_f32 v41, v43, v11, v166
	v_mul_f32_e32 v46, v53, v48
	v_fma_f32 v52, -v55, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v56
	v_div_fixup_f32 v42, v42, v11, v167
	v_fma_f32 v43, -v54, v46, v53
	v_fmac_f32_e32 v44, v52, v44
	v_div_scale_f32 v52, s3, v154, v11, v154
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v116, 0, v40, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v43, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v117, 0, v41, s2
	v_cndmask_b32_e64 v118, 0, v42, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v59, -v56, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v54, v46, v53
	v_fma_f32 v53, -v50, v45, v51
	v_dual_mul_f32 v54, v52, v44 :: v_dual_fmac_f32 v49, v59, v49
	v_div_scale_f32 v59, null, v11, v11, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v53, v47
	v_div_fmas_f32 v43, v43, v48, v46
	v_fma_f32 v46, -v55, v54, v52
	v_fma_f32 v53, -v57, v58, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v50, -v50, v45, v51
	v_div_scale_f32 v48, s4, v155, v11, v155
	v_fmac_f32_e32 v54, v46, v44
	v_fmac_f32_e32 v58, v53, v58
	v_div_scale_f32 v53, null, v11, v11, v157
	v_div_fmas_f32 v45, v50, v47, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v55, v54, v52
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v52, v53
	v_div_scale_f32 v51, s6, v156, v11, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v44, v54
	v_div_fixup_f32 v44, v45, v11, v153
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v43, v43, v11, v168
	v_div_fixup_f32 v45, v47, v11, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v120, 0, v44, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v60, -v53, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v119, 0, v43, s2
	v_cndmask_b32_e64 v121, 0, v45, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v60, v52
	v_mul_f32_e32 v46, v48, v49
	v_fma_f32 v50, -v56, v46, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v50, v49
	v_rcp_f32_e32 v50, v59
	v_fma_f32 v47, -v56, v46, v48
	v_div_scale_f32 v48, s3, v157, v11, v157
	v_div_scale_f32 v56, null, v11, v11, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v46, v47, v49, v46
	v_mul_f32_e32 v49, v48, v52
	v_mul_f32_e32 v55, v51, v58
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v46, v11, v155
	v_fma_f32 v54, -v57, v55, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v122, 0, v46, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v55, v54, v58
	v_fma_f32 v54, -v59, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v57, v55, v51
	v_rcp_f32_e32 v51, v56
	v_div_scale_f32 v57, null, v11, v11, v160
	v_div_fmas_f32 v47, v47, v58, v55
	v_fma_f32 v55, -v53, v49, v48
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v61, v57
	v_div_fixup_f32 v47, v47, v11, v156
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v56, v51, 1.0
	v_fmac_f32_e32 v49, v55, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v123, 0, v47, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v60, s5, v159, v11, v159
	v_fma_f32 v48, -v53, v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v57, v61, 1.0
	v_mul_f32_e32 v53, v60, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v48, v48, v52, v49
	v_fmac_f32_e32 v61, v63, v61
	v_div_scale_f32 v63, s6, v160, v11, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v52, -v56, v53, v60
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s4, v158, v11, v158
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v53, v52, v51
	v_rcp_f32_e32 v52, v64
	v_mul_f32_e32 v58, v54, v50
	v_div_fixup_f32 v48, v48, v11, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v56, v53, v60
	v_div_scale_f32 v60, null, v11, v11, v147
	v_fma_f32 v55, -v59, v58, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v124, 0, v48, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v58, v55, v50
	v_rcp_f32_e32 v55, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v59, v58, v54
	v_mul_f32_e32 v54, v63, v61
	v_div_fmas_f32 v49, v49, v50, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v62, v55, 1.0
	v_fma_f32 v50, -v57, v54, v63
	v_div_scale_f32 v58, s3, v145, v11, v145
	s_mov_b32 vcc_lo, s5
	v_dual_fmac_f32 v55, v59, v55 :: v_dual_fmac_f32 v54, v50, v61
	v_div_fmas_f32 v51, v56, v51, v53
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v50, -v64, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v59, v58, v55
	v_fma_f32 v53, -v57, v54, v63
	v_rcp_f32_e32 v57, v60
	v_div_scale_f32 v63, s4, v146, v11, v146
	v_fma_f32 v56, -v62, v59, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v53, v53, v61, v54
	v_rcp_f32_e32 v54, v65
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v49, v49, v11, v158
	v_fmac_f32_e32 v59, v56, v55
	v_fma_f32 v61, -v60, v57, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v125, 0, v49, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v57, v61, v57
	v_div_scale_f32 v61, s5, v147, v11, v147
	v_fmac_f32_e32 v52, v50, v52
	v_div_fixup_f32 v50, v51, v11, v159
	v_div_fixup_f32 v51, v53, v11, v160
	v_fma_f32 v53, -v62, v59, v58
	v_fma_f32 v62, -v65, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v126, 0, v50, s2
	v_cndmask_b32_e64 v127, 0, v51, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v53, v53, v55, v59
	v_dual_mul_f32 v55, v61, v57 :: v_dual_mul_f32 v56, v63, v52
	v_fmac_f32_e32 v54, v62, v54
	v_div_scale_f32 v62, null, v11, v11, v150
	v_div_scale_f32 v59, s3, v148, v11, v148
	v_fma_f32 v58, -v64, v56, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v62
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v67, v59, v54
	v_div_fixup_f32 v53, v53, v11, v145
	v_fmac_f32_e32 v56, v58, v52
	v_rcp_f32_e32 v58, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v128, 0, v53, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v63, -v64, v56, v63
	v_fma_f32 v64, -v60, v55, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v63, v52, v56
	v_fmac_f32_e32 v55, v64, v57
	v_fma_f32 v64, -v62, v68, 1.0
	v_fma_f32 v56, -v65, v67, v59
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v66, v58, 1.0
	v_fma_f32 v60, -v60, v55, v61
	v_fmac_f32_e32 v68, v64, v68
	v_div_scale_f32 v64, null, v11, v11, v151
	v_fmac_f32_e32 v67, v56, v54
	v_div_fmas_f32 v55, v60, v57, v55
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v64
	v_fmac_f32_e32 v58, v69, v58
	v_fma_f32 v57, -v65, v67, v59
	v_div_scale_f32 v63, s4, v149, v11, v149
	v_div_scale_f32 v69, null, v11, v11, v152
	v_div_fmas_f32 v54, v57, v54, v67
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v61, s6, v150, v11, v150
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v67, -v64, v60, 1.0
	v_rcp_f32_e32 v57, v69
	v_div_fixup_f32 v52, v52, v11, v146
	v_div_fixup_f32 v55, v55, v11, v147
	v_div_fixup_f32 v54, v54, v11, v148
	v_fmac_f32_e32 v60, v67, v60
	v_mul_f32_e32 v56, v63, v58
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v129, 0, v52, s2
	v_cndmask_b32_e64 v130, 0, v55, s2
	v_cndmask_b32_e64 v131, 0, v54, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v59, -v66, v56, v63
	v_fmac_f32_e32 v56, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v66, v56, v63
	v_fma_f32 v66, -v69, v57, 1.0
	v_fmac_f32_e32 v57, v66, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v56, v63, v58, v56
	v_div_scale_f32 v63, s4, v152, v11, v152
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v56, v56, v11, v149
	v_mul_f32_e32 v67, v63, v57
	v_mul_f32_e32 v65, v61, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v62, v65, v61
	v_fmac_f32_e32 v65, v59, v68
	v_div_scale_f32 v59, s3, v151, v11, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v62, v65, v61
	v_mul_f32_e32 v61, v59, v60
	v_div_scale_f32 v62, null, v11, v11, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v58, v58, v68, v65
	v_fma_f32 v66, -v64, v61, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v65, v62
	v_div_scale_f32 v68, null, v11, v11, v82
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v61, v66, v60
	v_fma_f32 v66, -v69, v67, v63
	v_rcp_f32_e32 v70, v68
	v_div_fixup_f32 v58, v58, v11, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v59, -v64, v61, v59
	v_fma_f32 v71, -v62, v65, 1.0
	v_div_scale_f32 v64, null, v11, v11, v83
	v_fmac_f32_e32 v67, v66, v57
	v_div_scale_f32 v66, s5, v81, v11, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v68, v70, 1.0
	v_fmac_f32_e32 v65, v71, v65
	v_rcp_f32_e32 v71, v64
	v_div_fmas_f32 v59, v59, v60, v61
	v_fma_f32 v60, -v69, v67, v63
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v63, s3, v82, v11, v82
	v_mul_f32_e32 v61, v66, v65
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v59, v59, v11, v151
	v_div_fmas_f32 v57, v60, v57, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v64, v71, 1.0
	v_mul_f32_e32 v74, v63, v70
	v_fma_f32 v72, -v62, v61, v66
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v57, v57, v11, v152
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, s6, v83, v11, v83
	v_fma_f32 v60, -v68, v74, v63
	v_fmac_f32_e32 v61, v72, v65
	v_div_scale_f32 v72, null, v11, v11, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v67, v69, v71 :: v_dual_fmac_f32 v74, v60, v70
	v_fma_f32 v62, -v62, v61, v66
	v_fma_f32 v66, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v64, v67, v69
	v_div_fmas_f32 v61, v62, v65, v61
	v_fma_f32 v62, -v68, v74, v63
	v_div_scale_f32 v63, s4, v84, v11, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, v60, v71
	v_rcp_f32_e32 v60, v72
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v61, v61, v11, v81
	v_div_fmas_f32 v62, v62, v70, v74
	v_fma_f32 v64, -v64, v67, v69
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v81, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v62, v62, v11, v82
	v_div_fmas_f32 v64, v64, v71, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v72, v60, 1.0
	v_fmac_f32_e32 v75, v66, v75
	v_div_scale_f32 v66, null, v11, v11, v86
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v60, v68, v60 :: v_dual_mul_f32 v65, v63, v75
	v_rcp_f32_e32 v67, v66
	v_div_scale_f32 v68, s3, v85, v11, v85
	v_div_scale_f32 v71, null, v11, v11, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v73, v65, v63
	v_div_fixup_f32 v64, v64, v11, v83
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v74, v71
	v_div_scale_f32 v81, s6, v2, v11, v2
	v_fmac_f32_e32 v65, v69, v75
	v_mul_f32_e32 v69, v68, v60
	v_fma_f32 v70, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v73, v65, v63
	v_fma_f32 v73, -v72, v69, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, s5, v86, v11, v86
	v_div_fmas_f32 v63, v63, v75, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v73, v60
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v65, v70, v67
	v_div_scale_f32 v73, null, v11, v11, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v72, v69, v68
	v_fma_f32 v75, -v71, v74, 1.0
	v_fma_f32 v72, -v66, v65, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v76, v73
	v_div_fixup_f32 v63, v63, v11, v84
	v_div_fmas_f32 v60, v68, v60, v69
	v_div_scale_f32 v68, null, v11, v11, v1
	v_dual_fmac_f32 v65, v72, v67 :: v_dual_fmac_f32 v74, v75, v74
	v_div_scale_f32 v69, s3, v87, v11, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v72, v68
	v_fma_f32 v75, -v73, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v66, v65, v70
	v_mul_f32_e32 v70, v69, v74
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v80, s5, v1, v11, v1
	v_fmac_f32_e32 v76, v75, v76
	v_div_scale_f32 v75, s4, v88, v11, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v68, v72, 1.0
	v_div_fixup_f32 v60, v60, v11, v85
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, null, v11, v11, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v80, v72
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v78, v82, 1.0
	v_fmac_f32_e32 v82, v84, v82
	v_div_fmas_f32 v65, v66, v67, v65
	v_fma_f32 v66, -v71, v70, v69
	v_mul_f32_e32 v67, v75, v76
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v65, v65, v11, v86
	v_fmac_f32_e32 v70, v66, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v73, v67, v75
	v_fma_f32 v69, -v71, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v66, v76
	v_fma_f32 v66, -v68, v83, v80
	v_mul_f32_e32 v71, v81, v79
	v_div_fmas_f32 v69, v69, v74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v73, v67, v75
	v_fmac_f32_e32 v83, v66, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v66, -v77, v71, v81
	v_div_scale_f32 v73, s3, v3, v11, v3
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v68, -v68, v83, v80
	v_dual_fmac_f32 v71, v66, v79 :: v_dual_mul_f32 v66, v73, v82
	v_div_fmas_f32 v67, v70, v76, v67
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v70, null, v11, v11, v4
	v_div_fmas_f32 v68, v68, v72, v83
	v_fma_f32 v72, -v77, v71, v81
	v_fma_f32 v74, -v78, v66, v73
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v75, v70
	v_div_fixup_f32 v1, v68, v11, v1
	v_div_fmas_f32 v71, v72, v79, v71
	v_fmac_f32_e32 v66, v74, v82
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v79, null, v11, v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v71, v11, v2
	v_fma_f32 v68, -v78, v66, v73
	v_div_scale_f32 v71, null, v11, v11, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v70, v75, 1.0
	v_div_scale_f32 v73, null, v11, v11, v7
	v_div_fmas_f32 v66, v68, v82, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v68, v71
	v_div_scale_f32 v74, vcc_lo, v4, v11, v4
	v_rcp_f32_e32 v77, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v3, v66, v11, v3
	v_rcp_f32_e32 v81, v79
	v_div_fixup_f32 v69, v69, v11, v87
	v_div_fixup_f32 v67, v67, v11, v88
	v_fma_f32 v66, -v71, v68, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v73, v77, 1.0
	v_fmac_f32_e32 v68, v66, v68
	v_div_scale_f32 v66, s3, v5, v11, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v79, v81, 1.0
	v_dual_mul_f32 v84, v66, v68 :: v_dual_fmac_f32 v75, v72, v75
	v_div_scale_f32 v72, null, v11, v11, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s6, v8, v11, v8
	v_rcp_f32_e32 v76, v72
	v_mul_f32_e32 v78, v74, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v88, v85, v81
	v_fma_f32 v82, -v70, v78, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v72, v76, 1.0
	v_fmac_f32_e32 v78, v82, v75
	v_fma_f32 v82, -v71, v84, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v80, v76
	v_div_scale_f32 v80, s4, v6, v11, v6
	v_fma_f32 v70, -v70, v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v82, v68
	v_mul_f32_e32 v86, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v75, v78
	v_fma_f32 v66, -v71, v84, v66
	v_fma_f32 v71, -v79, v88, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v74, -v72, v86, v80
	v_fmac_f32_e32 v77, v83, v77
	v_div_scale_f32 v83, s5, v7, v11, v7
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v86, v74, v76
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v74, 0, v2, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v87, v83, v77 :: v_dual_add_nc_u32 v2, s1, v227
	v_fmac_f32_e32 v88, v71, v81
	v_div_fmas_f32 v66, v66, v68, v84
	v_fma_f32 v68, -v72, v86, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v82, -v73, v87, v83
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v72, -v79, v88, v85
	v_div_fixup_f32 v4, v70, v11, v4
	v_div_fmas_f32 v68, v68, v76, v86
	v_fmac_f32_e32 v87, v82, v77
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v66, v11, v5
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_lshrrev_b32_e32 v66, 1, v228
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v68, v11, v6
	v_fma_f32 v71, -v73, v87, v83
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v86, 0, v58, s2
	v_cndmask_b32_e64 v85, 0, v59, s2
	v_cndmask_b32_e64 v84, 0, v57, s2
	v_cndmask_b32_e64 v83, 0, v61, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v71, v71, v77, v87
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v87, 0, v56, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v72, v72, v81, v88
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v88, 0, v12, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v71, v11, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v82, 0, v62, s2
	v_cndmask_b32_e64 v81, 0, v64, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v72, v11, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v132, v88, 16, 1
	v_cmp_o_f32_e64 s66, v88, v88
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v80, 0, v63, s2
	v_cndmask_b32_e64 v79, 0, v60, s2
	v_cndmask_b32_e64 v78, 0, v65, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v132, v88, v132, 0x7fff
	v_add3_u32 v88, v89, v133, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v77, 0, v69, s2
	v_cndmask_b32_e64 v76, 0, v67, s2
	v_cndmask_b32_e64 v75, 0, v1, s2
	v_cndmask_b32_e64 v73, 0, v3, s2
	v_cndmask_b32_e64 v72, 0, v4, s2
	v_cndmask_b32_e64 v71, 0, v5, s2
	v_cndmask_b32_e64 v70, 0, v6, s2
	v_cndmask_b32_e64 v69, 0, v7, s2
	v_cndmask_b32_e64 v68, 0, v8, s2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v67, 1, v66
	v_or_b32_e32 v65, 2, v66
	v_or_b32_e32 v64, 3, v66
	v_or_b32_e32 v63, 4, v66
	v_or_b32_e32 v62, 5, v66
	v_or_b32_e32 v61, 6, v66
	v_or_b32_e32 v60, 7, v66
	v_or_b32_e32 v59, 16, v66
	v_or_b32_e32 v58, 17, v66
	v_or_b32_e32 v57, 18, v66
	v_or_b32_e32 v56, 19, v66
	v_or_b32_e32 v55, 20, v66
	v_or_b32_e32 v54, 21, v66
	v_or_b32_e32 v53, 22, v66
	v_or_b32_e32 v52, 23, v66
	v_or_b32_e32 v51, 32, v66
	v_or_b32_e32 v50, 33, v66
	v_or_b32_e32 v49, 34, v66
	v_or_b32_e32 v48, 35, v66
	v_or_b32_e32 v47, 36, v66
	v_or_b32_e32 v46, 37, v66
	v_or_b32_e32 v45, 38, v66
	v_or_b32_e32 v44, 39, v66
	v_or_b32_e32 v43, 48, v66
	v_or_b32_e32 v42, 49, v66
	v_or_b32_e32 v41, 50, v66
	v_or_b32_e32 v40, 51, v66
	v_or_b32_e32 v39, 52, v66
	v_or_b32_e32 v38, 53, v66
	v_or_b32_e32 v37, 54, v66
	v_or_b32_e32 v36, 55, v66
	v_or_b32_e32 v35, 64, v66
	v_or_b32_e32 v34, 0x41, v66
	v_or_b32_e32 v33, 0x42, v66
	v_or_b32_e32 v32, 0x43, v66
	v_or_b32_e32 v31, 0x44, v66
	v_or_b32_e32 v30, 0x45, v66
	v_or_b32_e32 v29, 0x46, v66
	v_or_b32_e32 v28, 0x47, v66
	v_or_b32_e32 v27, 0x50, v66
	v_or_b32_e32 v26, 0x51, v66
	v_or_b32_e32 v25, 0x52, v66
	v_or_b32_e32 v24, 0x53, v66
	v_or_b32_e32 v23, 0x54, v66
	v_or_b32_e32 v22, 0x55, v66
	v_or_b32_e32 v21, 0x56, v66
	v_or_b32_e32 v20, 0x57, v66
	v_or_b32_e32 v19, 0x60, v66
	v_or_b32_e32 v18, 0x61, v66
	v_or_b32_e32 v17, 0x62, v66
	v_or_b32_e32 v16, 0x63, v66
	v_or_b32_e32 v15, 0x64, v66
	v_or_b32_e32 v14, 0x65, v66
	v_or_b32_e32 v13, 0x66, v66
	v_or_b32_e32 v12, 0x67, v66
	v_or_b32_e32 v11, 0x70, v66
	v_or_b32_e32 v8, 0x71, v66
	v_or_b32_e32 v7, 0x72, v66
	v_or_b32_e32 v5, 0x73, v66
	v_or_b32_e32 v6, 0x74, v66
	v_or_b32_e32 v4, 0x75, v66
	v_or_b32_e32 v3, 0x76, v66
	v_or_b32_e32 v1, 0x77, v66
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v89, v90, 16, 1
	v_cndmask_b16 v88.l, 0x7fff, v132.h, s66
	v_bfe_u32 v132, v91, 16, 1
	v_bfe_u32 v133, v92, 16, 1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v2, v2, s68
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s65, s68, v66
	v_cmp_gt_i32_e64 s64, s68, v67
	v_cmp_gt_i32_e64 s63, s68, v65
	v_cmp_gt_i32_e64 s62, s68, v64
	v_cmp_gt_i32_e64 s61, s68, v63
	v_cmp_gt_i32_e64 s60, s68, v62
	v_cmp_gt_i32_e64 s59, s68, v61
	v_cmp_gt_i32_e64 s58, s68, v60
	v_cmp_gt_i32_e64 s57, s68, v59
	v_cmp_gt_i32_e64 s56, s68, v58
	v_cmp_gt_i32_e64 s55, s68, v57
	v_cmp_gt_i32_e64 s54, s68, v56
	v_cmp_gt_i32_e64 s53, s68, v55
	v_cmp_gt_i32_e64 s52, s68, v54
	v_cmp_gt_i32_e64 s51, s68, v53
	v_cmp_gt_i32_e64 s50, s68, v52
	v_cmp_gt_i32_e64 s49, s68, v51
	v_cmp_gt_i32_e64 s48, s68, v50
	v_cmp_gt_i32_e64 s47, s68, v49
	v_cmp_gt_i32_e64 s46, s68, v48
	v_cmp_gt_i32_e64 s45, s68, v47
	v_cmp_gt_i32_e64 s44, s68, v46
	v_cmp_gt_i32_e64 s43, s68, v45
	v_cmp_gt_i32_e64 s42, s68, v44
	v_cmp_gt_i32_e64 s41, s68, v43
	v_cmp_gt_i32_e64 s40, s68, v42
	v_cmp_gt_i32_e64 s39, s68, v41
	v_cmp_gt_i32_e64 s38, s68, v40
	v_cmp_gt_i32_e64 s37, s68, v39
	v_cmp_gt_i32_e64 s36, s68, v38
	v_cmp_gt_i32_e64 s35, s68, v37
	v_cmp_gt_i32_e64 s34, s68, v36
	v_cmp_gt_i32_e64 s33, s68, v35
	v_cmp_gt_i32_e64 s31, s68, v34
	v_cmp_gt_i32_e64 s30, s68, v33
	v_cmp_gt_i32_e64 s29, s68, v32
	v_cmp_gt_i32_e64 s28, s68, v31
	v_cmp_gt_i32_e64 s27, s68, v30
	v_cmp_gt_i32_e64 s26, s68, v29
	v_cmp_gt_i32_e64 s25, s68, v28
	v_cmp_gt_i32_e64 s24, s68, v27
	v_cmp_gt_i32_e64 s23, s68, v26
	v_cmp_gt_i32_e64 s22, s68, v25
	v_cmp_gt_i32_e64 s21, s68, v24
	v_cmp_gt_i32_e64 s20, s68, v23
	v_cmp_gt_i32_e64 s19, s68, v22
	v_cmp_gt_i32_e64 s18, s68, v21
	v_cmp_gt_i32_e64 s13, s68, v20
	v_cmp_gt_i32_e64 s12, s68, v19
	v_cmp_gt_i32_e64 s11, s68, v18
	v_cmp_gt_i32_e64 s10, s68, v17
	v_cmp_gt_i32_e64 s9, s68, v16
	v_cmp_gt_i32_e64 s8, s68, v15
	v_cmp_gt_i32_e64 s7, s68, v14
	v_cmp_gt_i32_e64 s6, s68, v13
	v_cmp_gt_i32_e64 s5, s68, v12
	v_cmp_gt_i32_e64 s4, s68, v11
	v_cmp_gt_i32_e64 s3, s68, v8
	v_cmp_gt_i32_e64 s2, s68, v7
	v_cmp_gt_i32_e32 vcc_lo, s68, v5
	v_cmp_gt_i32_e64 s17, s68, v6
	v_cmp_gt_i32_e64 s15, s68, v4
	v_cmp_gt_i32_e64 s14, s68, v3
	v_cmp_gt_i32_e64 s16, s68, v1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v88.h, 0x7fff, v88.h, s67
	v_add3_u32 v89, v90, v89, 0x7fff
	v_cmp_o_f32_e64 s66, v90, v90
	v_add3_u32 v90, v91, v132, 0x7fff
	v_cmp_o_f32_e64 s67, v91, v91
	v_add3_u32 v91, v92, v133, 0x7fff
	v_cmp_o_f32_e64 s68, v92, v92
	v_bfe_u32 v92, v93, 16, 1
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s66
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s67
	v_bfe_u32 v90, v94, 16, 1
	v_bfe_u32 v132, v95, 16, 1
	v_add3_u32 v92, v93, v92, 0x7fff
	v_cmp_o_f32_e64 s66, v93, v93
	v_cndmask_b16 v91.l, 0x7fff, v91.h, s68
	v_add3_u32 v90, v94, v90, 0x7fff
	v_cmp_o_f32_e64 s67, v94, v94
	v_add3_u32 v93, v95, v132, 0x7fff
	v_cmp_o_f32_e64 s68, v95, v95
	v_cndmask_b16 v91.h, 0x7fff, v92.h, s66
	v_bfe_u32 v92, v96, 16, 1
	v_bfe_u32 v94, v97, 16, 1
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s67
	v_cndmask_b16 v90.h, 0x7fff, v93.h, s68
	v_bfe_u32 v93, v98, 16, 1
	v_add3_u32 v92, v96, v92, 0x7fff
	v_cmp_o_f32_e64 s66, v96, v96
	v_add3_u32 v94, v97, v94, 0x7fff
	v_cmp_o_f32_e64 s67, v97, v97
	v_bfe_u32 v95, v99, 16, 1
	v_add3_u32 v93, v98, v93, 0x7fff
	v_cmp_o_f32_e64 s68, v98, v98
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s66
	v_cndmask_b16 v92.h, 0x7fff, v94.h, s67
	v_bfe_u32 v94, v100, 16, 1
	v_bfe_u32 v96, v101, 16, 1
	v_add3_u32 v95, v99, v95, 0x7fff
	v_cmp_o_f32_e64 s66, v99, v99
	v_cndmask_b16 v93.l, 0x7fff, v93.h, s68
	v_add3_u32 v94, v100, v94, 0x7fff
	v_cmp_o_f32_e64 s67, v100, v100
	v_add3_u32 v96, v101, v96, 0x7fff
	v_cmp_o_f32_e64 s68, v101, v101
	v_cndmask_b16 v93.h, 0x7fff, v95.h, s66
	v_bfe_u32 v95, v102, 16, 1
	v_bfe_u32 v97, v103, 16, 1
	v_cndmask_b16 v94.l, 0x7fff, v94.h, s67
	v_cndmask_b16 v94.h, 0x7fff, v96.h, s68
	v_bfe_u32 v96, v104, 16, 1
	v_add3_u32 v95, v102, v95, 0x7fff
	v_cmp_o_f32_e64 s66, v102, v102
	v_add3_u32 v97, v103, v97, 0x7fff
	v_cmp_o_f32_e64 s67, v103, v103
	v_bfe_u32 v98, v105, 16, 1
	v_add3_u32 v96, v104, v96, 0x7fff
	v_cmp_o_f32_e64 s68, v104, v104
	v_cndmask_b16 v95.l, 0x7fff, v95.h, s66
	v_cndmask_b16 v95.h, 0x7fff, v97.h, s67
	v_bfe_u32 v97, v106, 16, 1
	v_bfe_u32 v99, v107, 16, 1
	v_add3_u32 v98, v105, v98, 0x7fff
	v_cmp_o_f32_e64 s66, v105, v105
	v_cndmask_b16 v96.l, 0x7fff, v96.h, s68
	v_add3_u32 v97, v106, v97, 0x7fff
	v_cmp_o_f32_e64 s67, v106, v106
	v_add3_u32 v99, v107, v99, 0x7fff
	v_cmp_o_f32_e64 s68, v107, v107
	v_cndmask_b16 v96.h, 0x7fff, v98.h, s66
	v_bfe_u32 v98, v108, 16, 1
	v_bfe_u32 v100, v109, 16, 1
	v_cndmask_b16 v97.l, 0x7fff, v97.h, s67
	v_cndmask_b16 v97.h, 0x7fff, v99.h, s68
	v_bfe_u32 v99, v110, 16, 1
	v_add3_u32 v98, v108, v98, 0x7fff
	v_cmp_o_f32_e64 s66, v108, v108
	v_add3_u32 v100, v109, v100, 0x7fff
	v_cmp_o_f32_e64 s67, v109, v109
	v_bfe_u32 v101, v111, 16, 1
	v_add3_u32 v99, v110, v99, 0x7fff
	v_cmp_o_f32_e64 s68, v110, v110
	v_cndmask_b16 v98.l, 0x7fff, v98.h, s66
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s67
	v_bfe_u32 v100, v112, 16, 1
	v_bfe_u32 v102, v113, 16, 1
	v_add3_u32 v101, v111, v101, 0x7fff
	v_cmp_o_f32_e64 s66, v111, v111
	v_cndmask_b16 v99.l, 0x7fff, v99.h, s68
	v_add3_u32 v100, v112, v100, 0x7fff
	v_cmp_o_f32_e64 s67, v112, v112
	v_add3_u32 v102, v113, v102, 0x7fff
	v_cmp_o_f32_e64 s68, v113, v113
	v_cndmask_b16 v99.h, 0x7fff, v101.h, s66
	v_bfe_u32 v101, v114, 16, 1
	v_bfe_u32 v103, v115, 16, 1
	v_cndmask_b16 v100.l, 0x7fff, v100.h, s67
	v_cndmask_b16 v100.h, 0x7fff, v102.h, s68
	v_bfe_u32 v102, v116, 16, 1
	v_add3_u32 v101, v114, v101, 0x7fff
	v_cmp_o_f32_e64 s66, v114, v114
	v_add3_u32 v103, v115, v103, 0x7fff
	v_cmp_o_f32_e64 s67, v115, v115
	v_bfe_u32 v104, v117, 16, 1
	v_add3_u32 v102, v116, v102, 0x7fff
	v_cmp_o_f32_e64 s68, v116, v116
	v_cndmask_b16 v101.l, 0x7fff, v101.h, s66
	v_cndmask_b16 v101.h, 0x7fff, v103.h, s67
	v_bfe_u32 v103, v118, 16, 1
	v_bfe_u32 v105, v119, 16, 1
	v_add3_u32 v104, v117, v104, 0x7fff
	v_cmp_o_f32_e64 s66, v117, v117
	v_cndmask_b16 v102.l, 0x7fff, v102.h, s68
	v_add3_u32 v103, v118, v103, 0x7fff
	v_cmp_o_f32_e64 s67, v118, v118
	v_add3_u32 v105, v119, v105, 0x7fff
	v_cmp_o_f32_e64 s68, v119, v119
	v_cndmask_b16 v102.h, 0x7fff, v104.h, s66
	v_bfe_u32 v104, v120, 16, 1
	v_bfe_u32 v106, v121, 16, 1
	v_cndmask_b16 v103.l, 0x7fff, v103.h, s67
	v_cndmask_b16 v103.h, 0x7fff, v105.h, s68
	v_bfe_u32 v105, v122, 16, 1
	v_add3_u32 v104, v120, v104, 0x7fff
	v_cmp_o_f32_e64 s66, v120, v120
	v_add3_u32 v106, v121, v106, 0x7fff
	v_cmp_o_f32_e64 s67, v121, v121
	v_bfe_u32 v107, v123, 16, 1
	v_add3_u32 v105, v122, v105, 0x7fff
	v_cmp_o_f32_e64 s68, v122, v122
	v_cndmask_b16 v104.l, 0x7fff, v104.h, s66
	v_cndmask_b16 v104.h, 0x7fff, v106.h, s67
	v_bfe_u32 v106, v124, 16, 1
	v_bfe_u32 v108, v125, 16, 1
	v_add3_u32 v107, v123, v107, 0x7fff
	v_cmp_o_f32_e64 s66, v123, v123
	v_cndmask_b16 v105.l, 0x7fff, v105.h, s68
	v_add3_u32 v106, v124, v106, 0x7fff
	v_cmp_o_f32_e64 s67, v124, v124
	v_add3_u32 v108, v125, v108, 0x7fff
	v_cmp_o_f32_e64 s68, v125, v125
	v_cndmask_b16 v105.h, 0x7fff, v107.h, s66
	v_bfe_u32 v107, v126, 16, 1
	v_bfe_u32 v109, v127, 16, 1
	v_cndmask_b16 v106.l, 0x7fff, v106.h, s67
	v_cndmask_b16 v106.h, 0x7fff, v108.h, s68
	v_bfe_u32 v108, v128, 16, 1
	v_add3_u32 v107, v126, v107, 0x7fff
	v_cmp_o_f32_e64 s66, v126, v126
	v_add3_u32 v109, v127, v109, 0x7fff
	v_cmp_o_f32_e64 s67, v127, v127
	v_bfe_u32 v110, v129, 16, 1
	v_add3_u32 v108, v128, v108, 0x7fff
	v_cmp_o_f32_e64 s68, v128, v128
	v_cndmask_b16 v107.l, 0x7fff, v107.h, s66
	v_cndmask_b16 v107.h, 0x7fff, v109.h, s67
	v_bfe_u32 v109, v130, 16, 1
	v_bfe_u32 v111, v131, 16, 1
	v_add3_u32 v110, v129, v110, 0x7fff
	v_cmp_o_f32_e64 s66, v129, v129
	v_cndmask_b16 v108.l, 0x7fff, v108.h, s68
	v_add3_u32 v109, v130, v109, 0x7fff
	v_cmp_o_f32_e64 s67, v130, v130
	v_add3_u32 v111, v131, v111, 0x7fff
	v_cmp_o_f32_e64 s68, v131, v131
	v_cndmask_b16 v108.h, 0x7fff, v110.h, s66
	v_bfe_u32 v110, v87, 16, 1
	v_bfe_u32 v112, v86, 16, 1
	v_cndmask_b16 v109.l, 0x7fff, v109.h, s67
	v_cndmask_b16 v109.h, 0x7fff, v111.h, s68
	v_bfe_u32 v111, v85, 16, 1
	v_add3_u32 v110, v87, v110, 0x7fff
	v_cmp_o_f32_e64 s66, v87, v87
	v_add3_u32 v87, v86, v112, 0x7fff
	v_cmp_o_f32_e64 s67, v86, v86
	v_add3_u32 v86, v85, v111, 0x7fff
	v_cmp_o_f32_e64 s68, v85, v85
	v_cndmask_b16 v85.l, 0x7fff, v110.h, s66
	v_bfe_u32 v110, v84, 16, 1
	v_cndmask_b16 v85.h, 0x7fff, v87.h, s67
	v_bfe_u32 v87, v83, 16, 1
	v_bfe_u32 v111, v82, 16, 1
	v_cmp_o_f32_e64 s66, v84, v84
	v_add3_u32 v110, v84, v110, 0x7fff
	v_cmp_o_f32_e64 s67, v83, v83
	v_add3_u32 v84, v83, v87, 0x7fff
	v_add3_u32 v83, v82, v111, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v86.h, s68
	v_cmp_o_f32_e64 s68, v82, v82
	v_bfe_u32 v82, v81, 16, 1
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s67
	v_bfe_u32 v84, v80, 16, 1
	v_cndmask_b16 v86.h, 0x7fff, v110.h, s66
	v_bfe_u32 v87, v79, 16, 1
	v_add3_u32 v82, v81, v82, 0x7fff
	v_cmp_o_f32_e64 s66, v81, v81
	v_add3_u32 v81, v80, v84, 0x7fff
	v_cmp_o_f32_e64 s67, v80, v80
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s68
	v_add3_u32 v80, v79, v87, 0x7fff
	v_cmp_o_f32_e64 s68, v79, v79
	v_cndmask_b16 v79.l, 0x7fff, v82.h, s66
	v_bfe_u32 v82, v78, 16, 1
	v_cndmask_b16 v79.h, 0x7fff, v81.h, s67
	v_bfe_u32 v81, v77, 16, 1
	v_bfe_u32 v84, v76, 16, 1
	v_cmp_o_f32_e64 s66, v78, v78
	v_add3_u32 v82, v78, v82, 0x7fff
	v_cmp_o_f32_e64 s67, v77, v77
	v_add3_u32 v78, v77, v81, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s68
	v_add3_u32 v77, v76, v84, 0x7fff
	v_cmp_o_f32_e64 s68, v76, v76
	v_bfe_u32 v76, v75, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v78.h, s67
	v_bfe_u32 v78, v74, 16, 1
	v_cndmask_b16 v80.h, 0x7fff, v82.h, s66
	v_bfe_u32 v81, v73, 16, 1
	v_add3_u32 v76, v75, v76, 0x7fff
	v_cmp_o_f32_e64 s66, v75, v75
	v_add3_u32 v75, v74, v78, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s68
	v_cmp_o_f32_e64 s67, v74, v74
	v_add3_u32 v74, v73, v81, 0x7fff
	v_cmp_o_f32_e64 s68, v73, v73
	v_bfe_u32 v73, v72, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v76.h, s66
	v_bfe_u32 v76, v71, 16, 1
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s67
	v_cmp_o_f32_e64 s66, v72, v72
	v_add3_u32 v73, v72, v73, 0x7fff
	v_bfe_u32 v72, v70, 16, 1
	v_add3_u32 v76, v71, v76, 0x7fff
	v_bfe_u32 v78, v69, 16, 1
	v_cmp_o_f32_e64 s67, v71, v71
	v_bfe_u32 v71, v68, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s68
	v_add3_u32 v72, v70, v72, 0x7fff
	v_cmp_o_f32_e64 s68, v70, v70
	v_add3_u32 v70, v69, v78, 0x7fff
	v_cmp_o_f32_e64 s69, v69, v69
	v_add3_u32 v69, v68, v71, 0x7fff
	v_cmp_o_f32_e64 s70, v68, v68
	v_cndmask_b16 v74.h, 0x7fff, v73.h, s66
	v_cndmask_b16 v68.l, 0x7fff, v76.h, s67
	v_cndmask_b16 v68.h, 0x7fff, v72.h, s68
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s69
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s70
	v_cndmask_b32_e64 v71, v88, v91, s74
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v66, v2, v66, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v70, v91, v88, s74
	v_cndmask_b32_e64 v72, v90, v89, s74
	v_cndmask_b32_e64 v73, v89, v90, s74
	v_cndmask_b32_e64 v78, v92, v94, s74
	v_cndmask_b32_e64 v81, v95, v93, s74
	v_cndmask_b32_e64 v82, v93, v95, s74
	v_cndmask_b32_e64 v84, v98, v96, s74
	v_cndmask_b32_e64 v87, v96, v98, s74
	v_cndmask_b32_e64 v88, v99, v97, s74
	v_cndmask_b32_e64 v89, v97, v99, s74
	v_cndmask_b32_e64 v90, v102, v100, s74
	v_cndmask_b32_e64 v91, v100, v102, s74
	v_cndmask_b32_e64 v93, v101, v103, s74
	v_cndmask_b32_e64 v95, v104, v106, s74
	v_cndmask_b32_e64 v97, v105, v107, s74
	v_cndmask_b32_e64 v98, v85, v108, s74
	v_cndmask_b32_e64 v85, v108, v85, s74
	v_cndmask_b32_e64 v99, v86, v109, s74
	v_cndmask_b32_e64 v86, v109, v86, s74
	v_cndmask_b32_e64 v100, v80, v83, s74
	v_cndmask_b32_e64 v80, v83, v80, s74
	v_cndmask_b32_e64 v83, v77, v79, s74
	v_cndmask_b32_e64 v77, v79, v77, s74
	v_cndmask_b32_e64 v79, v68, v75, s74
	v_cndmask_b32_e64 v68, v75, v68, s74
	v_cndmask_b32_e64 v75, v69, v74, s74
	v_cndmask_b32_e64 v69, v74, v69, s74
	v_permlanex16_b32 v71, v71, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v67, v2, v67, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s65
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v65, v2, v65, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s64
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v64, v2, v64, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_cndmask_b32_e64 v76, v94, v92, s74
	v_cndmask_b32_e64 v92, v103, v101, s74
	v_cndmask_b32_e64 v94, v106, v104, s74
	v_cndmask_b32_e64 v96, v107, v105, s74
	v_permlanex16_b32 v73, v73, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v74, v78, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v82, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v82, v87, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v87, v89, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v89, v91, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v91, v93, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v93, v95, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v95, v97, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v85, v85, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v86, v86, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v80, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v77, v77, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v68, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v69, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v97, v71, v70, v9
	v_perm_b32 v70, v71, v70, v10
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s63
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v63, v2, v63, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s62
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v71, v73, v72, v9
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v64, 0x80000000, v64, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s61
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v72, v73, v72, v10
	v_perm_b32 v73, v74, v76, v9
	v_perm_b32 v74, v74, v76, v10
	v_perm_b32 v76, v78, v81, v9
	v_perm_b32 v78, v78, v81, v10
	v_perm_b32 v81, v82, v84, v9
	v_perm_b32 v82, v82, v84, v10
	v_perm_b32 v84, v87, v88, v9
	v_perm_b32 v87, v87, v88, v10
	v_perm_b32 v88, v89, v90, v9
	v_perm_b32 v89, v89, v90, v10
	v_perm_b32 v90, v91, v92, v9
	v_perm_b32 v91, v91, v92, v10
	v_perm_b32 v92, v93, v94, v9
	v_perm_b32 v93, v93, v94, v10
	v_perm_b32 v94, v95, v96, v9
	v_perm_b32 v95, v95, v96, v10
	v_perm_b32 v96, v85, v98, v9
	v_perm_b32 v85, v85, v98, v10
	v_perm_b32 v98, v86, v99, v9
	v_perm_b32 v86, v86, v99, v10
	v_perm_b32 v99, v80, v100, v9
	v_perm_b32 v80, v80, v100, v10
	v_perm_b32 v100, v77, v83, v9
	v_perm_b32 v77, v77, v83, v10
	v_perm_b32 v83, v68, v79, v9
	v_perm_b32 v68, v68, v79, v10
	v_perm_b32 v9, v69, v75, v9
	v_perm_b32 v10, v69, v75, v10
	v_mov_b16_e32 v0.l, v70.h
	v_mov_b16_e32 v69.l, v97.h
	v_mov_b16_e32 v69.h, v0.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v62, v2, v62, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s1
	s_mov_b32 s74, 0x7ffffffe
	v_add_lshl_u32 v61, v2, v61, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s60
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v75.h, v0.h
	v_mov_b16_e32 v79.h, v0.h
	v_mov_b16_e32 v101.h, v0.h
	v_mov_b16_e32 v102.h, v0.h
	v_mov_b16_e32 v103.h, v0.h
	v_mov_b16_e32 v104.h, v0.h
	v_mov_b16_e32 v105.h, v0.h
	v_mov_b16_e32 v106.h, v0.h
	v_mov_b16_e32 v107.h, v0.h
	v_mov_b16_e32 v108.h, v0.h
	v_mov_b16_e32 v109.h, v0.h
	v_mov_b16_e32 v110.h, v0.h
	v_mov_b16_e32 v111.h, v0.h
	v_mov_b16_e32 v112.h, v0.h
	v_mov_b16_e32 v113.h, v0.h
	v_mov_b16_e32 v114.h, v0.h
	v_mov_b16_e32 v115.h, v0.h
	v_mov_b16_e32 v116.h, v0.h
	v_mov_b16_e32 v117.h, v0.h
	v_mov_b16_e32 v118.h, v0.h
	v_mov_b16_e32 v119.h, v0.h
	v_mov_b16_e32 v120.h, v0.h
	v_mov_b16_e32 v121.h, v0.h
	v_mov_b16_e32 v122.h, v0.h
	v_mov_b16_e32 v123.h, v0.h
	v_mov_b16_e32 v124.h, v0.h
	v_mov_b16_e32 v125.h, v0.h
	v_mov_b16_e32 v126.h, v0.h
	v_mov_b16_e32 v127.h, v0.h
	v_mov_b16_e64 v128.h, v0.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x4
	buffer_store_b16 v97, v66, s[72:75], 0 offen
	buffer_store_b16 v69, v67, s[72:75], 0 offen
	buffer_store_b16 v70, v65, s[72:75], 0 offen
	buffer_store_b16 v0, v64, s[72:75], 0 offen
	buffer_store_b16 v71, v63, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v60, 1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s59
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v59, v2, v59, 1
	v_cndmask_b32_e64 v61, 0x80000000, v61, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s58
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v75.l, v72.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s57
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v79.l, v71.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v58, v2, v58, 1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	v_add_lshl_u32 v57, v2, v57, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s56
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v79, v62, s[72:75], 0 offen
	buffer_store_b16 v72, v61, s[72:75], 0 offen
	buffer_store_b16 v75, v0, s[72:75], 0 offen
	buffer_store_b16 v73, v59, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v56, 1
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s55
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v55, v2, v55, 1
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s54
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v101.l, v74.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v102.l, v73.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v54, v2, v54, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	v_add_lshl_u32 v53, v2, v53, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s52
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v102, v58, s[72:75], 0 offen
	buffer_store_b16 v74, v57, s[72:75], 0 offen
	buffer_store_b16 v101, v0, s[72:75], 0 offen
	buffer_store_b16 v76, v55, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v52, 1
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s51
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v51, v2, v51, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s50
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v78.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s49
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v104.l, v76.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v50, v2, v50, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_add_lshl_u32 v49, v2, v49, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s48
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v104, v54, s[72:75], 0 offen
	buffer_store_b16 v78, v53, s[72:75], 0 offen
	buffer_store_b16 v103, v0, s[72:75], 0 offen
	buffer_store_b16 v81, v51, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v48, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s47
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v47, v2, v47, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v105.l, v82.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v106.l, v81.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v46, v2, v46, 1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s1
	v_add_lshl_u32 v45, v2, v45, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s44
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v106, v50, s[72:75], 0 offen
	buffer_store_b16 v82, v49, s[72:75], 0 offen
	buffer_store_b16 v105, v0, s[72:75], 0 offen
	buffer_store_b16 v84, v47, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v44, 1
	v_cndmask_b32_e64 v46, 0x80000000, v46, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s43
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v43, v2, v43, 1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v107.l, v87.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v108.l, v84.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v42, v2, v42, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	v_add_lshl_u32 v41, v2, v41, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s40
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v108, v46, s[72:75], 0 offen
	buffer_store_b16 v87, v45, s[72:75], 0 offen
	buffer_store_b16 v107, v0, s[72:75], 0 offen
	buffer_store_b16 v88, v43, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v40, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s39
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v39, v2, v39, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v109.l, v89.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s37
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v110.l, v88.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v38, v2, v38, 1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_add_lshl_u32 v37, v2, v37, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s36
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v110, v42, s[72:75], 0 offen
	buffer_store_b16 v89, v41, s[72:75], 0 offen
	buffer_store_b16 v109, v0, s[72:75], 0 offen
	buffer_store_b16 v90, v39, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v36, 1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v35, v2, v35, 1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v111.l, v91.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v112.l, v90.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v34, v2, v34, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_add_lshl_u32 v33, v2, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s31
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v112, v38, s[72:75], 0 offen
	buffer_store_b16 v91, v37, s[72:75], 0 offen
	buffer_store_b16 v111, v0, s[72:75], 0 offen
	buffer_store_b16 v92, v35, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v32, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s30
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v31, v2, v31, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v113.l, v93.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v114.l, v92.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v30, v2, v30, 1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	v_add_lshl_u32 v29, v2, v29, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s27
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v114, v34, s[72:75], 0 offen
	buffer_store_b16 v93, v33, s[72:75], 0 offen
	buffer_store_b16 v113, v0, s[72:75], 0 offen
	buffer_store_b16 v94, v31, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v28, 1
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s26
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v27, v2, v27, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v115.l, v95.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v116.l, v94.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v26, v2, v26, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v2, v25, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s23
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v116, v30, s[72:75], 0 offen
	buffer_store_b16 v95, v29, s[72:75], 0 offen
	buffer_store_b16 v115, v0, s[72:75], 0 offen
	buffer_store_b16 v96, v27, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v24, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s22
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v23, v2, v23, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v117.l, v85.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v118.l, v96.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v22, v2, v22, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v21, v2, v21, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s19
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v118, v26, s[72:75], 0 offen
	buffer_store_b16 v85, v25, s[72:75], 0 offen
	buffer_store_b16 v117, v0, s[72:75], 0 offen
	buffer_store_b16 v98, v23, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s18
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v119.l, v86.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v120.l, v98.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v2, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_add_lshl_u32 v17, v2, v17, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s11
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v120, v22, s[72:75], 0 offen
	buffer_store_b16 v86, v21, s[72:75], 0 offen
	buffer_store_b16 v119, v0, s[72:75], 0 offen
	buffer_store_b16 v99, v19, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s10
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v15, v2, v15, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v121.l, v80.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v122.l, v99.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v14, v2, v14, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_add_lshl_u32 v13, v2, v13, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v122, v18, s[72:75], 0 offen
	buffer_store_b16 v80, v17, s[72:75], 0 offen
	buffer_store_b16 v121, v0, s[72:75], 0 offen
	buffer_store_b16 v100, v15, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v12, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s6
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v11, v2, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v123.l, v77.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v124.l, v100.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	s_clause 0x3
	buffer_store_b16 v124, v14, s[72:75], 0 offen
	buffer_store_b16 v77, v13, s[72:75], 0 offen
	buffer_store_b16 v123, v0, s[72:75], 0 offen
	buffer_store_b16 v83, v11, s[72:75], 0 offen
	v_add_lshl_u32 v0, v2, v5, 1
	v_add_lshl_u32 v5, v2, v6, 1
	v_add_lshl_u32 v8, v2, v8, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v2, v4, 1
	v_add_lshl_u32 v7, v2, v7, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s17
	s_and_b32 s1, s0, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v3, v2, v3, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s15
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v125.l, v68.h
	v_mov_b16_e32 v126.l, v83.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s14
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e64 v128.l, v9.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v127.l, v10.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v126, v8, s[72:75], 0 offen
	buffer_store_b16 v68, v7, s[72:75], 0 offen
	buffer_store_b16 v125, v0, s[72:75], 0 offen
	buffer_store_b16 v9, v5, s[72:75], 0 offen
	buffer_store_b16 v128, v2, s[72:75], 0 offen
	buffer_store_b16 v10, v3, s[72:75], 0 offen
	buffer_store_b16 v127, v1, s[72:75], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp78:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 708
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.private_seg_size, 708
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 41404
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 708
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1
    .private_segment_fixed_size: 708
    .sgpr_count:     107
    .sgpr_spill_count: 22
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d192_dv128_shaperuntime_bm64_bn32_w4_s2_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 176
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
