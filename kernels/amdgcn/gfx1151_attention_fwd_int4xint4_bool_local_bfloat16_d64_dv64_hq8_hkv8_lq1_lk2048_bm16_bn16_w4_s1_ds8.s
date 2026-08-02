	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s35, s[0:1], 0x64
	s_load_b64 s[18:19], s[0:1], 0x7c
	s_load_b32 s44, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v40, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_load_b32 s14, s[0:1], 0x84
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 28, v40
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s35
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[26:27], null, s44, v2, v[1:2]
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s6, s10
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s13, s44, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s12, s10, 4
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s12, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s15, s12, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s35
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s15, s44, v[26:27]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s34, s2, s10
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_and_b32_e32 v2, 0x60, v0
	buffer_load_b32 v1, v1, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s5, s35, 0x7f
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s6, s5, s35
	s_abs_i32 s5, s5
	s_ashr_i32 s6, s6, 31
	s_mul_hi_u32 s7, s5, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, v40, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s7, s8
	s_add_i32 s11, s7, 1
	s_sub_i32 s5, s5, s9
	v_lshrrev_b32_e32 v45, 3, v2
	s_sub_i32 s2, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v44, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s2, s2, s5
	s_add_i32 s5, s7, 1
	s_cmp_ge_u32 s2, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s5, s7
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s19, s14
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s12
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s14, s18
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s7, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s12
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 15
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s34, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s8, s6, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 28
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s7, s7, 4
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s6, s6, s8
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s5, s5, 0x7ffffff0
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s7
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s6, s6, -16
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s45, s7, s5
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s46, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s45, s46
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v44, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v9, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b32 s33, s[0:1], 0x60
	v_and_b32_e32 v27, 15, v0
	v_and_b32_e32 v41, 0x70, v0
	v_lshlrev_b32_e32 v42, 1, v0
	v_lshlrev_b32_e32 v43, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s12, v27
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s15, v27, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v18, 4, v41
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x28
	s_load_b128 s[40:43], s[0:1], 0x68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v84, 0xff800000 :: v_dual_and_b32 v19, 60, v42
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v1, 0x80000000, v3 :: v_dual_and_b32 v4, 16, v0
	v_dual_mov_b32 v22, 0x7632 :: v_dual_and_b32 v3, 24, v42
	v_and_b32_e32 v6, 1, v0
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v24, 0x160, v43
	v_bfe_i32 v12, v0, 2, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v37, 8, v18
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v17, v1, s[20:23], 0 offen
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v29, s12, v18
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v30, v27, 5, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_mov_b32_e32 v1, 0
	s_add_i32 s0, s3, s0
	v_lshrrev_b32_e32 v20, 5, v2
	v_lshrrev_b32_e32 v21, 1, v0
	v_dual_mov_b32 v83, 0xff800000 :: v_dual_and_b32 v10, 14, v0
	v_lshlrev_b32_e32 v31, 6, v6
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v33, 0x84, v8
	v_lshl_or_b32 v36, v2, 2, v19
	v_dual_mov_b32 v11, 0x5410 :: v_dual_lshlrev_b32 v28, 2, v27
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 4, v0
	v_bfe_i32 v7, v0, 0, 1
	v_lshlrev_b32_e32 v25, 4, v2
	v_cmp_eq_u32_e64 s1, 0, v4
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v59, 0x90, v12
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v64, s14, v29
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v60, s12, v37
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, 1, v29
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v29, 8, v30
	v_xor_b32_e32 v61, 16, v30
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v48, 0, v30
	v_xor_b32_e32 v30, 24, v30
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s47, s3, 11
	v_lshlrev_b32_e32 v32, 5, v6
	v_dual_mov_b32 v13, v9 :: v_dual_lshlrev_b32 v34, 2, v4
	v_mul_u32_u24_e32 v35, 0x42, v10
	v_mov_b32_e32 v12, v9
	v_or3_b32 v57, v20, v31, v19
	v_and_or_b32 v19, v21, 3, v33
	v_xor_b32_e32 v20, v36, v45
	v_and_or_b32 v46, v5, 1, s47
	v_cndmask_b32_e64 v38, 0x1054, v11, s1
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v39, 0x90, v7
	v_lshl_add_u32 v66, v10, 7, 0
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_cndmask_b32_e64 v21, 0x3276, v22, s1
	v_or3_b32 v59, v24, v25, v59
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v24, s14, v60
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 1, v60
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v60, 0, v29
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v61, 0, v61
	v_dual_mov_b32 v53, v1 :: v_dual_add_nc_u32 v62, 0, v30
	v_mov_b32_e32 v11, v9
	v_add3_u32 v58, v35, v32, v34
	v_or3_b32 v65, v19, v32, v34
	v_or_b32_e32 v20, v20, v31
	ds_load_b64 v[29:30], v48
	ds_load_b64 v[31:32], v60
	ds_load_b64 v[33:34], v61
	ds_load_b64 v[35:36], v62
	v_lshl_or_b32 v22, v38, 8, v38
	v_lshl_or_b32 v21, v21, 8, v21
	v_lshrrev_b32_e32 v23, 2, v41
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v19, 4, v58
	v_and_b32_e32 v22, 0x540054, v22
	v_and_b32_e32 v21, 0x760076, v21
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[37:38], null, s43, v37, v[27:28]
	v_lshl_or_b32 v47, s3, 10, v18
	v_xor_b32_e32 v23, v39, v23
	v_xor_b32_e32 v25, 0x84, v57
	v_xor_b32_e32 v70, 8, v58
	v_xor_b32_e32 v71, 12, v58
	v_xor_b32_e32 v72, 16, v58
	v_xor_b32_e32 v73, 20, v58
	v_xor_b32_e32 v74, 24, v58
	v_xor_b32_e32 v75, 28, v58
	v_xor_b32_e32 v77, 16, v59
	v_mad_u64_u32 v[38:39], null, s43, v18, v[27:28]
	v_xor_b32_e32 v18, 4, v65
	v_lshl_or_b32 v22, v22, 4, v22
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_add_nc_u32 v69, 0, v19
	v_lshl_or_b32 v19, v21, 4, v21
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s9, s40, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s8, s41, s8
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s2, s42, s2
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v39, 0, v25
	v_or_b32_e32 v49, 2, v46
	v_or_b32_e32 v50, 4, v46
	v_or_b32_e32 v51, 6, v46
	v_or_b32_e32 v52, 8, v46
	v_or_b32_e32 v54, 10, v46
	v_or_b32_e32 v55, 12, v46
	v_or_b32_e32 v56, 14, v46
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v63, s18, v64
	v_add_nc_u32_e32 v66, v66, v23
	v_subrev_nc_u32_e32 v67, s18, v24
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v68, s19, v24
	v_add_nc_u32_e32 v70, 0, v70
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v74, 0, v74
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v76, 0, v20
	v_add_nc_u32_e32 v77, 0, v77
	v_and_b32_e32 v78, 0x5040504, v22
	v_add_nc_u32_e32 v79, 0, v18
	v_and_b32_e32 v80, 0x7060706, v19
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s12, s12, s43
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s18, s2, s8
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s48, s3, 7
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s38, s22
	s_mov_b64 s[14:15], s[26:27]
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s28, s10
	s_mov_b32 s36, s6
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s29, s11
	s_add_i32 s18, s18, s12
	s_mov_b32 s39, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s33, v28
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v81, s9, v17 :: v_dual_add_nc_u32 v64, s19, v64
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v25.h, 0xff, v25.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v92.h, v93.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v93, v17
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v17.l, 0xff, v25.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v85.l, 0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s2, 0, v25.h
	v_cmp_ne_u16_e64 s5, 0, v17.l
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v86.h, v87.l
	v_mov_b16_e32 v87.l, v85.l
	v_mov_b16_e32 v87.h, v88.l
	v_mov_b16_e32 v89.h, v90.l
	v_mov_b16_e32 v90.l, v85.l
	v_mov_b16_e32 v90.h, v91.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_dual_mul_f32 v94, v81, v19 :: v_dual_add_nc_u32 v19, 0, v57
	v_mul_f32_e32 v22, v81, v22
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s4, s6, s2
	s_and_b32 s2, s7, s5
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v88.l, v85.l
	v_mov_b16_e32 v88.h, v89.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v17, 0, 1, s4
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v87, v94, v87
	v_dual_mul_f32 v95, v81, v20 :: v_dual_mul_f32 v22, v22, v90
	v_mul_f32_e32 v25, v81, v93
	v_dual_mul_f32 v93, v81, v18 :: v_dual_add_nc_u32 v20, 0, v65
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v18, 0, 1, s2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v19, v17
	ds_store_b8 v39, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v17, v20
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v79
	ds_load_u8_d16 v18, v20 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v79 offset:8
	ds_load_u8_d16 v19, v20 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v79 offset:16
	ds_load_u8_d16 v20, v20 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v20, v79 offset:24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v85.h, v86.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v88, v95, v88
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v86.l, v85.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v84, v84, v84
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s2, s45, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v25, v25, v85
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v86, v93, v86
	.loc	1 967 26                        ; attention.py:967:26
	s_barrier
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v91.l, v85.l
	v_mov_b16_e32 v91.h, v92.l
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v18.h, 1, v18.h
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s5, 1, v17.l
	v_cmp_eq_u16_e64 s7, 1, v17.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v17, 0, v58
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s6, 1, v18.l
	v_cmp_eq_u16_e64 s9, 1, v18.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s5
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v89.l, v85.l
	v_mov_b16_e32 v92.l, v85.l
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v19.l, 1, v19.l
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v17, v25
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v17, s2, v47
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s2, s45, 4
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v19.h, 1, v19.h
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s2, s2, s48
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v20.l, 1, v20.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s2, s2, s33
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[17:18], null, v17, s33, v[28:29]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v18, s2, v28, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v23, v81, v23
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s8, 1, v19.l
	v_cmp_eq_u16_e64 s11, 1, v19.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v24, v81, v24 :: v_dual_mul_f32 v23, v23, v91
	v_mul_f32_e32 v21, v81, v21
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s10, 1, v20.l
	v_cmp_eq_u16_e64 s12, 1, v20.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v24, v24, v92
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s7
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v21, v21, v89
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v22, 0xff800000, v22, s11
	v_cndmask_b32_e64 v23, 0xff800000, v23, s10
	v_cndmask_b32_e64 v20, 0xff800000, v24, s12
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v21, 0xff800000, v21, s8
	v_cndmask_b32_e64 v87, 0xff800000, v87, s6
	v_cndmask_b32_e64 v88, 0xff800000, v88, s9
	ds_store_b32 v69, v86
	ds_store_b32 v70, v87
	ds_store_b32 v71, v88
	ds_store_b32 v72, v21
	ds_store_b32 v73, v22
	ds_store_b32 v74, v23
	ds_store_b32 v75, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v24, v17, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[18:19], v18, s[24:27], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v17, v76
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v100, v25, v86, v87
	v_max3_f32 v101, v88, v21, v22
	v_dual_max_f32 v102, v23, v20 :: v_dual_max_f32 v91, v82, v82
