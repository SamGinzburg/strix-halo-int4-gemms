	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v21, 7, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 3, v0
	v_mov_b32_e32 v25, 0
	s_load_b64 s[30:31], s[0:1], 0x20
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v2, 2, v21
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v22, 0x100, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v11, 1, v0
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v23, 2, v0
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v12, 4, v0
	v_mov_b32_e32 v30, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v32, 0x70, v11
	v_bfe_u32 v34, v0, 4, 1
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s28, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s28, v3, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v37, 0, v23
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v38, 0, v12
	v_mov_b32_e32 v28, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s18, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s19, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s20, s19
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s15, s20
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 4, v21
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s7, 0, s20
	s_mul_f32 s15, s15, 0x4f7ffffe
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s29, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s15
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s14, s13, s6
	s_xor_b32 s6, s2, s19
	s_mul_i32 s21, s14, s20
	s_ashr_i32 s15, s6, 31
	s_sub_i32 s13, s13, s21
	s_add_i32 s21, s14, 1
	s_sub_i32 s22, s13, s20
	s_cmp_ge_u32 s13, s20
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s21, s14
	s_cselect_b32 s13, s22, s13
	s_add_i32 s21, s14, 1
	s_cmp_ge_u32 s13, s20
	s_cselect_b32 s13, s21, s14
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s22, s13, s15
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s20, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s12, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s22, s15
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s20, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s23, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s14, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s14, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s14, s21, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s23, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s18
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s13, s28, s20
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s14, s14, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s24, s29, s20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s13, s34, v4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s24, s33, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s18, s6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_mov_b32 s19, s7
	s_and_b32 s17, s17, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v10, v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[6:9], v5, s[16:19], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 15, v0
	v_lshrrev_b32_e32 v5, 4, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s14, -1
	s_mov_b64 s[12:13], s[10:11]
	s_cmpk_lt_i32 s21, 0x100
	v_add3_u32 v35, 0, v4, v32
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v33, v5, v4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v37, v10 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[6:9]
	v_add_nc_u32_e32 v36, 0, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s20, 64
	v_add3_u32 v4, s34, v5, v4
	v_add_nc_u32_e32 v6, s3, v3
	s_lshl_b32 s0, s22, 7
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v7, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v4, s14, v4
	v_mul_lo_u32 v5, s29, v6
	v_sub_nc_u32_e32 v39, s23, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, s22, 8, v7
	s_lshl_b32 s11, s15, 8
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v26, 0
	s_and_b32 s21, s9, 0xffff
	v_subrev_nc_u32_e32 v41, s11, v3
	v_add3_u32 v1, v5, s0, v1
	s_lshl_b32 s0, s15, 7
	s_mov_b32 s20, s8
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	v_subrev_nc_u32_e32 v43, s0, v1
	v_mov_b32_e32 v1, 0
	v_mul_lo_u32 v5, s28, v6
	v_lshlrev_b32_e32 v40, 1, v34
	v_lshlrev_b32_e32 v42, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v7, v1
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v29, 0
	v_add3_u32 v44, v5, s34, v2
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v25, 0
	s_max_i32 s10, s1, 1
	s_lshl_b32 s11, s29, 1
	s_lshl_b32 s15, s29, 6
	s_lshl_b32 s28, s28, 6
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s10, s10, -1
	s_add_i32 s3, s3, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s10, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v44, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v44, s28, v44
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v45, v9, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v43, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v43, s15, v43
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[17:20], v9, s[16:19], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v36 offset:8352
	ds_load_u8 v10, v36 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v36 offset:8416
	ds_load_u8 v11, v36 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v10, 16, v9
	ds_load_u8 v9, v36 offset:8288
	ds_load_u8 v10, v36 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v36 offset:8192
	ds_load_u8 v11, v36 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v9, 16, v10
	ds_load_u8 v9, v35 offset:640
	ds_load_u8 v10, v35 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:896
	ds_load_u8 v11, v35 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v10, 16, v9
	ds_load_u8 v9, v35 offset:128
	ds_load_u8 v10, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:384
	ds_load_u8 v11, v35 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:8608
	ds_load_u8 v47, v36 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:8672
	ds_load_u8 v48, v36 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:8480
	ds_load_u8 v48, v36 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:8544
	ds_load_u8 v49, v36 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:1664
	ds_load_u8 v49, v35 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:1920
	ds_load_u8 v50, v35 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:1152
	ds_load_u8 v50, v35 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:1408
	ds_load_u8 v51, v35 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:8864
	ds_load_u8 v47, v36 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:8928
	ds_load_u8 v48, v36 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:8736
	ds_load_u8 v48, v36 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:8800
	ds_load_u8 v49, v36 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:2688
	ds_load_u8 v49, v35 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:2944
	ds_load_u8 v50, v35 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:2176
	ds_load_u8 v50, v35 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:2432
	ds_load_u8 v51, v35 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:9120
	ds_load_u8 v47, v36 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:9184
	ds_load_u8 v48, v36 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:8992
	ds_load_u8 v48, v36 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:9056
	ds_load_u8 v49, v36 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:3712
	ds_load_u8 v49, v35 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:3968
	ds_load_u8 v50, v35 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:3200
	ds_load_u8 v50, v35 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:3456
	ds_load_u8 v51, v35 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:9376
	ds_load_u8 v47, v36 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:9440
	ds_load_u8 v48, v36 offset:9408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:9248
	ds_load_u8 v48, v36 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:9312
	ds_load_u8 v49, v36 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:4736
	ds_load_u8 v49, v35 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:4992
	ds_load_u8 v50, v35 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:4224
	ds_load_u8 v50, v35 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:4480
	ds_load_u8 v51, v35 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:9632
	ds_load_u8 v47, v36 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:9696
	ds_load_u8 v48, v36 offset:9664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:9504
	ds_load_u8 v48, v36 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:9568
	ds_load_u8 v49, v36 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:5760
	ds_load_u8 v49, v35 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:6016
	ds_load_u8 v50, v35 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:5248
	ds_load_u8 v50, v35 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:5504
	ds_load_u8 v51, v35 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:9888
	ds_load_u8 v47, v36 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:9952
	ds_load_u8 v48, v36 offset:9920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:9760
	ds_load_u8 v48, v36 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:9824
	ds_load_u8 v49, v36 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:6784
	ds_load_u8 v49, v35 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:7040
	ds_load_u8 v50, v35 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:6272
	ds_load_u8 v50, v35 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:6528
	ds_load_u8 v51, v35 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v46, v36 offset:10144
	ds_load_u8 v47, v36 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v36 offset:10208
	ds_load_u8 v48, v36 offset:10176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v36 offset:10016
	ds_load_u8 v48, v36 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v36 offset:10080
	ds_load_u8 v49, v36 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v48, 16, v46
	ds_load_u8 v48, v35 offset:7808
	ds_load_u8 v49, v35 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v35 offset:8064
	ds_load_u8 v50, v35 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v35 offset:7296
	ds_load_u8 v50, v35 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v50, v48, 0xc0c0004
	ds_load_u8 v50, v35 offset:7552
	ds_load_u8 v51, v35 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v50, 16, v48
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v46, v42, s[20:23], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v42, 2, v42
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v47, v40, v41
	s_clause 0x7
	buffer_load_u16 v48, v47, s[24:27], 0 offen
	buffer_load_u16 v49, v47, s[24:27], 0 offen offset:4
	buffer_load_u16 v50, v47, s[24:27], 0 offen offset:8
	buffer_load_u16 v51, v47, s[24:27], 0 offen offset:12
	buffer_load_u16 v52, v47, s[24:27], 0 offen offset:16
	buffer_load_u16 v53, v47, s[24:27], 0 offen offset:20
	buffer_load_u16 v54, v47, s[24:27], 0 offen offset:24
	buffer_load_u16 v47, v47, s[24:27], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b32 v37, v45 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(9)
	ds_store_b128 v38, v[17:20]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v41, s11, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v10, v46
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v31, v10, v49 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v9, v46
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v14, v14, v46 :: v_dual_lshlrev_b32 v51, 16, v51
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v11, v11, v46 :: v_dual_lshlrev_b32 v52, 16, v52
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v16, v16, v46 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v24, v9, v48 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v12, v46
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v13, v46
	v_mul_f32_e32 v15, v15, v46
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v27, v14, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v29, v12, v51 :: v_dual_fmac_f32 v30, v11, v50
	v_dual_fmac_f32 v25, v16, v47 :: v_dual_fmac_f32 v28, v13, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v26, v15, v54
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow189
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v3, 16, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v13, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v36 offset:8352
	ds_load_u8 v2, v36 offset:8416
	ds_load_u8 v4, v36 offset:8384
	ds_load_u8 v5, v36 offset:8320
	ds_load_u8 v6, v36 offset:8288
	ds_load_u8 v7, v36 offset:8256
	ds_load_u8 v8, v36 offset:8192
	ds_load_u8 v9, v36 offset:8224
	ds_load_u8 v10, v35 offset:640
	ds_load_u8 v11, v35 offset:896
	ds_load_u8 v12, v35 offset:768
	ds_load_u8 v13, v35 offset:512
	ds_load_u8 v14, v35 offset:128
	ds_load_u8 v15, v35 offset:256
	ds_load_u8 v16, v35
	ds_load_u8 v17, v35 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	v_mov_b32_e32 v4, 0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v9, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v13, v10, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v6
	v_mov_b32_e32 v5, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v16, v14, 0xc0c0004
	ds_load_u8 v14, v36 offset:8608
	ds_load_u8 v16, v36 offset:8672
	ds_load_u8 v18, v36 offset:8640
	ds_load_u8 v19, v36 offset:8576
	ds_load_u8 v20, v36 offset:8480
	ds_load_u8 v37, v36 offset:8544
	ds_load_u8 v38, v36 offset:8512
	ds_load_u8 v39, v36 offset:8448
	ds_load_u8 v40, v35 offset:1664
	ds_load_u8 v41, v35 offset:1920
	ds_load_u8 v42, v35 offset:1792
	ds_load_u8 v43, v35 offset:1536
	ds_load_u8 v44, v35 offset:1152
	ds_load_u8 v45, v35 offset:1408
	ds_load_u8 v46, v35 offset:1280
	ds_load_u8 v47, v35 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v10, v15, v17, 0xc0c0004
	v_lshl_or_b32 v13, v8, 16, v7
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v7, v4
	v_mov_b32_e32 v8, v4
	v_lshl_or_b32 v12, v10, 16, v9
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v10, v4
	v_mov_b32_e32 v11, v4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v19, v14, 0xc0c0004
	v_perm_b32 v15, v18, v16, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v39, v20, 0xc0c0004
	v_perm_b32 v17, v38, v37, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v43, v40, 0xc0c0004
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v47, v44, 0xc0c0004
	v_lshl_or_b32 v13, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v12, v37, 16, v20
	ds_load_u8 v14, v36 offset:8864
	ds_load_u8 v15, v36 offset:8928
	ds_load_u8 v16, v36 offset:8896
	ds_load_u8 v17, v36 offset:8832
	ds_load_u8 v18, v36 offset:8736
	ds_load_u8 v19, v36 offset:8800
	ds_load_u8 v20, v36 offset:8768
	ds_load_u8 v37, v36 offset:8704
	ds_load_u8 v38, v35 offset:2688
	ds_load_u8 v39, v35 offset:2944
	ds_load_u8 v40, v35 offset:2816
	ds_load_u8 v41, v35 offset:2560
	ds_load_u8 v42, v35 offset:2176
	ds_load_u8 v43, v35 offset:2432
	ds_load_u8 v44, v35 offset:2304
	ds_load_u8 v45, v35 offset:2048
	ds_load_u8 v46, v36 offset:9120
	ds_load_u8 v47, v36 offset:9184
	ds_load_u8 v48, v36 offset:9152
	ds_load_u8 v49, v36 offset:9088
	ds_load_u8 v50, v36 offset:8992
	ds_load_u8 v51, v36 offset:9056
	ds_load_u8 v52, v36 offset:9024
	ds_load_u8 v53, v36 offset:8960
	ds_load_u8 v54, v35 offset:3712
	ds_load_u8 v55, v35 offset:3968
	ds_load_u8 v56, v35 offset:3840
	ds_load_u8 v57, v35 offset:3584
	ds_load_u8 v58, v35 offset:3200
	ds_load_u8 v59, v35 offset:3456
	ds_load_u8 v60, v35 offset:3328
	ds_load_u8 v61, v35 offset:3072
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v16, v37, v18, 0xc0c0004
	v_perm_b32 v17, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v41, v38, 0xc0c0004
	v_perm_b32 v19, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	v_lshl_or_b32 v13, v19, 16, v18
	v_lshl_or_b32 v12, v37, 16, v20
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v49, v46, 0xc0c0004
	v_perm_b32 v15, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v53, v50, 0xc0c0004
	v_perm_b32 v17, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v57, v54, 0xc0c0004
	v_perm_b32 v19, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v61, v58, 0xc0c0004
	v_perm_b32 v37, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	v_lshl_or_b32 v13, v19, 16, v18
	v_lshl_or_b32 v12, v37, 16, v20
	ds_load_u8 v14, v36 offset:9376
	ds_load_u8 v15, v36 offset:9440
	ds_load_u8 v16, v36 offset:9408
	ds_load_u8 v17, v36 offset:9344
	ds_load_u8 v18, v36 offset:9248
	ds_load_u8 v19, v36 offset:9312
	ds_load_u8 v20, v36 offset:9280
	ds_load_u8 v37, v36 offset:9216
	ds_load_u8 v38, v35 offset:4736
	ds_load_u8 v39, v35 offset:4992
	ds_load_u8 v40, v35 offset:4864
	ds_load_u8 v41, v35 offset:4608
	ds_load_u8 v42, v35 offset:4224
	ds_load_u8 v43, v35 offset:4480
	ds_load_u8 v44, v35 offset:4352
	ds_load_u8 v45, v35 offset:4096
	ds_load_u8 v46, v36 offset:9632
	ds_load_u8 v47, v36 offset:9696
	ds_load_u8 v48, v36 offset:9664
	ds_load_u8 v49, v36 offset:9600
	ds_load_u8 v50, v36 offset:9504
	ds_load_u8 v51, v36 offset:9568
	ds_load_u8 v52, v36 offset:9536
	ds_load_u8 v53, v36 offset:9472
	ds_load_u8 v54, v35 offset:5760
	ds_load_u8 v55, v35 offset:6016
	ds_load_u8 v56, v35 offset:5888
	ds_load_u8 v57, v35 offset:5632
	ds_load_u8 v58, v35 offset:5248
	ds_load_u8 v59, v35 offset:5504
	ds_load_u8 v60, v35 offset:5376
	ds_load_u8 v61, v35 offset:5120
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v16, v37, v18, 0xc0c0004
	v_perm_b32 v17, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v41, v38, 0xc0c0004
	v_perm_b32 v19, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	v_lshl_or_b32 v13, v19, 16, v18
	v_lshl_or_b32 v12, v37, 16, v20
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v49, v46, 0xc0c0004
	v_perm_b32 v15, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v53, v50, 0xc0c0004
	v_perm_b32 v17, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v57, v54, 0xc0c0004
	v_perm_b32 v19, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v61, v58, 0xc0c0004
	v_perm_b32 v37, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	v_lshl_or_b32 v13, v19, 16, v18
	v_lshl_or_b32 v12, v37, 16, v20
	ds_load_u8 v14, v36 offset:9888
	ds_load_u8 v15, v36 offset:9952
	ds_load_u8 v16, v36 offset:9920
	ds_load_u8 v17, v36 offset:9856
	ds_load_u8 v18, v36 offset:9760
	ds_load_u8 v19, v36 offset:9824
	ds_load_u8 v20, v36 offset:9792
	ds_load_u8 v37, v36 offset:9728
	ds_load_u8 v38, v35 offset:6784
	ds_load_u8 v39, v35 offset:7040
	ds_load_u8 v40, v35 offset:6912
	ds_load_u8 v41, v35 offset:6656
	ds_load_u8 v42, v35 offset:6272
	ds_load_u8 v43, v35 offset:6528
	ds_load_u8 v44, v35 offset:6400
	ds_load_u8 v45, v35 offset:6144
	ds_load_u8 v46, v36 offset:10144
	ds_load_u8 v47, v36 offset:10208
	ds_load_u8 v48, v36 offset:10176
	ds_load_u8 v49, v36 offset:10112
	ds_load_u8 v50, v36 offset:10016
	ds_load_u8 v51, v36 offset:10080
	ds_load_u8 v52, v36 offset:10048
	ds_load_u8 v36, v36 offset:9984
	ds_load_u8 v53, v35 offset:7808
	ds_load_u8 v54, v35 offset:8064
	ds_load_u8 v55, v35 offset:7936
	ds_load_u8 v56, v35 offset:7680
	ds_load_u8 v57, v35 offset:7296
	ds_load_u8 v58, v35 offset:7552
	ds_load_u8 v59, v35 offset:7424
	ds_load_u8 v35, v35 offset:7168
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v16, v37, v18, 0xc0c0004
	v_perm_b32 v17, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v41, v38, 0xc0c0004
	v_perm_b32 v19, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	v_lshl_or_b32 v13, v19, 16, v18
	v_lshl_or_b32 v12, v37, 16, v20
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v49, v46, 0xc0c0004
	v_perm_b32 v15, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v36, v50, 0xc0c0004
	v_perm_b32 v17, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v56, v53, 0xc0c0004
	v_perm_b32 v19, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v35, v57, 0xc0c0004
	v_perm_b32 v35, v59, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v17, 16, v16
	v_lshl_or_b32 v13, v19, 16, v18
	v_lshl_or_b32 v12, v35, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[4:11], v[12:13], v[1:2], v[4:11] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v10
	v_cvt_f32_i32_e32 v13, v11
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v1, s14, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, v34, v32
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s34, s14
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s29
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s3
	s_mov_b32 s11, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v2, s1, v2, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s9, 0xffff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v2, s2
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v15, v1, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v10, s[12:15], 0 offen
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s34, s29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v21, 10, v21
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v22, 1, v22
	v_lshlrev_b32_e32 v3, 2, v3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v11, 4, v2
	v_add_nc_u32_e32 v14, 8, v2
	v_add_nc_u32_e32 v17, 20, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v9, v15 :: v_dual_add_nc_u32 v18, 24, v2
	v_mul_f32_e32 v4, v4, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v11, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v15 :: v_dual_add_nc_u32 v11, 12, v2
	v_mul_f32_e32 v5, v5, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v14, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v15 :: v_dual_add_nc_u32 v14, 16, v2
	v_dual_mul_f32 v13, v13, v15 :: v_dual_add_nc_u32 v2, 28, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x6
	buffer_load_u16 v19, v1, s[12:15], 0 offen
	buffer_load_u16 v20, v10, s[12:15], 0 offen
	buffer_load_u16 v32, v11, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	buffer_load_u16 v33, v2, s[12:15], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v1, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v2, v0, 3, 1
	v_and_b32_e32 v10, 0x60, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v12, v12, v15 :: v_dual_and_b32 v11, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s29, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v2, 0x2040, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v10, 0x31c, v23, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v10, v10, v2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v11, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v16, v24
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or3_b32 v21, v21, v22, v10
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_xad_u32 v22, v21, 4, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[10:11], 2, v[1:2]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v2, 0, v21
	v_xad_u32 v23, v21, 8, 0
	v_xad_u32 v35, v21, 12, 0
	v_xad_u32 v36, v21, 16, 0
	v_xad_u32 v37, v21, 20, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v10, vcc_lo, s30, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xad_u32 v38, v21, 24, 0
	v_xad_u32 v21, v21, 28, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v19, v31
	v_fma_f32 v6, v6, v20, v30
	v_fma_f32 v7, v7, v32, v29
	v_fma_f32 v8, v8, v14, v28
	v_fma_f32 v13, v13, v33, v25
	v_fma_f32 v9, v9, v17, v27
	v_fma_f32 v12, v12, v18, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v31, v5, s2
	v_cndmask_b32_e64 v6, v30, v6, s2
	v_cndmask_b32_e64 v7, v29, v7, s2
	v_cndmask_b32_e64 v8, v28, v8, s2
	v_cndmask_b32_e64 v13, v25, v13, s2
	v_cndmask_b32_e64 v9, v27, v9, s2
	v_cndmask_b32_e64 v12, v26, v12, s2
	ds_store_b32 v2, v4
	ds_store_b32 v22, v5
	ds_store_b32 v23, v6
	ds_store_b32 v35, v7
	ds_store_b32 v36, v8
	ds_store_b32 v37, v9
	ds_store_b32 v38, v12
	ds_store_b32 v21, v13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v13, v[10:11], off
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v5, 28, v34
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v2, 5, v2
	v_and_or_b32 v4, 0xf00, v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 32, v0
	v_xor_b32_e32 v2, v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v3, v2
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x1010, v0, 0
	v_xad_u32 v4, 0x2040, v0, 0
	v_xad_u32 v0, 0x3050, v0, 0
	ds_load_2addr_b32 v[8:9], v2 offset1:32
	ds_load_2addr_b32 v[6:7], v3 offset1:32
	ds_load_2addr_b32 v[4:5], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v0 offset1:32
.LBB0_6:                                ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v12, v13, v8
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s29, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_8:                                ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v12, v13, v6
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s29, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_10:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v12, v13, v4
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s29, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s30, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_12:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v2
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s29, 4, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_14:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s29, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s30, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s31, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_16:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[6:7], null, s29, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s30, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s31, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_18:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s29, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_20:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 62
		.amdhsa_next_free_sgpr 35
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.num_vgpr, 62
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8008
; TotalNumSgprs: 37
; NumVgprs: 62
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 7
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 62
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     62
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
