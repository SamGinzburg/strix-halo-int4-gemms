	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s27, s[0:1], 0x64
	s_load_b32 s33, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v40, 3, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s7, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s7
	s_sub_i32 s5, 0, s7
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s27
	s_mul_hi_u32 s4, s6, s12
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s8, s4, s7
	s_sub_i32 s6, s6, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s8, s4
	s_load_b64 s[8:9], s[0:1], 0x0
	s_xor_b32 s4, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[26:27], null, s33, v40, v[1:2]
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s13, s4, s5
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s14, s33, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s13, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s13, s13, s27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s6, v40
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s6, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s26, s2, s13
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s5, s33, v[26:27]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v17
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s4
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	buffer_load_b32 v3, v1, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s8, s27, 0x7f
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s9, s8, s27
	s_abs_i32 s8, s8
	s_ashr_i32 s9, s9, 31
	s_mul_hi_u32 s10, s8, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s11, s10, s7
	s_add_i32 s12, s10, 1
	s_sub_i32 s8, s8, s11
	v_lshrrev_b32_e32 v42, 3, v1
	s_sub_i32 s2, s8, s7
	s_cmp_ge_u32 s8, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, v36, v4
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s2, s2, s8
	s_add_i32 s8, s10, 1
	s_cmp_ge_u32 s2, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v43, 0, v4
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s26, s2
	s_lshl_b32 s34, s7, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s7, s2, s34
	s_mov_b32 s2, 0
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s35, s7, 0x800
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v9, 3, v1
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow51
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x40
	s_load_b32 s15, s[0:1], 0x60
	v_and_b32_e32 v39, 31, v0
	v_and_b32_e32 v41, 15, v0
	v_and_b32_e32 v37, 0x70, v0
	v_lshlrev_b32_e32 v38, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[16:23], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s6, v41
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s5, v41, 1
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_dual_mov_b32 v84, 0xff800000 :: v_dual_lshlrev_b32 v19, 1, v2
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_dual_mov_b32 v11, 0x5410 :: v_dual_and_b32 v2, 16, v0
	v_lshlrev_b32_e32 v24, 4, v1
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x68
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshlrev_b32_e32 v12, 7, v0
	s_lshr_b32 s0, s0, 29
	v_lshrrev_b32_e32 v7, 5, v1
	s_add_i32 s1, s3, s0
	v_cmp_eq_u32_e64 s0, 0, v2
	v_xor_b32_e32 v20, v36, v42
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s21, 0xffff
	s_mov_b32 s28, s20
	v_bfe_i32 v13, v0, 0, 1
	buffer_load_u16 v18, v3, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v3, v0, 4, 1
	v_mov_b32_e32 v9, 0
	v_bfe_i32 v14, v0, 2, 1
	v_mov_b32_e32 v1, 0
	v_lshrrev_b32_e32 v8, 2, v0
	v_and_b32_e32 v30, 0x84, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v5, 12, v0
	v_and_b32_e32 v34, 0x700, v12
	v_mov_b32_e32 v12, v9
	v_dual_mov_b32 v21, 0x7632 :: v_dual_and_b32 v10, 28, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v2, v1 :: v_dual_lshlrev_b32 v25, 1, v5
	v_cndmask_b32_e64 v33, 0x1054, v11, s0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v6, 4, v37
	v_and_b32_e32 v23, 0x160, v38
	v_xor_b32_e32 v32, 0x210, v20
	v_and_b32_e32 v35, 0x90, v13
	v_and_b32_e32 v59, 0x90, v14
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v50, 0, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v20, v41, 5, v25
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v4, v0, 4, 1
	v_lshrrev_b32_e32 v22, 2, v37
	v_lshl_or_b32 v28, v39, 2, v7
	v_or_b32_e32 v29, v8, v38
	v_lshl_or_b32 v31, v39, 5, v10
	v_lshl_or_b32 v33, v33, 8, v33
	.loc	1 903 13                        ; attention.py:903:13
	v_sub_nc_u32_e32 v47, 0x400, v6
	v_lshl_or_b32 v49, s3, 10, v6
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v6, v1
	v_or3_b32 v59, v23, v24, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 8, v20
	v_xor_b32_e32 v24, 16, v20
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s48, s3, 11
	v_dual_mov_b32 v58, v1 :: v_dual_add_nc_u32 v63, 0, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 24, v20
	.loc	1 903 13                        ; attention.py:903:13
	v_sub_nc_u32_e32 v46, 0x800, v4
	v_or_b32_e32 v48, s48, v4
	v_mov_b32_e32 v11, v9
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v34, 0, v34
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v60, 0, v28
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v7, v1
	v_xor_b32_e32 v25, 0x84, v28
	v_and_or_b32 v29, 0x63, v29, v30
	v_xor_b32_e32 v30, 4, v31
	v_xor_b32_e32 v22, v35, v22
	v_and_b32_e32 v28, 0x540054, v33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v74, 0, v23
	v_cndmask_b32_e64 v21, 0x3276, v21, s0
	v_add_nc_u32_e32 v75, 0, v24
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v76, 0, v20
	v_add_nc_u32_e32 v62, 0, v32
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v61, 0, v31
	v_xor_b32_e32 v67, 8, v31
	v_xor_b32_e32 v68, 12, v31
	v_xor_b32_e32 v69, 16, v31
	v_xor_b32_e32 v70, 20, v31
	v_xor_b32_e32 v71, 24, v31
	v_xor_b32_e32 v72, 28, v31
	v_xor_b32_e32 v77, 4, v29
	v_add_nc_u32_e32 v66, 0, v30
	v_add_nc_u32_e32 v73, v34, v22
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s0, s8, 0x3fb8aa3b
	v_lshl_or_b32 v20, v28, 4, v28
	v_lshl_or_b32 v21, v21, 8, v21
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	v_mul_lo_u32 v17, v17, s11
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	v_and_b32_e32 v21, 0x760076, v21
	v_xor_b32_e32 v78, 16, v59
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s2, s10, s2
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s1, s9, s1
	v_dual_mov_b32 v10, v9 :: v_dual_lshlrev_b32 v27, 2, v41
	v_lshl_or_b32 v21, v21, 4, v21
	s_add_i32 s2, s2, s1
	.loc	1 903 13                        ; attention.py:903:13
	v_sub_nc_u32_e32 v44, 0x800, v40
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_mov_b32 v16, v9
	v_sub_nc_u32_e32 v45, 0x800, v19
	v_or_b32_e32 v51, 2, v48
	v_or_b32_e32 v52, 4, v48
	v_or_b32_e32 v53, 6, v48
	v_or_b32_e32 v54, 8, v48
	v_or_b32_e32 v55, 10, v48
	v_or_b32_e32 v56, 12, v48
	v_or_b32_e32 v57, 14, v48
	v_dual_mov_b32 v83, 0xff800000 :: v_dual_add_nc_u32 v64, 0, v25
	v_add_nc_u32_e32 v67, 0, v67
	v_add_nc_u32_e32 v68, 0, v68
	v_add_nc_u32_e32 v69, 0, v69
	v_add_nc_u32_e32 v70, 0, v70
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v77, 0, v77
	v_add_nc_u32_e32 v78, 0, v78
	v_and_b32_e32 v79, 0x5040504, v20
	v_add3_u32 v80, s2, v19, v17
	v_and_b32_e32 v81, 0x7060706, v21
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s49, s3, 7
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b64 s[20:21], s[38:39]
	s_and_b32 s45, s19, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s22
	s_mov_b32 s44, s18
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s41, s23
	s_mov_b32 s47, s31
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s15, v27
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	v_add_nc_u32_e32 v65, 0, v29
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[28:29], v63
	ds_load_b64 v[30:31], v74
	ds_load_b64 v[32:33], v75
	ds_load_b64 v[34:35], v76
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v82, s0, v18
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v93.h, v94.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v94, v17
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v17.h, 0xff, v25.l
	v_and_b16 v17.l, 0xff, v25.h
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s1, 0, v17.h
	v_cmp_ne_u16_e64 s0, 0, v17.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v89.h, v90.l
	v_mov_b16_e32 v90.l, v86.l
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s1, s2, s1
	s_and_b32 s0, s2, s0
	v_cndmask_b32_e64 v25, 0, 1, s1
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v90.h, v91.l
	v_mov_b16_e32 v91.h, v92.l
	v_mov_b16_e32 v92.l, v86.l
	v_mov_b16_e32 v92.h, v93.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v17, 0, 1, s0
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v21, v82, v21
	v_mul_f32_e32 v23, v82, v23
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v87.h, v88.l
	v_mov_b16_e32 v88.l, v86.l
	v_mov_b16_e32 v88.h, v89.l
	v_mov_b16_e32 v89.l, v86.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v96, v82, v19
	v_mul_f32_e32 v95, v82, v18
	.loc	1 962 25                        ; attention.py:962:25
	v_mov_b16_e32 v18.l, v25.l
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v93.l, v86.l
	.loc	1 962 25                        ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v60, v17
	ds_store_b8 v64, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v22, v82, v22 :: v_dual_mul_f32 v23, v23, v92
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v92, v83, v83
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v24, v82, v24 :: v_dual_mul_f32 v21, v21, v90
	v_mul_f32_e32 v25, v82, v20
	.loc	1 962 25                        ; attention.py:962:25
	ds_load_u8_d16 v17, v65
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v77
	ds_load_u8_d16 v18, v65 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v77 offset:8
	ds_load_u8_d16 v19, v65 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v77 offset:16
	ds_load_u8_d16 v20, v65 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v20, v77 offset:24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v86.h, v87.l
	v_mov_b16_e32 v87.l, v86.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v24, v24, v93
	v_dual_mul_f32 v25, v25, v89 :: v_dual_mul_f32 v88, v96, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v82, v94 :: v_dual_mul_f32 v87, v95, v87
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s2, s34, 1
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v91.l, v86.l
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_lt_i32_e64 s13, s2, v47
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v94, v94, v86
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v19.l, 1, v19.l
	v_cmp_eq_u16_e64 s5, 1, v17.l
	v_cmp_eq_u16_e64 s7, 1, v17.h
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v17, s2, v49
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v19.h, 1, v19.h
	v_cmp_eq_u16_e64 s6, 1, v18.l
	v_cmp_eq_u16_e64 s9, 1, v18.h
	v_and_b16 v20.l, 1, v20.l
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[17:18], null, v17, s15, v[27:28]
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s8, 1, v19.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v22, v22, v91
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s11, 1, v19.h
	v_cmp_eq_u16_e64 s10, 1, v20.l
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s2, vcc_lo, s13
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s12, 1, v20.h
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s2, s34, 4
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v89, 0xff800000, v94, s5
	v_cndmask_b32_e64 v87, 0xff800000, v87, s7
	v_cndmask_b32_e64 v90, 0xff800000, v21, s8
	v_cndmask_b32_e64 v88, 0xff800000, v88, s6
	v_cndmask_b32_e64 v19, 0xff800000, v22, s11
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s2, s2, s49
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s9
	v_cndmask_b32_e64 v22, 0xff800000, v23, s10
	v_cndmask_b32_e64 v23, 0xff800000, v24, s12
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s2, s2, s15
	.loc	1 967 26                        ; attention.py:967:26
	s_barrier
	ds_store_b32 v61, v89
	ds_store_b32 v66, v87
	ds_store_b32 v67, v88
	ds_store_b32 v68, v25
	ds_store_b32 v69, v90
	ds_store_b32 v70, v19
	ds_store_b32 v71, v22
	ds_store_b32 v72, v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v91, v17, s[44:47], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v17, s2, v27, 1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v105, v89, v87, v88
	v_max3_f32 v106, v25, v90, v19