.Ltmp4:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v110.h, v85.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v83
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v99.h, v85.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v100, v100, v101, v102
.Ltmp6:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v102.h, v85.l
	v_mov_b16_e32 v107.h, v85.l
	v_mov_b16_e32 v109.h, v85.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v103.h, v85.l
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v106, v100, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.h, v85.l
	v_mov_b16_e32 v105.h, v85.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v93.h, v85.l
	v_mov_b16_e32 v94.h, v85.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v106, v83, v100, v106
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.h, v85.l
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v89, v17
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v90, v17, v17
.Ltmp11:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v96.h, v85.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v86, v86, v106
	v_sub_f32_e32 v88, v88, v106
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v89, v89 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v22, v22, v106
	v_sub_f32_e32 v20, v20, v106
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v111, v83, v106
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v88, v88
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v89, v89, v89
.Ltmp15:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v86, v86
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v97.h, v85.l
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v89, v90, v89
.Ltmp17:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v98.h, v85.l
	v_mov_b16_e32 v104.h, v85.l
	v_add_nc_u32_e32 v90, 0, v59
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v88, 0, v88, s9
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v95, v89
.Ltmp19:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v22, 0, v22, s11
	v_cndmask_b32_e64 v20, 0, v20, s12
	v_cndmask_b32_e64 v86, 0, v86, s7
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v95, v95 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v107.l, v22.h
	v_mov_b16_e32 v110.l, v20.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v23, v23, v106
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v105.l, v86.h
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v95, v95, v95
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v20, v20
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s45, s45, 16
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v89, v89, v95
.Ltmp25:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v95.h, v85.l
	v_mov_b16_e32 v95.l, v88.h
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s45, s46
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v108, v89
.Ltmp27:
	.loc	1 962 25                        ; attention.py:962:25
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v95, 1, v95
	.loc	1 990 39                        ; attention.py:990:39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v108, v108 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v108, v108, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v89, v89, v108
