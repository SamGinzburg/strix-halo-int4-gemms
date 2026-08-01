	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s21, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v81, 7, v0
	v_and_b32_e32 v79, 15, v0
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v78, 4, v0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_lshlrev_b32_e32 v13, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v80, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v41, 4, v79
	v_and_b32_e32 v82, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_add_nc_u32_e32 v87, 0, v13
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v14, 4, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v83, 1, v82
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v88, v87, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v84, v14, v79
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s16, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s12, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	v_add3_u32 v86, 0, v79, v83
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_add_nc_u32_e32 v85, 0, v84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s14
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s12, s14, s12
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s15, s4, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s12
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s18, s15
	s_cvt_f32_u32 s4, s18
	s_sub_i32 s19, 0, s18
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	v_readfirstlane_b32 s13, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v81
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[3:4], null, s16, v2, v[1:2]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[4:5], null, s17, v78, v[41:42]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s13, s13
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s13
	s_mul_hi_u32 s12, s13, s19
	s_abs_i32 s19, s2
	s_add_i32 s20, s13, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_mul_hi_u32 s6, s19, s20
	s_xor_b32 s7, s2, s15
	s_mul_i32 s20, s6, s18
	s_ashr_i32 s22, s7, 31
	s_sub_i32 s7, s19, s20
	s_add_i32 s19, s6, 1
	s_sub_i32 s20, s7, s18
	s_cmp_ge_u32 s7, s18
	s_cselect_b32 s6, s19, s6
	s_cselect_b32 s7, s20, s7
	s_add_i32 s19, s6, 1
	s_cmp_ge_u32 s7, s18
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s18, s19, s6
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s24, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s23, s18, s22
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s18, s23, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s3, s18, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s20, s18, 8
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s3
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s3, s17, s24
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s14
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	s_mul_i32 s15, s16, s24
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s19, s2, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s21, 1
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_add3_u32 v3, s15, s19, v3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_add_i32 s2, s20, s3
	s_lshl_b32 s3, s17, 5
	v_add_nc_u32_e32 v5, s2, v4
	v_add3_u32 v4, s2, s3, v4
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s5, s5, 0xffff
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s14, s6
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v7, 0x80000000, v4, vcc_lo
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b64 v[11:12], v3, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v5, s[12:15], 0 offen
	buffer_load_b128 v[7:10], v7, s[12:15], 0 offen
	s_load_b128 s[0:3], s[0:1], 0x20
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s21, 0x82
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v87, v[11:12] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v88, v[3:6]
	s_waitcnt vmcnt(0)
	ds_store_b128 v88, v[7:10] offset:8192
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v13, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v3, s24, v78
	v_add3_u32 v2, s24, v2, 64
	s_lshl_b32 s15, s23, 8
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s14, s21, 1
	v_mov_b32_e32 v14, v13
	v_dual_mov_b32 v15, v13 :: v_dual_add_nc_u32 v4, 0x60, v3
	v_dual_mov_b32 v16, v13 :: v_dual_add_nc_u32 v3, 64, v3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_mul_lo_u32 v2, s16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v4, s17, v4
	s_lshl_b32 s23, s22, 8
	v_mul_lo_u32 v3, s17, v3
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s14, s14, 63
	v_mov_b32_e32 v17, v13
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v19, v13
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add3_u32 v89, v2, s19, v1
	v_add3_u32 v4, v4, s15, v41
	v_mov_b32_e32 v20, v13
	v_add3_u32 v3, v3, s15, v41
	v_mov_b32_e32 v21, v13
	v_mov_b32_e32 v22, v13
	v_subrev_nc_u32_e32 v90, s23, v4
	v_mov_b32_e32 v23, v13
	v_subrev_nc_u32_e32 v91, s23, v3
	v_mov_b32_e32 v24, v13
	v_mov_b32_e32 v25, v13
	v_mov_b32_e32 v26, v13
	v_mov_b32_e32 v27, v13
	v_mov_b32_e32 v28, v13
	v_mov_b32_e32 v29, v13
	v_mov_b32_e32 v30, v13
	v_mov_b32_e32 v31, v13
	v_mov_b32_e32 v32, v13
	v_mov_b32_e32 v33, v13
	v_mov_b32_e32 v34, v13
	v_mov_b32_e32 v35, v13
	v_mov_b32_e32 v36, v13
	v_mov_b32_e32 v1, v13
	v_mov_b32_e32 v2, v13
	v_mov_b32_e32 v3, v13
	v_mov_b32_e32 v4, v13
	v_mov_b32_e32 v5, v13
	v_mov_b32_e32 v6, v13
	v_mov_b32_e32 v7, v13
	v_mov_b32_e32 v8, v13
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s14, s14, 6
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_lshl_b32 s21, s17, 6
	s_add_i32 s22, s14, -1
	s_lshl_b32 s16, s16, 6
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b64 v[42:43], v89, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v44, v85 offset:16704
	ds_load_u8 v45, v85 offset:16640
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v91, s[12:15], 0 offen
	buffer_load_b128 v[37:40], v90, s[12:15], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v90, s21, v90
	v_add_nc_u32_e32 v91, s21, v91
	v_add_nc_u32_e32 v89, s16, v89
	s_add_i32 s22, s22, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s22, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v85 offset:16832
	ds_load_u8 v46, v85 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v85 offset:16448
	ds_load_u8 v46, v85 offset:16384
	ds_load_u8 v96, v85 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v85 offset:16576
	ds_load_u8 v47, v85 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v46, 16, v44
	ds_load_u8 v46, v86 offset:1280
	ds_load_u8 v47, v86 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v86 offset:1792
	ds_load_u8 v48, v86 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v47, 16, v46
	ds_load_u8 v46, v86 offset:256
	ds_load_u8 v47, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v86 offset:768
	ds_load_u8 v48, v86 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v47, 16, v46
	ds_load_u8 v46, v85 offset:17216
	ds_load_u8 v47, v85 offset:17152
	v_wmma_i32_16x16x16_iu4 v[13:20], v[60:61], v[44:45], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v85 offset:17344
	ds_load_u8 v48, v85 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v85 offset:16960
	ds_load_u8 v48, v85 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v85 offset:17088
	ds_load_u8 v49, v85 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v86 offset:3328
	ds_load_u8 v49, v86 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:3840
	ds_load_u8 v50, v86 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v49, 16, v48
	ds_load_u8 v48, v86 offset:2304
	ds_load_u8 v49, v86 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:2816
	ds_load_u8 v50, v86 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v49, 16, v48
	ds_load_u8 v48, v85 offset:17728
	ds_load_u8 v49, v85 offset:17664
	v_wmma_i32_16x16x16_iu4 v[13:20], v[62:63], v[46:47], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v85 offset:17856
	ds_load_u8 v50, v85 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v85 offset:17472
	ds_load_u8 v50, v85 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v85 offset:17600
	ds_load_u8 v51, v85 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	ds_load_u8 v50, v86 offset:5376
	ds_load_u8 v51, v86 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v86 offset:5888
	ds_load_u8 v52, v86 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v51, 16, v50
	ds_load_u8 v50, v86 offset:4352
	ds_load_u8 v51, v86 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v86 offset:4864
	ds_load_u8 v52, v86 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v51, 16, v50
	ds_load_u8 v50, v85 offset:18240
	ds_load_u8 v51, v85 offset:18176
	v_wmma_i32_16x16x16_iu4 v[13:20], v[64:65], v[48:49], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v85 offset:18368
	ds_load_u8 v52, v85 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 16, v50
	ds_load_u8 v50, v85 offset:17984
	ds_load_u8 v52, v85 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	ds_load_u8 v52, v85 offset:18112
	ds_load_u8 v53, v85 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v52, 16, v50
	ds_load_u8 v52, v86 offset:7424
	ds_load_u8 v53, v86 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v86 offset:7936
	ds_load_u8 v54, v86 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v53, 16, v52
	ds_load_u8 v52, v86 offset:6400
	ds_load_u8 v53, v86 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v86 offset:6912
	ds_load_u8 v54, v86 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v53, 16, v52
	ds_load_u8 v52, v85 offset:18752
	ds_load_u8 v53, v85 offset:18688
	v_wmma_i32_16x16x16_iu4 v[13:20], v[66:67], v[50:51], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v85 offset:18880
	ds_load_u8 v54, v85 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v85 offset:18496
	ds_load_u8 v54, v85 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v85 offset:18624
	ds_load_u8 v55, v85 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	ds_load_u8 v54, v86 offset:9472
	ds_load_u8 v55, v86 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:9984
	ds_load_u8 v56, v86 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v55, 16, v54
	ds_load_u8 v54, v86 offset:8448
	ds_load_u8 v55, v86 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:8960
	ds_load_u8 v56, v86 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v55, 16, v54
	ds_load_u8 v54, v85 offset:19264
	ds_load_u8 v55, v85 offset:19200
	v_wmma_i32_16x16x16_iu4 v[13:20], v[68:69], v[52:53], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:19392
	ds_load_u8 v56, v85 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v55, 16, v54
	ds_load_u8 v54, v85 offset:19008
	ds_load_u8 v55, v85 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:19136
	ds_load_u8 v56, v85 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v55, 16, v54
	ds_load_u8 v54, v86 offset:11520
	ds_load_u8 v55, v86 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:12032
	ds_load_u8 v56, v86 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v55, 16, v54
	ds_load_u8 v54, v86 offset:10496
	ds_load_u8 v55, v86 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:11008
	ds_load_u8 v56, v86 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v55, 16, v54
	ds_load_u8 v54, v85 offset:19776
	ds_load_u8 v55, v85 offset:19712
	v_wmma_i32_16x16x16_iu4 v[13:20], v[70:71], v[74:75], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:19904
	ds_load_u8 v56, v85 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v55, 16, v54
	ds_load_u8 v54, v85 offset:19520
	ds_load_u8 v55, v85 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:19648
	ds_load_u8 v56, v85 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v55, 16, v54
	ds_load_u8 v54, v86 offset:13568
	ds_load_u8 v55, v86 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:14080
	ds_load_u8 v56, v86 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v55, 16, v54
	ds_load_u8 v54, v86 offset:12544
	ds_load_u8 v55, v86 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:13056
	ds_load_u8 v56, v86 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v55, 16, v54
	ds_load_u8 v54, v85 offset:20288
	ds_load_u8 v55, v85 offset:20224
	v_wmma_i32_16x16x16_iu4 v[13:20], v[72:73], v[92:93], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:20416
	ds_load_u8 v56, v85 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v55, 16, v54
	ds_load_u8 v54, v85 offset:20032
	ds_load_u8 v55, v85 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:20160
	ds_load_u8 v56, v85 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v55, 16, v54
	ds_load_u8 v54, v86 offset:15616
	ds_load_u8 v55, v86 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:16128
	ds_load_u8 v56, v86 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v55, 16, v54
	ds_load_u8 v54, v86 offset:14592
	ds_load_u8 v55, v86 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:15104
	ds_load_u8 v56, v86 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v55, 16, v54
	ds_load_u8 v54, v86 offset:1408
	ds_load_u8 v55, v86 offset:1152
	v_wmma_i32_16x16x16_iu4 v[13:20], v[76:77], v[94:95], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:1920
	ds_load_u8 v56, v86 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v55, 16, v54
	ds_load_u8 v54, v86 offset:384
	ds_load_u8 v55, v86 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v86 offset:896
	ds_load_u8 v56, v86 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v55, 16, v54
	v_wmma_i32_16x16x16_iu4 v[21:28], v[58:59], v[44:45], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v44, v86 offset:3456
	ds_load_u8 v45, v86 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:3968
	ds_load_u8 v54, v86 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v54, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v45, 16, v44
	ds_load_u8 v44, v86 offset:2432
	ds_load_u8 v45, v86 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:2944
	ds_load_u8 v54, v86 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v54, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v45, 16, v44
	ds_load_u8 v44, v86 offset:5504
	ds_load_u8 v45, v86 offset:5248
	v_wmma_i32_16x16x16_iu4 v[21:28], v[56:57], v[46:47], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:6016
	ds_load_u8 v46, v86 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v45, 16, v44
	ds_load_u8 v44, v86 offset:4480
	ds_load_u8 v45, v86 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:4992
	ds_load_u8 v46, v86 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v45, 16, v44
	ds_load_u8 v44, v86 offset:7552
	ds_load_u8 v45, v86 offset:7296
	v_wmma_i32_16x16x16_iu4 v[21:28], v[54:55], v[48:49], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:8064
	ds_load_u8 v46, v86 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v86 offset:6528
	ds_load_u8 v46, v86 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v86 offset:7040
	ds_load_u8 v47, v86 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v46, 16, v44
	ds_load_u8 v46, v86 offset:9600
	ds_load_u8 v47, v86 offset:9344
	v_wmma_i32_16x16x16_iu4 v[21:28], v[44:45], v[50:51], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v86 offset:10112
	ds_load_u8 v48, v86 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v86 offset:8576
	ds_load_u8 v48, v86 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v86 offset:9088
	ds_load_u8 v49, v86 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v86 offset:11648
	ds_load_u8 v49, v86 offset:11392
	v_wmma_i32_16x16x16_iu4 v[21:28], v[46:47], v[52:53], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:12160
	ds_load_u8 v50, v86 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v86 offset:10624
	ds_load_u8 v50, v86 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v86 offset:11136
	ds_load_u8 v51, v86 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	ds_load_u8 v50, v86 offset:13696
	ds_load_u8 v51, v86 offset:13440
	v_wmma_i32_16x16x16_iu4 v[21:28], v[48:49], v[74:75], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v86 offset:14208
	ds_load_u8 v52, v86 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 16, v50
	ds_load_u8 v50, v86 offset:12672
	ds_load_u8 v52, v86 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	ds_load_u8 v52, v86 offset:13184
	ds_load_u8 v53, v86 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v52, 16, v50
	ds_load_u8 v52, v86 offset:15744
	ds_load_u8 v53, v86 offset:15488
	v_wmma_i32_16x16x16_iu4 v[21:28], v[50:51], v[92:93], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v86 offset:16256
	ds_load_u8 v74, v86 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v74, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v86 offset:14720
	ds_load_u8 v74, v86 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v74, v52, 0xc0c0004
	ds_load_u8 v74, v86 offset:15232
	ds_load_u8 v75, v86 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v74, 16, v52
	ds_load_u8 v74, v85 offset:16736
	ds_load_u8 v75, v85 offset:16672
	v_wmma_i32_16x16x16_iu4 v[21:28], v[52:53], v[94:95], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v85 offset:16864
	ds_load_u8 v92, v85 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v92, v75, 0xc0c0004
	ds_load_u8 v92, v85 offset:16608
	ds_load_u8 v93, v85 offset:16544
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v85 offset:16480
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v96, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v92, 16, v74
	v_wmma_i32_16x16x16_iu4 v[29:36], v[60:61], v[74:75], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v60, v85 offset:17248
	ds_load_u8 v61, v85 offset:17184
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[74:75], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v85 offset:17376
	ds_load_u8 v92, v85 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v92, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v61, 16, v60
	ds_load_u8 v60, v85 offset:16992
	ds_load_u8 v61, v85 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v85 offset:17120
	ds_load_u8 v92, v85 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v92, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v61, 16, v60
	ds_load_u8 v60, v85 offset:17760
	ds_load_u8 v61, v85 offset:17696
	v_wmma_i32_16x16x16_iu4 v[29:36], v[62:63], v[92:93], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[92:93], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v85 offset:17888
	ds_load_u8 v62, v85 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v61, 16, v60
	ds_load_u8 v60, v85 offset:17504
	ds_load_u8 v61, v85 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v85 offset:17632
	ds_load_u8 v62, v85 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v61, 16, v60
	ds_load_u8 v60, v85 offset:18272
	ds_load_u8 v61, v85 offset:18208
	v_wmma_i32_16x16x16_iu4 v[29:36], v[64:65], v[94:95], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v85 offset:18400
	ds_load_u8 v62, v85 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v61, 16, v60
	ds_load_u8 v60, v85 offset:18016
	ds_load_u8 v62, v85 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v62, v60, 0xc0c0004
	ds_load_u8 v62, v85 offset:18144
	ds_load_u8 v63, v85 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v62, 16, v60
	ds_load_u8 v62, v85 offset:18784
	ds_load_u8 v63, v85 offset:18720
	v_wmma_i32_16x16x16_iu4 v[29:36], v[66:67], v[60:61], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v85 offset:18912
	ds_load_u8 v64, v85 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v85 offset:18528
	ds_load_u8 v64, v85 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v64, v62, 0xc0c0004
	ds_load_u8 v64, v85 offset:18656
	ds_load_u8 v65, v85 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v64, 16, v62
	ds_load_u8 v64, v85 offset:19296
	ds_load_u8 v65, v85 offset:19232
	v_wmma_i32_16x16x16_iu4 v[29:36], v[68:69], v[62:63], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v85 offset:19424
	ds_load_u8 v66, v85 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v65, 16, v64
	ds_load_u8 v64, v85 offset:19040
	ds_load_u8 v66, v85 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v66, v64, 0xc0c0004
	ds_load_u8 v66, v85 offset:19168
	ds_load_u8 v67, v85 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v66, 16, v64
	ds_load_u8 v66, v85 offset:19808
	ds_load_u8 v67, v85 offset:19744
	v_wmma_i32_16x16x16_iu4 v[29:36], v[70:71], v[64:65], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[64:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v85 offset:19936
	ds_load_u8 v68, v85 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v85 offset:19552
	ds_load_u8 v68, v85 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v85 offset:19680
	ds_load_u8 v69, v85 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v68, 16, v66
	ds_load_u8 v68, v85 offset:20320
	ds_load_u8 v69, v85 offset:20256
	v_wmma_i32_16x16x16_iu4 v[29:36], v[72:73], v[66:67], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[66:67], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v85 offset:20448
	ds_load_u8 v70, v85 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v85 offset:20064
	ds_load_u8 v70, v85 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v70, v68, 0xc0c0004
	ds_load_u8 v70, v85 offset:20192
	ds_load_u8 v71, v85 offset:20128
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v87, v[42:43] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v88, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v88, v[37:40] offset:8192
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	v_wmma_i32_16x16x16_iu4 v[29:36], v[76:77], v[68:69], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[52:53], v[68:69], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v5, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v12, v5
	v_mov_b32_e32 v6, v5
	v_mov_b32_e32 v7, v5
	v_mov_b32_e32 v8, v5
	v_mov_b32_e32 v9, v5
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v11, v5
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v36, v12
	v_mov_b32_e32 v4, v5
	v_dual_mov_b32 v2, v5 :: v_dual_mov_b32 v31, v7
	v_dual_mov_b32 v25, v5 :: v_dual_mov_b32 v34, v10
	v_mov_b32_e32 v24, v5
	v_dual_mov_b32 v23, v5 :: v_dual_mov_b32 v32, v8
	v_mov_b32_e32 v22, v5
	v_mov_b32_e32 v16, v5
	v_dual_mov_b32 v15, v5 :: v_dual_mov_b32 v30, v6
	v_mov_b32_e32 v14, v5
	v_mov_b32_e32 v13, v5
	v_mov_b32_e32 v28, v5
	v_mov_b32_e32 v27, v5
	v_mov_b32_e32 v26, v5
	v_mov_b32_e32 v21, v5
	v_mov_b32_e32 v20, v5
	v_mov_b32_e32 v19, v5
	v_mov_b32_e32 v18, v5
	v_mov_b32_e32 v17, v5
	v_mov_b32_e32 v35, v11
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v29, v5
	v_mov_b32_e32 v1, v5
.LBB0_4:                                ; %Flow
	v_and_b32_e32 v66, 0x1f0, v0
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v9, v85 offset:16704
	ds_load_u8 v10, v85 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v85 offset:16832
	ds_load_u8 v11, v85 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v85 offset:16448
	ds_load_u8 v11, v85 offset:16384
	ds_load_u8 v67, v85 offset:16416
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v85 offset:16576
	ds_load_u8 v12, v85 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	ds_load_u8 v11, v86 offset:1280
	ds_load_u8 v12, v86 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v86 offset:1792
	ds_load_u8 v37, v86 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v37, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v12, 16, v11
	ds_load_u8 v11, v86 offset:256
	ds_load_u8 v12, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v86 offset:768
	ds_load_u8 v37, v86 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v37, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v12, 16, v11
	ds_load_u8 v11, v85 offset:17216
	ds_load_u8 v12, v85 offset:17152
	v_wmma_i32_16x16x16_iu4 v[13:20], v[64:65], v[9:10], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v85 offset:17344
	ds_load_u8 v37, v85 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v37, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v85 offset:16960
	ds_load_u8 v37, v85 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v37, v11, 0xc0c0004
	ds_load_u8 v37, v85 offset:17088
	ds_load_u8 v38, v85 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v37, 16, v11
	ds_load_u8 v37, v86 offset:3328
	ds_load_u8 v38, v86 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v86 offset:3840
	ds_load_u8 v39, v86 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v38, 16, v37
	ds_load_u8 v37, v86 offset:2304
	ds_load_u8 v38, v86 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v86 offset:2816
	ds_load_u8 v39, v86 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v38, 16, v37
	ds_load_u8 v37, v85 offset:17728
	ds_load_u8 v38, v85 offset:17664
	v_wmma_i32_16x16x16_iu4 v[13:20], v[62:63], v[11:12], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v85 offset:17856
	ds_load_u8 v39, v85 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v85 offset:17472
	ds_load_u8 v39, v85 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v85 offset:17600
	ds_load_u8 v40, v85 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v39, 16, v37
	ds_load_u8 v39, v86 offset:5376
	ds_load_u8 v40, v86 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v86 offset:5888
	ds_load_u8 v42, v86 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v42, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v40, 16, v39
	ds_load_u8 v39, v86 offset:4352
	ds_load_u8 v40, v86 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v86 offset:4864
	ds_load_u8 v42, v86 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v42, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v40, 16, v39
	ds_load_u8 v39, v85 offset:18240
	ds_load_u8 v40, v85 offset:18176
	v_wmma_i32_16x16x16_iu4 v[13:20], v[56:57], v[37:38], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v85 offset:18368
	ds_load_u8 v42, v85 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v42, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v85 offset:17984
	ds_load_u8 v42, v85 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v42, v39, 0xc0c0004
	ds_load_u8 v42, v85 offset:18112
	ds_load_u8 v43, v85 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v42, 16, v39
	ds_load_u8 v42, v86 offset:7424
	ds_load_u8 v43, v86 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v86 offset:7936
	ds_load_u8 v44, v86 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v43, 16, v42
	ds_load_u8 v42, v86 offset:6400
	ds_load_u8 v43, v86 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v86 offset:6912
	ds_load_u8 v44, v86 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v43, 16, v42
	ds_load_u8 v42, v85 offset:18752
	ds_load_u8 v43, v85 offset:18688
	v_wmma_i32_16x16x16_iu4 v[13:20], v[50:51], v[39:40], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v85 offset:18880
	ds_load_u8 v44, v85 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v43, 16, v42
	ds_load_u8 v42, v85 offset:18496
	ds_load_u8 v44, v85 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	ds_load_u8 v44, v85 offset:18624
	ds_load_u8 v45, v85 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v44, 16, v42
	ds_load_u8 v44, v86 offset:9472
	ds_load_u8 v45, v86 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:9984
	ds_load_u8 v46, v86 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v45, 16, v44
	ds_load_u8 v44, v86 offset:8448
	ds_load_u8 v45, v86 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:8960
	ds_load_u8 v46, v86 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v45, 16, v44
	ds_load_u8 v44, v85 offset:19264
	ds_load_u8 v45, v85 offset:19200
	v_wmma_i32_16x16x16_iu4 v[13:20], v[52:53], v[42:43], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v85 offset:19392
	ds_load_u8 v46, v85 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v85 offset:19008
	ds_load_u8 v46, v85 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v85 offset:19136
	ds_load_u8 v47, v85 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v46, 16, v44
	ds_load_u8 v46, v86 offset:11520
	ds_load_u8 v47, v86 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v86 offset:12032
	ds_load_u8 v48, v86 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v47, 16, v46
	ds_load_u8 v46, v86 offset:10496
	ds_load_u8 v47, v86 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v86 offset:11008
	ds_load_u8 v48, v86 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v47, 16, v46
	ds_load_u8 v46, v85 offset:19776
	ds_load_u8 v47, v85 offset:19712
	v_wmma_i32_16x16x16_iu4 v[13:20], v[54:55], v[44:45], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v85 offset:19904
	ds_load_u8 v48, v85 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v85 offset:19520
	ds_load_u8 v48, v85 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v85 offset:19648
	ds_load_u8 v49, v85 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v86 offset:13568
	ds_load_u8 v49, v86 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:14080
	ds_load_u8 v58, v86 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v58, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v49, 16, v48
	ds_load_u8 v48, v86 offset:12544
	ds_load_u8 v49, v86 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:13056
	ds_load_u8 v58, v86 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v58, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v49, 16, v48
	ds_load_u8 v48, v85 offset:20288
	ds_load_u8 v49, v85 offset:20224
	v_wmma_i32_16x16x16_iu4 v[13:20], v[58:59], v[46:47], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v85 offset:20416
	ds_load_u8 v60, v85 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v60, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v49, 16, v48
	ds_load_u8 v48, v85 offset:20032
	ds_load_u8 v49, v85 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v85 offset:20160
	ds_load_u8 v60, v85 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v60, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v49, 16, v48
	ds_load_u8 v48, v86 offset:15616
	ds_load_u8 v49, v86 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:16128
	ds_load_u8 v60, v86 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v60, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v49, 16, v48
	ds_load_u8 v48, v86 offset:14592
	ds_load_u8 v49, v86 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:15104
	ds_load_u8 v60, v86 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v60, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v49, 16, v48
	ds_load_u8 v48, v86 offset:1408
	ds_load_u8 v49, v86 offset:1152
	v_wmma_i32_16x16x16_iu4 v[13:20], v[60:61], v[68:69], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v86 offset:1920
	ds_load_u8 v70, v86 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v70, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v86 offset:384
	ds_load_u8 v70, v86 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v70, v48, 0xc0c0004
	ds_load_u8 v70, v86 offset:896
	ds_load_u8 v71, v86 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v70, 16, v48
	v_wmma_i32_16x16x16_iu4 v[21:28], v[48:49], v[9:10], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v9, v86 offset:3456
	ds_load_u8 v10, v86 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v86 offset:3968
	ds_load_u8 v70, v86 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v70, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v86 offset:2432
	ds_load_u8 v70, v86 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	ds_load_u8 v70, v86 offset:2944
	ds_load_u8 v71, v86 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v70, 16, v9
	v_wmma_i32_16x16x16_iu4 v[21:28], v[9:10], v[11:12], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v11, v86 offset:5504
	ds_load_u8 v12, v86 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v86 offset:6016
	ds_load_u8 v70, v86 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v70, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v86 offset:4480
	ds_load_u8 v70, v86 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v70, v11, 0xc0c0004
	ds_load_u8 v70, v86 offset:4992
	ds_load_u8 v71, v86 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v70, 16, v11
	v_wmma_i32_16x16x16_iu4 v[21:28], v[11:12], v[37:38], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v37, v86 offset:7552
	ds_load_u8 v38, v86 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v86 offset:8064
	ds_load_u8 v70, v86 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v70, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v86 offset:6528
	ds_load_u8 v70, v86 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v70, v37, 0xc0c0004
	ds_load_u8 v70, v86 offset:7040
	ds_load_u8 v71, v86 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v70, 16, v37
	v_wmma_i32_16x16x16_iu4 v[21:28], v[37:38], v[39:40], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v39, v86 offset:9600
	ds_load_u8 v40, v86 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v86 offset:10112
	ds_load_u8 v70, v86 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v70, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v86 offset:8576
	ds_load_u8 v70, v86 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v70, v39, 0xc0c0004
	ds_load_u8 v70, v86 offset:9088
	ds_load_u8 v71, v86 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v70, 16, v39
	v_wmma_i32_16x16x16_iu4 v[21:28], v[39:40], v[42:43], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v42, v86 offset:11648
	ds_load_u8 v43, v86 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v86 offset:12160
	ds_load_u8 v70, v86 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v70, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v43, 16, v42
	ds_load_u8 v42, v86 offset:10624
	ds_load_u8 v70, v86 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v70, v42, 0xc0c0004
	ds_load_u8 v70, v86 offset:11136
	ds_load_u8 v71, v86 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v70, 16, v42
	v_wmma_i32_16x16x16_iu4 v[21:28], v[42:43], v[44:45], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v44, v86 offset:13696
	ds_load_u8 v45, v86 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v86 offset:14208
	ds_load_u8 v70, v86 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v70, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v86 offset:12672
	ds_load_u8 v70, v86 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v70, v44, 0xc0c0004
	ds_load_u8 v70, v86 offset:13184
	ds_load_u8 v71, v86 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v70, 16, v44
	v_wmma_i32_16x16x16_iu4 v[21:28], v[44:45], v[46:47], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v46, v86 offset:15744
	ds_load_u8 v47, v86 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v86 offset:16256
	ds_load_u8 v70, v86 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v70, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v86 offset:14720
	ds_load_u8 v70, v86 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v70, v46, 0xc0c0004
	ds_load_u8 v70, v86 offset:15232
	ds_load_u8 v71, v86 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v70, 16, v46
	v_wmma_i32_16x16x16_iu4 v[21:28], v[46:47], v[68:69], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v68, v85 offset:16736
	ds_load_u8 v69, v85 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v85 offset:16864
	ds_load_u8 v70, v85 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v69, 16, v68
	ds_load_u8 v69, v85 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v69, 0xc0c0004
	ds_load_u8 v69, v85 offset:16608
	ds_load_u8 v70, v85 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	v_wmma_i32_16x16x16_iu4 v[29:36], v[64:65], v[67:68], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v64, v85 offset:17248
	ds_load_u8 v65, v85 offset:17184
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v85 offset:17376
	ds_load_u8 v69, v85 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v65, 16, v64
	ds_load_u8 v64, v85 offset:16992
	ds_load_u8 v69, v85 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v69, v64, 0xc0c0004
	ds_load_u8 v69, v85 offset:17120
	ds_load_u8 v70, v85 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v69, 16, v64
	v_wmma_i32_16x16x16_iu4 v[29:36], v[62:63], v[64:65], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v62, v85 offset:17760
	ds_load_u8 v63, v85 offset:17696
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[64:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v85 offset:17888
	ds_load_u8 v69, v85 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v69, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v85 offset:17504
	ds_load_u8 v69, v85 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v69, v62, 0xc0c0004
	ds_load_u8 v69, v85 offset:17632
	ds_load_u8 v70, v85 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v69, 16, v62
	v_wmma_i32_16x16x16_iu4 v[29:36], v[56:57], v[62:63], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v56, v85 offset:18272
	ds_load_u8 v57, v85 offset:18208
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v85 offset:18400
	ds_load_u8 v69, v85 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v69, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v56
	ds_load_u8 v56, v85 offset:18016
	ds_load_u8 v69, v85 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v69, v56, 0xc0c0004
	ds_load_u8 v69, v85 offset:18144
	ds_load_u8 v70, v85 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v69, 16, v56
	v_wmma_i32_16x16x16_iu4 v[29:36], v[50:51], v[56:57], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v50, v85 offset:18784
	ds_load_u8 v51, v85 offset:18720
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v85 offset:18912
	ds_load_u8 v69, v85 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v69, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 16, v50
	ds_load_u8 v50, v85 offset:18528
	ds_load_u8 v69, v85 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v69, v50, 0xc0c0004
	ds_load_u8 v69, v85 offset:18656
	ds_load_u8 v70, v85 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v69, 16, v50
	v_wmma_i32_16x16x16_iu4 v[29:36], v[52:53], v[50:51], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v52, v85 offset:19296
	ds_load_u8 v53, v85 offset:19232
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[50:51], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v85 offset:19424
	ds_load_u8 v69, v85 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v69, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v85 offset:19040
	ds_load_u8 v69, v85 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v69, v52, 0xc0c0004
	ds_load_u8 v69, v85 offset:19168
	ds_load_u8 v70, v85 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v69, 16, v52
	v_wmma_i32_16x16x16_iu4 v[29:36], v[54:55], v[52:53], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v54, v85 offset:19808
	ds_load_u8 v55, v85 offset:19744
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v85 offset:19936
	ds_load_u8 v69, v85 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v69, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	ds_load_u8 v54, v85 offset:19552
	ds_load_u8 v69, v85 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v69, v54, 0xc0c0004
	ds_load_u8 v69, v85 offset:19680
	ds_load_u8 v70, v85 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v69, 16, v54
	v_wmma_i32_16x16x16_iu4 v[29:36], v[58:59], v[54:55], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v58, v85 offset:20320
	ds_load_u8 v59, v85 offset:20256
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[54:55], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v85 offset:20448
	ds_load_u8 v69, v85 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v69, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v85 offset:20064
	ds_load_u8 v69, v85 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v69, v58, 0xc0c0004
	ds_load_u8 v69, v85 offset:20192
	ds_load_u8 v70, v85 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v69, 16, v58
	v_wmma_i32_16x16x16_iu4 v[29:36], v[60:61], v[58:59], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[58:59], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v42, v5
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v5, s19, v84
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v37, v21
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v33, v4
	v_cvt_f32_i32_e32 v4, v7
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v7, v5, s[4:7], 0 offen
	v_or_b32_e32 v5, 64, v5
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v10, v0, 4, 1
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v24
	v_cvt_f32_i32_e32 v24, v30
	v_cvt_f32_i32_e32 v30, v36
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v14, v35
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v34
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v40, v25
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v32, v3
	v_cvt_f32_i32_e32 v3, v6
	v_cvt_f32_i32_e32 v6, v8
	v_cvt_f32_i32_e32 v38, v27
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v7
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v5
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v5, v10, v83, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v10, 4, v5
	v_or_b32_e32 v34, 12, v5
	v_or_b32_e32 v36, 20, v5
	v_or_b32_e32 v45, 28, v5
	s_clause 0x4
	buffer_load_u16 v8, v5, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	v_or_b32_e32 v31, 8, v5
	v_or_b32_e32 v35, 16, v5
	v_or_b32_e32 v44, 24, v5
	v_or_b32_e32 v47, 0x104, v5
	v_or_b32_e32 v49, 0x10c, v5
	s_clause 0x2
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	v_or_b32_e32 v51, 0x114, v5
	s_clause 0x1
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	v_or_b32_e32 v46, 0x100, v5
	v_or_b32_e32 v48, 0x108, v5
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	v_or_b32_e32 v50, 0x110, v5
	v_or_b32_e32 v52, 0x118, v5
	s_clause 0x3
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v54, 16, v8
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v8, v7, v45
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v8, v8, v30
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v55, v7, v10 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v59, v7, v44
	v_mul_f32_e32 v10, v43, v10
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v14, v59, v14
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v5, 0x11c, v5
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	v_lshlrev_b32_e32 v36, 16, v36
	s_mov_b32 s4, 0x76543210
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp17:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s5, s17, 31
.Ltmp18:
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v58, v7, v36 :: v_dual_lshlrev_b32 v53, 16, v31
.Ltmp19:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s5, s17, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_ashr_i32 s5, s5, 1
.Ltmp20:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v18, v58, v18 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v60, v7, v53
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v34, 16, v34
.Ltmp21:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s8, s19, s5
.Ltmp22:
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v57, v7, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v7, v34 :: v_dual_and_b32 v9, 16, v0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v27, v60, v27
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v31, v7, v54
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v21, v57, v21 :: v_dual_mul_f32 v30, v43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v25, v56, v25
.Ltmp23:
	.loc	1 83 18 is_stmt 1               ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v9, 7, v9
.Ltmp24:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v31, v31, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v29, v55, v24 :: v_dual_mul_f32 v30, v30, v13
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v24, v43, v54
	v_mul_f32_e32 v34, v43, v53
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v54, v10, v11
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v13, 16, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v53, v34, v15
	v_mul_f32_e32 v15, v24, v12
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v52
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v5
	v_lshlrev_b32_e32 v24, 16, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v46, v12, v7
	v_mul_f32_e32 v12, v43, v12
	v_dual_mul_f32 v44, v43, v44 :: v_dual_mul_f32 v5, v24, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v46, v4
	v_mul_f32_e32 v10, v5, v1
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v34, v13, v7
	v_mul_f32_e32 v51, v11, v7
	v_mul_f32_e32 v13, v43, v13
	v_mul_f32_e32 v1, v43, v35
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v35, v12, v38
	v_mul_f32_e32 v5, v34, v3
	v_mul_f32_e32 v3, v51, v6
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v6, v43, v36
	v_mul_f32_e32 v24, v43, v24
	v_mul_f32_e32 v11, v43, v11
	v_dual_mul_f32 v45, v43, v45 :: v_dual_mul_f32 v34, v13, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v26, v24, v37
	v_dual_mul_f32 v36, v11, v28 :: v_dual_mul_f32 v37, v6, v17
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v17, 16, v47
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v28, v44, v19 :: v_dual_lshlrev_b32 v13, 16, v48
	v_mul_f32_e32 v24, v45, v20
	v_dual_mul_f32 v20, v1, v16 :: v_dual_lshlrev_b32 v1, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v16, v7, v17
	v_mul_f32_e32 v11, v7, v13
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v12, 16, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v6, v7, v1
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v16, v16, v2 :: v_dual_mul_f32 v11, v11, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v19, v7, v12
	v_mul_f32_e32 v2, v43, v17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v6, v6, v42
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v12, v43, v12
	v_mul_f32_e32 v13, v43, v13
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v7, v19, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v19, |v6|, |v5|, |v4|
.Ltmp26:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v32, v12, v39 :: v_dual_mul_f32 v1, v43, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v38, v13, v23 :: v_dual_mul_f32 v39, v2, v22
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v30|, |v20|, |v37|
	v_max3_f32 v12, |v28|, |v24|, |v26|
.Ltmp28:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v33, v1, v40
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v1, |v15|, |v54|
	v_max3_f32 v13, |v39|, |v38|, |v32|
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v22, v81, 8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v17, |v33|, |v34|, |v35|
	v_max3_f32 v1, v1, |v53|, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v2, v13, v17, |v36|
	v_max3_f32 v17, |v16|, |v11|, |v7|
	v_max3_f32 v13, |v14|, |v8|, |v10|
	v_max3_f32 v1, v1, v12, v2
	v_max_f32_e64 v2, |v31|, |v29|
	v_max3_f32 v12, |v25|, |v21|, |v18|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v2, |v27|, v12
	v_max3_f32 v12, v17, v19, |v3|
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v17, 8, v0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v13, v12
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v12, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v13, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_and_b32 v13, 0xf0, v13
	v_max_f32_e32 v1, v1, v12
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v12, v2, s4, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s4, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v2, v2, v12
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v12, 4, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v19, v12, v13
	v_add3_u32 v19, v22, v19, v17
	ds_store_b64 v19, v[1:2]
	v_lshl_or_b32 v1, v82, 3, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v13
	v_lshrrev_b32_e32 v13, 1, v80
	v_add3_u32 v1, 0, v17, v1
	ds_load_b64 v[1:2], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v12, v1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v17, v17, 3, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v12
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v12
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v1, v12 :: v_dual_mov_b32 v12, v2
	v_max_f32_e32 v2, v2, v2
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v2, v2, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v2
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v2, v2, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v2
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v2, v2, v12
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v12, 2, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v17, v12, v13
	ds_store_b64 v12, v[1:2]
	v_lshlrev_b32_e32 v2, 3, v79
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v1, 0, v2, v13
	ds_load_b64 v[12:13], v1
.Ltmp53:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v1, v12, v12 :: v_dual_max_f32 v12, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v12, 0x2b8cbccc, v12
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v13
	v_fma_f32 v19, -v13, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v22, v19, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v13, v22, v19
	v_fmac_f32_e32 v22, v23, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v22, v19
	v_div_fmas_f32 v13, v13, v17, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v1, v13, 0x40e00000, v1
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v12
	v_rcp_f32_e32 v17, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v13, v17, 1.0
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, vcc_lo, v12, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v19, v17
	v_fma_f32 v23, -v13, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v17
	v_fma_f32 v13, -v13, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v17, v22
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v17.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v12, v13, 0x40e00000, v12
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v13.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v17.h, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v13, 0x7fff
	v_add3_u32 v17, v1, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v1.h, v12.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v40, 0xffff0000, v17
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, v17.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 0xffff0000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v13, null, v40, v40, v15
	v_rcp_f32_e32 v17, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v13, v17, 1.0
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, vcc_lo, v15, v40, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v19, v17
	v_fma_f32 v23, -v13, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v17
	v_fma_f32 v13, -v13, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v13, v13, v17, v22
	v_div_fixup_f32 v13, v13, v40, v15
	v_div_scale_f32 v15, null, v40, v40, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v19, -v15, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, vcc_lo, v54, v40, v54
	v_mul_f32_e32 v22, v19, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v15, v22, v19
	v_fmac_f32_e32 v22, v23, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v22, v19
	v_div_fmas_f32 v15, v15, v17, v22
	v_div_scale_f32 v17, null, v40, v40, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v15, v40, v54
	v_rcp_f32_e32 v19, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v17, v19, 1.0
	v_fmac_f32_e32 v19, v22, v19
	v_div_scale_f32 v22, vcc_lo, v53, v40, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v19
	v_fma_f32 v42, -v17, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v42, v19
	v_fma_f32 v17, -v17, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v17, v19, v23
	v_div_scale_f32 v19, null, v40, v40, v30
	v_div_fixup_f32 v17, v17, v40, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v19
	v_fma_f32 v23, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v30, v40, v30
	v_mul_f32_e32 v42, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v19, v42, v23
	v_fmac_f32_e32 v42, v43, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v42, v23
	v_div_fmas_f32 v19, v19, v22, v42
	v_div_scale_f32 v22, null, v40, v40, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v19, v40, v30
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, vcc_lo, v20, v40, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v30, v23
	v_fma_f32 v43, -v22, v42, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v23
	v_fma_f32 v22, -v22, v42, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v22, v22, v23, v42
	v_div_fixup_f32 v20, v22, v40, v20
	v_div_scale_f32 v22, null, v40, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v30, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, vcc_lo, v37, v40, v37
	v_mul_f32_e32 v42, v30, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v22, v42, v30
	v_fmac_f32_e32 v42, v43, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v42, v30
	v_div_fmas_f32 v22, v22, v23, v42
	v_div_scale_f32 v23, null, v40, v40, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v22, v40, v37
	v_rcp_f32_e32 v30, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v23, v30, 1.0
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v37, vcc_lo, v28, v40, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v37, v30
	v_fma_f32 v43, -v23, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v30
	v_fma_f32 v23, -v23, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v30, v42
	v_div_fixup_f32 v23, v23, v40, v28
	v_div_scale_f32 v28, null, v40, v40, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v37, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v37, vcc_lo, v24, v40, v24
	v_mul_f32_e32 v42, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v28, v42, v37
	v_fmac_f32_e32 v42, v43, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v42, v37
	v_div_fmas_f32 v28, v28, v30, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v24, v28, v40, v24
	v_div_scale_f32 v28, null, v40, v40, v26
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v37, vcc_lo, v26, v40, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v37, v30
	v_fma_f32 v43, -v28, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v30
	v_fma_f32 v28, -v28, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v28, v28, v30, v42
	v_div_fixup_f32 v26, v28, v40, v26
	v_div_scale_f32 v28, null, v40, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v37, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v37, vcc_lo, v39, v40, v39
	v_mul_f32_e32 v42, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v28, v42, v37
	v_fmac_f32_e32 v42, v43, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v42, v37
	v_div_fmas_f32 v28, v28, v30, v42
	v_div_scale_f32 v30, null, v40, v40, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v28, v40, v39
	v_rcp_f32_e32 v37, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v30, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, vcc_lo, v38, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v39, v37
	v_fma_f32 v43, -v30, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v37
	v_fma_f32 v30, -v30, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v37, v42
	v_div_scale_f32 v37, null, v40, v40, v32
	v_div_fixup_f32 v30, v30, v40, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v32, v40, v32
	v_mul_f32_e32 v42, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v37, v42, v39
	v_fmac_f32_e32 v42, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v42, v39
	v_div_fmas_f32 v37, v37, v38, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v32, v37, v40, v32
	v_div_scale_f32 v37, null, v40, v40, v33
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v33, v40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v39, v38
	v_fma_f32 v43, -v37, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v38
	v_fma_f32 v37, -v37, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v42
	v_div_fixup_f32 v33, v37, v40, v33
	v_div_scale_f32 v37, null, v40, v40, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v34, v40, v34
	v_mul_f32_e32 v42, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v37, v42, v39
	v_fmac_f32_e32 v42, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v42, v39
	v_div_fmas_f32 v37, v37, v38, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v34, v37, v40, v34
	v_div_scale_f32 v37, null, v40, v40, v35
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v35, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v39, v38
	v_fma_f32 v43, -v37, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v38
	v_fma_f32 v37, -v37, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v42
	v_div_fixup_f32 v35, v37, v40, v35
	v_div_scale_f32 v37, null, v40, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v36, v40, v36
	v_mul_f32_e32 v42, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v37, v42, v39
	v_fmac_f32_e32 v42, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v42, v39
	v_div_fmas_f32 v37, v37, v38, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v36, v37, v40, v36
	v_div_scale_f32 v37, null, v12, v12, v31
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v31, v12, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v31, v37, v12, v31
	v_div_scale_f32 v37, null, v12, v12, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s4, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v29, v12, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v29, v37, v12, v29
	v_div_scale_f32 v37, null, v12, v12, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s4, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v27, v12, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v27, v37, v12, v27
	v_div_scale_f32 v37, null, v12, v12, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s4, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v25, v12, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v25, v37, v12, v25
	v_div_scale_f32 v37, null, v12, v12, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s4, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_dual_fmac_f32 v38, v39, v38 :: v_dual_and_b32 v25, 15, v25
	v_div_scale_f32 v39, vcc_lo, v21, v12, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v21, v37, v12, v21
	v_div_scale_f32 v37, null, v12, v12, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s4, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v18, v12, v18
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v37, v40, v39
	v_fmac_f32_e32 v40, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v37, v12, v18
	v_div_scale_f32 v37, null, v12, v12, v14
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v14, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v14, v37, v12, v14
	v_div_scale_f32 v37, null, v12, v12, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s4, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v8, v12, v8
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v37, v40, v39
	v_fmac_f32_e32 v40, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v37, v12, v8
	v_div_scale_f32 v37, null, v12, v12, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s4, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v10, v12, v10
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v37, v40, v39
	v_fmac_f32_e32 v40, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v37, v12, v10
	v_div_scale_f32 v37, null, v12, v12, v16
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v16, v12, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v16, v37, v12, v16
	v_div_scale_f32 v37, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s4, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v37, v40, v39
	v_fmac_f32_e32 v40, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v37, v12, v11
	v_div_scale_f32 v37, null, v12, v12, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s4, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v7, v12, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v7, v37, v12, v7
	v_div_scale_f32 v37, null, v12, v12, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s4, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v6, v12, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v6, v37, v12, v6
	v_div_scale_f32 v37, null, v12, v12, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s4, 0x40e00000
	v_cvt_i32_f32_e32 v43, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v5, v12, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v5, v37, v12, v5
	v_div_scale_f32 v37, null, v12, v12, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s4, 0x40e00000
	v_cvt_i32_f32_e32 v44, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v4, v12, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v38
	v_fma_f32 v37, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_fixup_f32 v4, v37, v12, v4
	v_div_scale_f32 v37, null, v12, v12, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s4, 0x40e00000
	v_cvt_i32_f32_e32 v45, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v3, v12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v38
	v_fma_f32 v42, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v42, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v37, -v37, v40, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v39, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v37, v37, v38, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v38, v14
	v_cvt_i32_f32_e32 v40, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v37, v12, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v13
	v_rndne_f32_e32 v13, v15
	v_rndne_f32_e32 v15, v17
	v_rndne_f32_e32 v17, v19
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v22
	v_rndne_f32_e32 v22, v23
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v26
	v_rndne_f32_e32 v26, v28
	v_rndne_f32_e32 v28, v30
	v_rndne_f32_e32 v30, v32
	v_rndne_f32_e32 v32, v33
	v_rndne_f32_e32 v33, v34
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s4, 0x40e00000
	v_med3_f32 v13, v13, s4, 0x40e00000
	v_med3_f32 v23, v23, s4, 0x40e00000
	v_med3_f32 v28, v28, s4, 0x40e00000
	v_med3_f32 v33, v33, s4, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_med3_f32 v17, v17, s4, 0x40e00000
	v_med3_f32 v30, v30, s4, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v28, v28
	v_and_b32_e32 v10, 15, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v33
	v_and_b32_e32 v33, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s4, 0x40e00000
	v_med3_f32 v15, v15, s4, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v4, 15, v13
	v_and_b32_e32 v13, 15, v23
	v_and_b32_e32 v16, 15, v28
	v_and_b32_e32 v23, 15, v29
	v_and_b32_e32 v28, 15, v38
	v_and_b32_e32 v29, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0x3000, v7
	v_and_b32_e32 v8, 0x160, v0
	v_lshlrev_b32_e32 v38, 2, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s4, 0x40e00000
	v_med3_f32 v26, v26, s4, 0x40e00000
	v_med3_f32 v3, v3, s4, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v15, v15
	v_and_b32_e32 v6, 15, v17
	v_and_b32_e32 v17, 15, v30
	v_and_b32_e32 v30, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0x200, v38
	v_xor_b32_e32 v8, v41, v8
	v_add3_u32 v7, 0, v7, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v46, v3
	v_and_b32_e32 v3, 15, v12
	v_and_b32_e32 v5, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v39, v7, v39, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v24
	v_and_b32_e32 v15, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v39, v[3:6]
	ds_store_b128 v39, v[14:17] offset:1024
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s4, 0x40e00000
	v_med3_f32 v22, v22, s4, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 7, v0
	v_and_b32_e32 v4, 0x60, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s4, 0x40e00000
	v_med3_f32 v34, v34, s4, 0x40e00000
	v_med3_f32 v35, v35, s4, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, 0x3600, v3, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_and_b32_e32 v11, 15, v20
	v_and_b32_e32 v12, 15, v22
	v_and_b32_e32 v22, 15, v31
	v_and_b32_e32 v24, 15, v27
	v_and_b32_e32 v31, 15, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v40, v3, v66, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v36, v21
	v_cvt_i32_f32_e32 v37, v18
	v_and_b32_e32 v18, 15, v32
	v_and_b32_e32 v20, 15, v34
	v_and_b32_e32 v21, 15, v35
	v_and_b32_e32 v32, 15, v42
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v40
	ds_load_b128 v[14:17], v40 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[22:25]
	ds_store_b128 v39, v[30:33] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v40
	ds_load_b128 v[30:33], v40 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[10:13]
	ds_store_b128 v39, v[18:21] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v40
	ds_load_b128 v[18:21], v40 offset:2048
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s4, s18, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v26, 15, v36
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s8, s4, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 15, v37
	v_and_b32_e32 v34, 15, v43
	v_and_b32_e32 v35, 15, v44
	v_and_b32_e32 v36, 15, v45
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v16, 4, v5
	v_lshl_or_b32 v6, v17, 4, v6
	v_lshl_or_b32 v3, v14, 4, v3
	v_lshl_or_b32 v4, v15, 4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 15, v46
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[26:29]
	ds_store_b128 v39, v[34:37] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v40
	ds_load_b128 v[34:37], v40 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v8, v19, 4, v8
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v19, s5, v78
	s_lshl_b32 s5, s5, 5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v20, 4, v9
	v_lshl_or_b32 v10, v21, 4, v10
	v_lshl_or_b32 v7, v18, 4, v7
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v11, v30, 4, v22
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v2, v19
	v_add3_u32 v19, v19, s5, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v6.l
	v_and_b16 v2.h, 0xff, v5.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v31, 4, v23
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s1, 0xffff
	s_mov_b32 s4, s0
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s17, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v4.l
	v_and_b16 v2.h, 0xff, v3.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v36, 4, v28
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s17, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v8.l
	v_and_b16 v2.h, 0xff, v7.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v2.h, 0xff, v13.l
	buffer_store_b64 v[3:4], v20, s[4:7], 0 offen
	v_or_b16 v3.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v12.l
	v_and_b16 v2.h, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v3.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v18.l
	v_and_b16 v2.h, 0xff, v17.l
	v_or_b16 v4.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v16.l
	v_and_b16 v2.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v2.h, v2.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 63, s19
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v19, s[4:7], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v79
	v_lshrrev_b32_e32 v4, 2, v80
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v2, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v3, 0, v3, v4
	s_and_b32 s5, s3, 0xffff
	s_mov_b32 s4, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v0, v2, s18, 1
	ds_store_b32 v3, v1
	v_and_b32_e32 v1, 0x7c, v38
	v_and_b32_e32 v3, 2, v78
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, 0, v1, v3
	ds_load_u16 v1, v1
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[4:7], 0 offen
.Ltmp54:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 97
		.amdhsa_next_free_sgpr 25
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 97
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 25
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17832
; TotalNumSgprs: 27
; NumVgprs: 97
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 27
; NumVGPRsForWavesPerEU: 97
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     97
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