.Ltmp4:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v84
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v108.h, v86.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v111.h, v86.l
	v_mov_b16_e32 v109.h, v86.l
	v_mov_b16_e32 v113.h, v86.l
	v_mov_b16_e32 v115.h, v86.l
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[20:21], v17, s[36:39], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v17, v62
	ds_load_b32 v18, v50
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v85, v85, v85
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v114.h, v86.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v95.l, v86.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v24.h, v86.l
	v_mov_b16_e32 v93.h, v86.l
	v_mov_b16_e32 v94.h, v86.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v96.h, v86.l
	v_mov_b16_e32 v103.h, v86.l
	v_mov_b16_e32 v97.h, v86.l
	v_mov_b16_e32 v98.h, v86.l
	v_mov_b16_e32 v99.h, v86.l
	v_mov_b16_e32 v100.h, v86.l
	v_mov_b16_e32 v104.h, v86.l
	v_mov_b16_e32 v107.h, v86.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
	.loc	1 962 25                        ; attention.py:962:25
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v101, v17, v17 :: v_dual_max_f32 v102, v18, v18
.Ltmp6:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v101, v102, v101
	v_max_f32_e32 v102, v22, v23
	v_max3_f32 v102, v105, v106, v102
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v106.h, v86.l
	v_mov_b16_e32 v105.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v112, v102, s50, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v102, v84, v102, v112
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v112, 0, v59
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v110, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v110, v110 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v110, v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v101, v101, v110
.Ltmp13:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v87, v87, v102
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v110, v84, v102
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v116, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v87, v87
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v116, v116 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v116, v116, v116
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp18:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v87, 0, v87, s7
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v84, 0, v110, s2
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v88, v88, v102
	v_sub_f32_e32 v89, v89, v102
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v101, v101, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v19, v19, v102 :: v_dual_mul_f32 v8, v8, v84
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v108.l, v87.h
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v25, v25, v102 :: v_dual_mul_f32 v4, v4, v84
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v110, v101
.Ltmp22:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v90, v90, v102 :: v_dual_mul_f32 v5, v5, v84
	v_dual_sub_f32 v22, v22, v102 :: v_dual_mul_f32 v7, v7, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v110, v110 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v23, v23, v102 :: v_dual_mul_f32 v6, v6, v84
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v19, v19
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v1, v1, v84 :: v_dual_max_f32 v110, v110, v110
	v_mul_f32_e32 v2, v2, v84
	v_mul_f32_e32 v3, v3, v84
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v101, v101, v110 :: v_dual_and_b32 v84, 1, v108
.Ltmp26:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v25, v25
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v19, 0, v19, s11
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v90, v90
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v85, v85, v101
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v23, v23
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v88, 0, v88, s6
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v111.l, v19.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v18, v18, v85
	v_sub_f32_e32 v17, v17, v85
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v89, 0, v89, s5
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v106.l, v88.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v25, 0, v25, s9
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v17, v17
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v109.l, v89.h
	v_cmp_o_f32_e64 s7, v88, v88
	v_mov_b16_e32 v105.l, v25.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v90, 0, v90, s8
	v_cndmask_b32_e64 v22, 0, v22, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v89, v89
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v23, 0, v23, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v84, v87, v84, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.l, v90.h
	v_mov_b16_e32 v115.l, v22.h
	v_mov_b16_e32 v114.l, v23.h
	v_cmp_o_f32_e64 s2, v87, v87
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v17, v18, v17 :: v_dual_and_b32 v18, 1, v106
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v106, 1, v111
	v_cmp_o_f32_e64 s8, v19, v19
	v_cmp_o_f32_e64 s9, v90, v90
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v111, v17
.Ltmp30:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v18, v88, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cmp_o_f32_e64 s6, v25, v25
	v_cmp_o_f32_e64 s10, v23, v23
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v111, v111 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v105, 1, v105
	v_cndmask_b16 v84.h, 0x7fff, v84.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v88, v17, v111