.Ltmp30:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v108, v111
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v83, 0, v108, s2
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v87, v87, v106
	v_sub_f32_e32 v21, v21, v106
	v_sub_f32_e32 v25, v25, v106
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v108, 1, v110
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v8, v8, v83 :: v_dual_mov_b32 v111, v89
	v_mul_f32_e32 v4, v4, v83
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v87, v87
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v83
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v21, v21
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v111, v111 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v83
	v_mul_f32_e32 v2, v2, v83
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v25, v25
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v83
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v111, v111, v111
.Ltmp34:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v83
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v87, 0, v87, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v88, v88
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v21, 0, v21, s8
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v89, v89, v111
.Ltmp36:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v20, v20, v108, 0x7fff
	v_mov_b16_e32 v102.l, v87.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v25, 0, v25, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v109.l, v21.h
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v84, v84, v89
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v21, v21
	v_cmp_o_f32_e64 s2, v86, v86
	v_mov_b16_e32 v101.l, v25.h
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v17, v17, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v101, 1, v101
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v25, v25, v101, 0x7fff
	v_cndmask_b16 v101.h, 0x7fff, v20.h, s9
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v17, 0, v17, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s4, v87, v87
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v20, v24, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v85.h, v18.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v83
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v83, v17
.Ltmp38:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v92.h, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v83, v83 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v17, v17, v83
.Ltmp41:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v83, 1, v102
	v_and_b32_e32 v102, 1, v107
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v23, v23
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v107, 1, v109
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v109, v17
.Ltmp43:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v83, v87, v83, 0x7fff
	v_add3_u32 v87, v88, v95, 0x7fff
	v_cndmask_b16 v95.l, 0x7fff, v25.h, s5
	v_add3_u32 v21, v21, v107, 0x7fff
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v109, v109 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v22, v22, v102, 0x7fff
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v22.l, v24.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v23, 0, v23, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v83.l, 0x7fff, v21.h, s8
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v88, v17, v109
.Ltmp47:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v17, v91, v89
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v105, 1, v105
	v_mov_b16_e32 v100.l, v23.h
	v_cmp_o_f32_e64 s10, v23, v23
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v25, v88
.Ltmp49:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v21, 8, v24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v86, v86, v105, 0x7fff
	v_and_b32_e32 v100, 1, v100
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v89, v22, 0, 8
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v20.h, v21.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v95.h, 0x7fff, v86.h, s2
	v_add3_u32 v23, v23, v100, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v87.h, s6
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v87, 0xffff0000, v18
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v18.l, 4, v24.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.h, v24.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v101.l, 0x7fff, v23.h, s10
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v105, v88, v25
.Ltmp53:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v23, 24, v24
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v88, 0xffff0000, v19
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v19.l, v24.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v25, 20, v24
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v24, v21, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v18.l, v18.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v18.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v19.h, 4, v21.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v100.l, 0x7fff, v83.h, s4
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v91, v23, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v19.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v22.l, v23.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v83.h, 0x7fff, v22.h, s7
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v21.h, 4, v23.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v20.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v20.l, v18.l, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v22.h, 0, -16, s2
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v19.h, v19.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v23.l, v24.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v20.h
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v21.l, v25.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v24.l, v89.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v24.h, 0, -16, s4
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v25.l, v91.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v22.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v89.l, v18.h, v22.h
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v20.l, v18.l, v20.l, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v23.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v18.l, v19.h, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v18.h, 0, -16, s2
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v23.h, v21.l, -16
	v_or_b16 v25.h, v21.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v24.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v23.l, v19.l, v24.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v25.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v19.l, 0, -16, s4
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v24, v20, 0, 16
	v_bfe_i32 v89, v89, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v20.l, v20.h, v18.h
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v18.l, v19.h, v18.l, s5
	v_cndmask_b16 v21.l, v21.l, v23.h, s2
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v23, v23, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v19.l, v22.l, v19.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v22.l, v21.h, v25.h, s6
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v89
	v_bfe_i32 v18, v18, 0, 16
	v_bfe_i32 v20, v20, 0, 16
	v_bfe_i32 v21, v21, 0, 16
	v_cvt_f32_i32_e32 v23, v23
	v_bfe_i32 v22, v22, 0, 16
	v_bfe_i32 v19, v19, 0, 16
	v_mul_f32_e32 v24, v85, v24
	v_mul_f32_e32 v25, v85, v25
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_mul_f32_e32 v23, v92, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v93.l, v24.h
	v_mov_b16_e32 v94.l, v25.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v18, v87, v18
	v_dual_mul_f32 v20, v87, v20 :: v_dual_mul_f32 v21, v92, v21
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v99.l, v23.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v22, v88, v22
	v_mul_f32_e32 v19, v88, v19
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v85, 1, v93
	v_and_b32_e32 v87, 1, v94
	v_mov_b16_e32 v96.l, v18.h
	v_mov_b16_e32 v97.l, v20.h
	v_mov_b16_e32 v98.l, v21.h
	v_and_b32_e32 v88, 1, v99
	v_mov_b16_e32 v103.l, v22.h
	v_mov_b16_e32 v104.l, v19.h
	v_cmp_o_f32_e64 s2, v24, v24
	v_cmp_o_f32_e64 s4, v25, v25
	v_add3_u32 v25, v25, v87, 0x7fff
	v_add3_u32 v24, v24, v85, 0x7fff
	v_and_b32_e32 v85, 1, v96
	v_and_b32_e32 v87, 1, v97
	v_cmp_o_f32_e64 s5, v23, v23
	v_and_b32_e32 v89, 1, v98
	v_add3_u32 v23, v23, v88, 0x7fff
	v_and_b32_e32 v88, 1, v103
	v_and_b32_e32 v91, 1, v104
	v_cmp_o_f32_e64 s6, v18, v18
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v20, v20, v87, 0x7fff
	v_add3_u32 v18, v18, v85, 0x7fff
	v_cmp_o_f32_e64 s8, v21, v21
	v_cmp_o_f32_e64 s9, v22, v22
	v_cmp_o_f32_e64 s10, v19, v19
	v_add3_u32 v21, v21, v89, 0x7fff
	v_add3_u32 v22, v22, v88, 0x7fff
	v_add3_u32 v19, v19, v91, 0x7fff
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v86, v82, v17
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s4
	v_cndmask_b16 v18.l, 0x7fff, v23.h, s5
	v_cndmask_b16 v23.h, 0x7fff, v18.h, s6
	v_cndmask_b16 v23.l, 0x7fff, v20.h, s7
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s8
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s9
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s10
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v21, v86
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v22, v105
.Ltmp55:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v66, v24, v23 offset1:8
	ds_store_2addr_b32 v66, v18, v20 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v90
	ds_load_b128 v[89:92], v77
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v82
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v102, v95, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v100, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v83, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v101, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v21, 0, v21, s2
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v18, v105, v22
.Ltmp59:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v93, v102, v95, v78
	v_perm_b32 v94, v102, v95, v80
	v_perm_b32 v95, v19, v100, v78
	v_perm_b32 v96, v19, v100, v80
	v_perm_b32 v97, v20, v83, v78
	v_perm_b32 v98, v20, v83, v80
	v_perm_b32 v99, v23, v101, v78
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v18, v53, v21
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v100, v23, v101, v80
	v_dual_mov_b32 v83, v106 :: v_dual_mov_b32 v82, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v53, v18
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[85:92], v[93:100], v[1:8]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s2, s45, s47
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v25, s45, v46, 1
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[17:18], null, s2, s44, v[26:27]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v85, s45, v27
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s5, s18, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v85, v63
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s13
	.loc	1 951 21                        ; attention.py:951:21
	s_and_b32 s4, s0, s2
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v17, v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s2, v85, v64
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s6, s2, s4
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v44, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[86:87], v48
	ds_load_b64 v[88:89], v60
	ds_load_b64 v[90:91], v61
	ds_load_b64 v[92:93], v62
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[29:30], v[9:16] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v86, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v49, s45, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[31:32], v[17:24] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v87, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v50, s45, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[33:34], v[17:24] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v88, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v51, s45, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[35:36], v[17:24] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v89, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v52, s45, 1
	buffer_load_u16 v90, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v54, s45, 1
	buffer_load_u16 v91, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v55, s45, 1
	buffer_load_u16 v92, v25, s[28:31], 0 offen
	v_add_lshl_u32 v25, v56, s45, 1
	buffer_load_u16 v93, v25, s[28:31], 0 offen
	v_mov_b16_e32 v25.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v25.h, v25.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s4, s6
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v94, s5, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v95, 31, v94
	v_add_co_u32 v94, s2, s14, v94
	v_add_co_ci_u32_e64 v95, null, s15, v95, s2
	global_load_d16_hi_u8 v25, v[94:95], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v85, v67
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v85, v68
	.loc	1 951 21                        ; attention.py:951:21
	s_and_b32 s2, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s7, s4, s2
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s4, s7
	s_cbranch_execz .LBB0_5
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v85, s5, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v95, 31, v85
	v_add_co_u32 v94, s2, s14, v85
	v_add_co_ci_u32_e64 v95, null, s15, v95, s2
	global_load_d16_u8 v25, v[94:95], off
	s_branch .LBB0_5
