	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x64
	s_load_b64 s[22:23], s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v27, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x40
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	v_and_b32_e32 v31, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v28, 1, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v29, 0x70, v0
	v_lshlrev_b32_e32 v30, 5, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s33
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s33
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 28, v27
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[17:18], null, s22, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s16, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s16, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s15, s16, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s19, s2, s7
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s15, s22, v[17:18]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v4
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 s4, vcc_lo, s4
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s33, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s33
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b32 v2, v1, s[24:27], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s13, s14
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s14, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, v27, v3
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s16
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s19, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 28
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 4
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7ffffff0
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s6
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s5, s5, -16
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v32, 0, v3
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s34, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s35, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s34, s35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v32, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v2, s16, v31
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s15, v31, 1
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_and_b32 v5, 16, v0
	v_bfe_i32 v10, v0, 2, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v2
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v7, 7, v0
	v_dual_mov_b32 v19, 0x7632 :: v_dual_lshlrev_b32 v18, 2, v31
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v4, 4, v29
	v_bfe_i32 v8, v0, 0, 1
	v_lshlrev_b32_e32 v22, 4, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v54, 0x90, v10
	v_mov_b32_e32 v10, v9
	v_and_b32_e32 v26, 0x700, v7
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v23, s14, v2
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x68
	s_load_b64 s[28:29], s[0:1], 0x28
	buffer_load_u16 v59, v3, s[24:27], 0 offen
	v_dual_mov_b32 v6, 0x5410 :: v_dual_and_b32 v3, 24, v28
	v_cmp_eq_u32_e64 s1, 0, v5
	v_lshrrev_b32_e32 v20, 2, v29
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v21, 0x160, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v24, v31, 5, v3
	v_cndmask_b32_e64 v25, 0x1054, v6, s1
	v_lshl_or_b32 v42, s3, 10, v4
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v53, 0x90, v8
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v45, s13, v23
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v44, s12, v23
	v_cndmask_b32_e64 v19, 0x3276, v19, s1
	v_lshl_or_b32 v23, v25, 8, v25
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v15, v9
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v25, 0, v26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v56, 16, v24
	v_xor_b32_e32 v20, v53, v20
	v_or3_b32 v21, v21, v22, v54
	v_and_b32_e32 v58, 0x540054, v23
	v_lshl_or_b32 v60, v19, 8, v19
	v_xor_b32_e32 v55, 8, v24
	.loc	1 929 25                        ; attention.py:929:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s8, 0x3fb8aa3b
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v43, 0, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v24, 24, v24
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v54, 0, v56
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v60, 0x760076, v60
	v_xor_b32_e32 v61, 16, v21
	v_lshl_or_b32 v62, v58, 4, v58
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v53, 0, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v58, 0, v61
	v_mov_b32_e32 v7, v1
	v_lshl_or_b32 v61, v60, 4, v60
	v_and_b32_e32 v60, 0x5040504, v62
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v33, v0, 4, 1
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s44, s3, 11
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s23, v18
	v_and_b32_e32 v61, 0x7060706, v61
	s_and_b32 s5, s5, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, 2, v33
	v_or_b32_e32 v35, 4, v33
	v_or_b32_e32 v36, 6, v33
	v_or_b32_e32 v37, 8, v33
	v_or_b32_e32 v38, 10, v33
	v_or_b32_e32 v39, 12, v33
	v_or_b32_e32 v40, 14, v33
	v_or_b32_e32 v41, s44, v33
	v_or_b32_e32 v46, s44, v34
	v_or_b32_e32 v47, s44, v35
	v_or_b32_e32 v48, s44, v36
	v_or_b32_e32 v49, s44, v37
	v_or_b32_e32 v50, s44, v38
	v_or_b32_e32 v51, s44, v39
	v_or_b32_e32 v52, s44, v40
	s_and_b32 s11, s11, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s45, s3, 7
	s_mov_b32 s46, 0x76543210
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s42, s26
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s40, s6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s37, s11
	s_mov_b32 s43, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v68, v1 :: v_dual_lshlrev_b32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v59, s1, v59 :: v_dual_add_nc_u32 v56, v25, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v55, 0, v24
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v64, v59 :: v_dual_add_nc_u32 v57, 0, v21
	v_mov_b32_e32 v62, v59
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[19:20], v43
	ds_load_b64 v[21:22], v53
	ds_load_b64 v[23:24], v54
	ds_load_b64 v[25:26], v55
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v63, v59
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s1, s34, s44
	v_mov_b32_e32 v65, v68
	v_mad_u64_u32 v[68:69], null, s1, s22, v[17:18]
	v_mov_b32_e32 v67, v66
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s11, s34, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s9, s34, 4
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v66, s34, v33
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s12, s9, s45
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v84, s34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s47, s12, s23
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v85, s34, v35
	v_or_b32_e32 v87, s34, v37
	v_or_b32_e32 v88, s34, v38
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v68, v68, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v89, s34, v39
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v66, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v66, v45
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v66, s47, v18, 1
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v90, v50, s34, 1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v84, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v84, v45
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v91, v51, s34, 1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s5, v89, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v89, v45
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v89, v52, s34, 1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v88, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s8, v88, v45
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s9, v87, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s10, v87, v45
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s13, v85, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s14, v85, v45
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v86, s34, v36
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s8, s7, s8
	s_and_b32 s7, s13, s14
	s_and_b32 s8, s2, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 952 30 is_stmt 0              ; attention.py:952:30
	v_cmp_le_i32_e64 s12, v86, v45
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s7, s2, s7
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v32, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[76:77], v43
	ds_load_b64 v[78:79], v53
	ds_load_b64 v[80:81], v54
	ds_load_b64 v[82:83], v55
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[76:77], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[78:79], v[21:22], v[68:75] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v79, v41, s34, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[80:81], v[23:24], v[68:75] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v81, v47, s34, 1
	v_add_lshl_u32 v80, v46, s34, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[82:83], v[25:26], v[68:75] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v82, v48, s34, 1
	v_add_lshl_u32 v83, v49, s34, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v76, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v69
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v69, s11, v42
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v78, v70
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v68, s34, v40
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v76, v59, v76
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[69:70], null, v69, s23, v[18:19]
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v68, v44
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v68, v45
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v84, 0x80000000, v69, s0
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v82, v82, s[36:39], 0 offen
	buffer_load_u16 v81, v81, s[36:39], 0 offen
	buffer_load_u16 v80, v80, s[36:39], 0 offen
	buffer_load_u16 v79, v79, s[36:39], 0 offen
	buffer_load_u16 v85, v90, s[36:39], 0 offen
	buffer_load_u16 v83, v83, s[36:39], 0 offen
	buffer_load_u16 v87, v89, s[36:39], 0 offen
	buffer_load_u16 v88, v91, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[69:70], v66, s[28:31], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v84, v84, s[40:43], 0 offen
	v_mov_b16_e32 v68.l, 0
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v86, v44
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v71, v64, v71 :: v_dual_mul_f32 v72, v59, v72
	v_mul_f32_e32 v66, v63, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v86.l, v68.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v77, v62, v77 :: v_dual_mul_f32 v74, v63, v74
	v_mul_f32_e32 v73, v62, v73
	v_mul_f32_e32 v75, v64, v75
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s1, s4
	s_and_b32 s4, s5, s6
	s_and_b32 s5, s9, s10
	s_and_b32 s6, s11, s12
	s_and_b32 s9, s15, s17
	s_and_b32 s10, s16, s18
	s_and_b32 s1, s2, s1
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s34, s35
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v78, 16, v82
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v82, 16, v85
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v77, v77, v80
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v86.h, v70.l
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v85, 16, v87
	v_lshlrev_b32_e32 v87, 16, v88
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v68.h, v69.l
	v_and_b32_e32 v88, 0xffff0000, v69
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v69, v73, v82
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v89, 0xffff0000, v70
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v73, v74, v87 :: v_dual_mul_f32 v74, v71, v78
	v_mul_f32_e32 v70, v72, v83
	v_mul_f32_e32 v72, v75, v85
	v_dual_mul_f32 v76, v76, v79 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0xff800000, v70, s5
	v_cndmask_b32_e64 v70, 0xff800000, v72, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v81, v66, v81
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v66.h, v84.l, 15
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v72, 0xff800000, v73, s4
	v_cndmask_b32_e64 v75, 0xff800000, v77, s9
	v_cndmask_b32_e64 v76, 0xff800000, v76, s10
	v_cndmask_b32_e64 v73, 0xff800000, v81, s7
	v_cndmask_b32_e64 v74, 0xff800000, v74, s6
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v90, v84, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v66.l, 4, v84.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v72, v70
	v_max3_f32 v78, v76, v75, v73
	v_max3_f32 v81, v74, v71, v69