.Ltmp34:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v108, 1, v109
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v17, v92, v101 :: v_dual_and_b32 v110, 1, v114
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v19, v19, v106, 0x7fff
	v_add3_u32 v25, v25, v105, 0x7fff
	v_add3_u32 v89, v89, v108, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v18.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v105.h, 0x7fff, v19.h, s8
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v84.l, 0x7fff, v89.h, s5
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v89, v88
	v_mov_b32_dpp v89, v89 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v101, v88, v89
.Ltmp37:
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v88, 8, v91
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.l, v91.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v19.l, 4, v91.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v89, 24, v91
	.loc	1 987 29                        ; attention.py:987:29
	v_bfe_u32 v92, v91, 8, 4
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v19.h, v88.l, 15
	v_and_b16 v18.h, v91.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v24.l, v19.l, 15
	v_lshrrev_b16 v19.l, 4, v88.l
	.loc	1 987 29                        ; attention.py:987:29
	v_bfe_u32 v106, v91, 16, 4
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v94.l, 4, v89.l
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v86.h, v20.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v109, 1, v113
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v95.h, v21.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v113, 1, v115
	.loc	1 987 29                        ; attention.py:987:29
	v_bfe_u32 v108, v91, 24, 4
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v93.l, v19.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v87, v90, v109, 0x7fff
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v90, 15, v91
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v22, v22, v113, 0x7fff
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v109, 0xffff0000, v20
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v20.l, v89.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v105.l, 0x7fff, v87.h, s9
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v87, v83, v17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v23, v23, v110, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s0
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v88, -16, v90
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s0, 7, v18.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v89, -16, v92
	v_or_b32_e32 v110, -16, v106
	.loc	1 988 30 is_stmt 1              ; attention.py:988:30
	v_bfe_u32 v91, v91, 20, 4
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v111, -16, v108
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v88, v90, v88, s0
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s0, 7, v19.h
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v24, 0, v24, s13
	v_cndmask_b32_e64 v91, 0, v91, s13
	v_cndmask_b32_e64 v94, 0, v94, s13
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v19, v92, v89, s0
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s0, 7, v18.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v90, -16, v24
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v89, 0, v93, s13
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v92, -16, v91
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v18, v106, v110, s0
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s0, 7, v20.l
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v89
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v93, -16, v94
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v88, v86, v88
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v20, v108, v111, s0
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s0, 7, v24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s10
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v96.l, v88.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v18, v95, v18
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v24, v24, v90, s0
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s0, 7, v91
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v90, -16, v89
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v103.l, v18.h
	v_cmp_o_f32_e64 s2, v18, v18
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v91, v91, v92, s0
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v21, 0xffff0000, v21
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s0, 7, v94
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b32_e64 v89, v89, v90, s1
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v24, v86, v24
	v_cvt_f32_i32_e32 v90, v91
	v_mul_f32_e32 v20, v21, v20
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v92, v94, v93, s0
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v86, 1, v96
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v89, v89
	v_dual_mul_f32 v90, v95, v90 :: v_dual_mul_f32 v19, v109, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v91, v92
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v93, 1, v103
	v_mov_b16_e32 v104.l, v20.h
	v_cmp_o_f32_e64 s0, v88, v88
	v_mov_b16_e32 v98.l, v19.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v21, v21, v91
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v86, v88, v86, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v88, v109, v89 :: v_dual_and_b32 v91, 1, v104
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v92, 1, v98
	v_mov_b16_e32 v97.l, v24.h
	v_cmp_o_f32_e64 s1, v19, v19
	v_mov_b16_e32 v100.l, v90.h
	v_mov_b16_e32 v99.l, v88.h
	v_add3_u32 v19, v19, v92, 0x7fff
	v_mov_b16_e32 v107.l, v21.h