.LBB0_10:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_12
.LBB0_11:                               ; %._crit_edge.loopexit
.Ltmp60:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v17, v17 :: v_dual_add_f32 v10, 0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v11, 0xff800000, v9
	v_mov_b32_e32 v9, v45
.Ltmp61:
.LBB0_12:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	s_mov_b32 s0, 0x76543210
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp63:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s35, s35, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v11, 0xff800000, v11 :: v_dual_cndmask_b32 v10, 0, v10
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v27
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v13, 12, v40
.Ltmp65:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s34, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v12, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v14, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp69:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_add_nc_u32 v9, 0, v9
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_cndmask_b32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v10, v10, v14
.Ltmp72:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s33, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v12 :: v_dual_add_nc_u32 v12, 0, v13
.Ltmp74:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v16, 0, v4, vcc_lo
	v_cndmask_b32_e32 v6, 0, v6, vcc_lo
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v9, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v12
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp77:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v12, v2 :: v_dual_mov_b32 v9, v1
	v_mov_b32_e32 v18, v6
.Ltmp78:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v8
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v6, v6, v18
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v12, v11
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v6
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v3
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v15, v10 :: v_dual_add_f32 v8, v8, v20
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp91:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v8 :: v_dual_add_f32 v3, v3, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v10, v10, v15
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v2
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v1, v1, v9
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v12 :: v_dual_mov_b32 v12, v10
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_add_f32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v13, v11 :: v_dual_cndmask_b32 v14, 0, v5
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v15, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v17, v14
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v3, v15 :: v_dual_add_f32 v14, v14, v17
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v15, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v5, v9
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v16, v15
.Ltmp114:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v7 :: v_dual_mov_b32 v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v16
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v14
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v6, v18
	v_add_f32_e32 v18, v8, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v15
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, v7 :: v_dual_mov_b32 v8, v16
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v6, v15, v6
	v_dual_add_f32 v7, v7, v19 :: v_dual_add_f32 v8, v16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v7, v19
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v14
	v_mov_b32_e32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v14, v7
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_dual_add_f32 v17, v18, v20 :: v_dual_mov_b32 v18, v8
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v7
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_14
; %bb.13:
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v21, v11, v11
.Ltmp132:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, v10, v12
.Ltmp134:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v12, 0
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v21, v13
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[4:5]
.LBB0_14:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v8, v18 :: v_dual_add_f32 v10, v7, v16
.Ltmp138:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v7, 0xc0, v40
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v2, v4 :: v_dual_add_f32 v3, v1, v3
.Ltmp140:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v42
	v_and_b32_e32 v2, 32, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v6, v14 :: v_dual_add_nc_u32 v7, 0, v7
	v_add_f32_e32 v5, v9, v5
.Ltmp142:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshl_add_u32 v8, v41, 1, 0
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v17, v20 :: v_dual_add_f32 v12, v15, v19
.Ltmp144:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v7, v2, v1
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v9, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[3:6]
	ds_store_b128 v8, v[10:13] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v9
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s33, v9
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp145:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 112
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 112
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5760
; TotalNumSgprs: 52
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 112
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