.Ltmp2:
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v66.h
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v79, 8, v84
	v_mov_b16_e32 v80.l, v84.h
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v66.l, v66.l, 15
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v81, v78, v81, v77
.Ltmp4:
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v78.l, v90.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v77.h, 0, -16, s11
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v91, 24, v84
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v82, 20, v84
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v77.l, v84.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v83, v79, 0, 8
	v_bfe_i32 v80, v80, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s12, 0, v78.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v84.l, v66.h, v77.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v66.h, v66.l, -16
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v87, v91, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v78.l, v80.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v77.h, v82.l, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v84.h, v68.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v85.l, v66.l, v66.h, s12
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v66.l, v83.l
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v66.h, v79.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v77.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v78.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v85.h, v68.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s11, 0, v66.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v66.l, 4, v79.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v78.l, 0, -16, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v66.h
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v79.l, v87.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v66.l, v66.l, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v80.l, v77.l, v78.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v78.h, 0, -16, s12
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v78.l, v91.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v79.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v77.l, 4, v91.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v80, v80, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v79.l, v66.h, v78.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v66.h, v66.l, -16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v78.h, v68.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v80, v80
	v_bfe_i32 v79, v79, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v82.l, v66.l, v66.h, s11
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v66.l, v77.h, -16
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v78.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v80, v86, v80
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v83.l, v77.h, v66.l, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v66.l, 0, -16, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v77.h, v68.l
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v79, v88, v79
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s11, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v78.l, v78.l, v66.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v66.l, v77.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v87, v78, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v77.l, v77.l, v66.l, s14
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v66, v81, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v67
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v66, v67, v81, v66
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v81, v82, 0, 16
	v_bfe_i32 v82, v83, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v83.h, v68.l
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v74, v74, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v76, v76, v66
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v67, v67, v66
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v81, v88, v81 :: v_dual_mul_f32 v82, v86, v82
	v_bfe_i32 v88, v84, 0, 16
	v_bfe_i32 v86, v77, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v84.l, v79.h
	v_mov_b16_e32 v83.l, v81.h
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v76, v76
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_and_b32_e32 v84, 1, v84
	v_and_b32_e32 v83, 1, v83
	v_cmp_o_f32_e64 s15, v82, v82
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v88, v68, v88
	v_mul_f32_e32 v86, v89, v86
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v74, 0, v74, s6
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v67, v67
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v76, 0, v76, s10
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v78.l, v88.h
	v_cmp_o_f32_e64 s12, v88, v88
	v_cmp_o_f32_e64 s17, v86, v86
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v72, v72, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v78, 1, v78
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v67, 0, v67, s14
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v75, v75, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v78, v88, v78, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v88, v85, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v85.l, v82.h
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v67
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v75, v75
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v71, v71, v66 :: v_dual_mul_f32 v4, v4, v67
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v88, v88
	v_mul_f32_e32 v87, v89, v87
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v69, v69, v66 :: v_dual_mul_f32 v6, v6, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v71, v71
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v88, v68, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v78.l, v87.h
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v75, 0, v75, s9
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s16, v87, v87
	v_mov_b16_e32 v77.l, v88.h
	v_cmp_o_f32_e64 s13, v88, v88
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v68.h, v68.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v72, v72
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v71, 0, v71, s5
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_and_b32_e32 v77, 1, v77
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v74, v74
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v69, 0, v69, s8
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v73, v73, v66
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v71, v71
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v77, v88, v77, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v78.h, s12
	v_cmp_o_f32_e64 s12, v79, v79
	v_add3_u32 v79, v79, v84, 0x7fff
	v_and_b32_e32 v84, 1, v85
	v_mov_b16_e32 v88.h, v68.l
	v_mov_b16_e32 v88.l, v80.h
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s13
	v_mov_b16_e32 v78.h, v68.l
	v_cmp_o_f32_e64 s13, v81, v81
	v_add3_u32 v81, v81, v83, 0x7fff
	v_and_b32_e32 v88, 1, v88
	v_cndmask_b16 v81.l, 0x7fff, v79.h, s12
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v82, v82, v84, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s13
	v_add3_u32 v80, v80, v88, 0x7fff
	v_mov_b16_e32 v88.h, v68.l
	v_mov_b16_e32 v88.l, v86.h
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v83.h, v68.l
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v56, v77, v81 offset1:8
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v77, v76, v75
.Ltmp8:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v78, v87, v78, 0x7fff
	v_and_b32_e32 v87, 1, v88
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v84.h, v68.l
	v_mov_b16_e32 v79.h, v68.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s11
	v_cndmask_b16 v80.h, 0x7fff, v82.h, s15
	v_add3_u32 v86, v86, v87, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v78.h, s16
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v78, v71, v69
.Ltmp10:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v87.h, v68.l
	v_mov_b16_e32 v82.h, v68.l
	v_mov_b16_e32 v68.l, v75.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v72, 0, v72, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v83.l, v76.h
	v_mov_b16_e32 v84.l, v74.h
	v_cmp_o_f32_e64 s4, v76, v76
	v_and_b32_e32 v68, 1, v68
	v_mov_b16_e32 v87.l, v69.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v73, 0, v73, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v79.l, v71.h
	v_mov_b16_e32 v88.l, v72.h
	v_add3_u32 v68, v75, v68, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v86.h, 0x7fff, v86.h, s17
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v81, v73, v74
.Ltmp12:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v70, v70, v66
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v85.l, v73.h
	v_cmp_o_f32_e64 s6, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v8, v8, v67 :: v_dual_add_f32 v77, v77, v81
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v70, v70
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v69, v69
	v_and_b32_e32 v79, 1, v79
	v_cmp_o_f32_e64 s10, v72, v72
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v56, v80, v86 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v71, v71, v79, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v70, 0, v70, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s1, v75, v75
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v81, v72, v70
.Ltmp14:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v67
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v82.l, v70.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v67
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s1
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v78, v78, v81 :: v_dual_and_b32 v81, 1, v83
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v83, 1, v84
	v_and_b32_e32 v84, 1, v85
	v_and_b32_e32 v85, 1, v87
	v_and_b32_e32 v82, 1, v82
	v_add3_u32 v76, v76, v81, 0x7fff
	v_add3_u32 v74, v74, v83, 0x7fff
	v_add3_u32 v73, v73, v84, 0x7fff
	v_cmp_o_f32_e64 s9, v70, v70
	v_and_b32_e32 v87, 1, v88
	v_cndmask_b16 v68.l, 0x7fff, v76.h, s4
	v_add3_u32 v69, v69, v85, 0x7fff
	v_add3_u32 v75, v70, v82, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s5
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s6
	v_permlanex16_b32 v70, v68, s46, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v7, v7, v67 :: v_dual_add_f32 v86, v77, v78
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v72, v72, v87, 0x7fff
	v_cndmask_b16 v76.h, 0x7fff, v69.h, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v69, v70, v68, v60
	v_perm_b32 v70, v70, v68, v61
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[77:80], v57
	ds_load_b128 v[81:84], v58
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v68, v74, s46, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v76.l, 0x7fff, v71.h, s8
	v_cndmask_b16 v85.h, 0x7fff, v75.h, s9
	v_cndmask_b16 v85.l, 0x7fff, v72.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v71, v68, v74, v60
	v_perm_b32 v72, v68, v74, v61
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v68, v86, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v67
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v74, v76, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v86, v68
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v86, v85, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v73, v74, v76, v60
	v_perm_b32 v74, v74, v76, v61
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v68, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v75, v86, v85, v60
	v_perm_b32 v76, v86, v85, v61
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[77:84], v[69:76], v[1:8]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v68, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v31
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s33, s33, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s23, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s19, s33
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v66 :: v_dual_cndmask_b32 v12, 0, v4
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v68, vcc_lo
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp22:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp28:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp37:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
.Ltmp38:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v2 :: v_dual_add_f32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v10, v3 :: v_dual_mov_b32 v11, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v10
	v_add_f32_e32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v13, v17
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp52:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v5
.Ltmp56:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	v_mov_b32_e32 v8, v1
.Ltmp57:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v2
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v10
	v_add_f32_e32 v1, v1, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v13, v14, v18 :: v_dual_mov_b32 v8, v7
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_max_f32 v9, v4, v6
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v3, v1
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v15, v11
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v16
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp86:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp88:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp90:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v5, v6 :: v_dual_add_f32 v12, v2, v4
.Ltmp92:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xc0, v27
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v3 :: v_dual_and_b32 v2, 32, v30
.Ltmp94:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v28
	v_lshl_add_u32 v4, v29, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_nc_u32 v3, 0, v5
	v_add_f32_e32 v9, v15, v19
.Ltmp96:
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, v3, v2, v1
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s23, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp97:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 92
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 39
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 92
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4944
; TotalNumSgprs: 50
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 92
; Occupancy: 16
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
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
	.short	1031                            ; DW_AT_call_line
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