.Ltmp38:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v98, v101 :: v_dual_and_b32 v89, 1, v97
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp39:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v92, 1, v99
	v_add3_u32 v18, v18, v93, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v20, v91, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v86.h, s0
	v_cmp_o_f32_e64 s0, v88, v88
	v_and_b32_e32 v86, 1, v100
	v_add3_u32 v88, v88, v92, 0x7fff
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v98, v98 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v91, 1, v107
	v_cmp_o_f32_e64 s7, v90, v90
	v_cmp_o_f32_e64 s8, v21, v21
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v88.h, s0
	v_add3_u32 v21, v21, v91, 0x7fff
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v83
	v_mov_b32_e32 v83, v17
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v86, v90, v86, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_add3_u32 v24, v24, v89, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v18.h, s2
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v86.h, s7
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s8
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s6
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v97, v87
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v73, v20, v21 offset0:16 offset1:24
	ds_store_2addr_b32 v73, v18, v19 offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[86:89], v112
	ds_load_b128 v[90:93], v78
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v22, v84, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v25, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v105, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v23, s50, 0xfedcba98 op_sel:[1,0]
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v21, 0, v97, s0
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v18, v101, v98
.Ltmp43:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v94, v22, v84, v79
	v_perm_b32 v95, v22, v84, v81
	v_perm_b32 v96, v24, v25, v79
	v_perm_b32 v97, v24, v25, v81
	v_perm_b32 v98, v19, v105, v79
	v_perm_b32 v99, v19, v105, v81
	v_perm_b32 v100, v20, v23, v79
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v18, v58, v21
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v101, v20, v23, v81
	v_mov_b32_e32 v84, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v58, v18
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[86:93], v[94:101], v[1:8]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_9
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s0, s34, s48
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v25, s34, v48, 1
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[17:18], null, s0, s33, v[26:27]
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_lt_i32_e64 s0, s34, v44
	v_cmp_lt_i32_e64 s1, s34, v45
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 s0, s14, s0
	.loc	1 946 25 is_stmt 1              ; attention.py:946:25
	s_and_b32 s2, s4, s1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_lt_i32_e64 s0, s34, v46
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v17, v17, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[86:87], v63
	ds_load_b64 v[88:89], v74
	ds_load_b64 v[90:91], v75
	ds_load_b64 v[92:93], v76
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[28:29], v[9:16] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v87, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v51, s34, 1
	v_mov_b16_e32 v86.l, 0
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[30:31], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[32:33], v[17:24] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v88, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v52, s34, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[34:35], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	buffer_load_u16 v89, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v53, s34, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	buffer_load_u16 v90, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v54, s34, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	buffer_load_u16 v91, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v55, s34, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	buffer_load_u16 v92, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v56, s34, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	buffer_load_u16 v93, v25, s[40:43], 0 offen
	v_add_lshl_u32 v25, v57, s34, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	buffer_load_u16 v94, v25, s[40:43], 0 offen
	v_mov_b16_e32 v25.h, 0
	v_mov_b16_e32 v25.l, v86.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s1, s2
	s_cbranch_execz .LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v25, s34, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v96, 31, v25
	v_add_co_u32 v95, s0, s20, v25
	v_add_co_ci_u32_e64 v96, null, s21, v96, s0
	global_load_d16_hi_b16 v25, v[95:96], off
	s_waitcnt vmcnt(0)
	v_lshrrev_b16 v25.l, 8, v25.h
	s_branch .LBB0_5
.LBB0_8:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v18, v8
	s_branch .LBB0_10
.LBB0_9:                                ; %Flow
	v_mov_b32_e32 v9, v42
.LBB0_10:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v40
	s_mov_b32 s1, 0x76543210
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp45:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v10, 0xff800000, v17, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v12, 0, v18, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s27, s27, s3
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v39
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s15, 2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp49:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_mov_b32 v13, v1
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_add_nc_u32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v17, v3 :: v_dual_max_f32 v10, v10, v11
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v11, 12, v36
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp56:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s26, s27
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v15, v12
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v2, v2, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v3, v3, v17 :: v_dual_max_f32 v14, v14, v14
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v3 :: v_dual_max_f32 v10, v10, v14
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v12, v12, v15
.Ltmp64:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v14, 0, v6 :: v_dual_cndmask_b32 v15, 0, v7
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp68:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_cndmask_b32 v12, 0, v4
	v_dual_mov_b32 v4, v2 :: v_dual_add_f32 v3, v3, v5
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v12 :: v_dual_mov_b32 v17, v3
	v_dual_mov_b32 v18, v14 :: v_dual_add_f32 v1, v1, v11
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v10
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v9
.Ltmp75:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v11, v2
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_add_f32 v15, v15, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v9, v5
.Ltmp80:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v4 :: v_dual_add_f32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v10, v6 :: v_dual_add_f32 v4, v3, v17
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v10, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v2 :: v_dual_add_f32 v8, v8, v20
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v11, v9
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v16, v12
	v_add_f32_e32 v14, v14, v18
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v8 :: v_dual_mov_b32 v17, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v8, v20
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v19, v14
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v12, v8
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_12
; %bb.11:
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp110:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp112:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s24, s4
	s_addc_u32 s5, s25, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_12:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v8, v12
	v_dual_add_f32 v5, v2, v5 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_add_f32 v6, v4, v6 :: v_dual_and_b32 v9, 0xc0, v36
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v8
.Ltmp114:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v2, 32, v38
	v_lshl_add_u32 v8, v37, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v9
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_f32 v18, v14, v18
	v_add_f32_e32 v17, v13, v16
.Ltmp116:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v9, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v9
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s15, v9
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp117:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 51
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5700
; TotalNumSgprs: 53
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
    .vgpr_spill_count: 0
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
