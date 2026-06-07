	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v73, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v5, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v0
	v_lshlrev_b32_e32 v18, 5, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 1, v73
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v8, s13, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
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
	s_xor_b32 s8, s2, s12
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s17, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s17
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s15, s18
	s_xor_b32 s14, s2, s18
	s_cvt_f32_u32 s16, s15
	s_sub_i32 s19, 0, s15
	s_ashr_i32 s14, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v1, 4, v5
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s13, v4, v[1:2]
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s16, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s22, s6
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s16
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s13, 7, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s12, s16, s19
	s_abs_i32 s19, s2
	s_add_i32 s16, s16, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s19, s16
	s_mul_i32 s16, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s16, s19, s16
	s_add_i32 s19, s12, 1
	s_sub_i32 s23, s16, s15
	s_cmp_ge_u32 s16, s15
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s16, s23, s16
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s16, s15
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s23, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s12, s19, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s12, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s13, 0xff
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s12, 8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s33, s13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s18, s3
.Ltmp21:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v8, v8, v2, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s35, s26, s27
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s2, s26, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 31
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s12, s35, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s2, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s12, s12, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s30, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, s2, v6
	v_add_nc_u32_e32 v11, s2, v7
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s12, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s30, 32
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, s12, v7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s36, v8
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v12, 0x80000000, v10, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v16, 32, v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v11, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v17, 32, v11
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v14, 0x80000000, v6, s3
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, 32, v6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v15, 0x80000000, v7, s3
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, 32, v7
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v47, v9, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[9:12], v12, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v13, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v14, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v15, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v16, s2
	v_cndmask_b32_e64 v14, 0x80000000, v17, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v48, v8, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[31:34], v13, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v14, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v6, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v7, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v8, 1, v0
	v_bfe_i32 v6, v0, 6, 1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v7, 4, v0
	v_bfe_i32 v13, v0, 3, 1
	s_mov_b32 s12, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v14, 0x17e, v8
	v_and_b32_e32 v6, 0x90, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v15, 0xf70, v7
	v_and_b32_e32 v13, 0x90, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x5f
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v16, v6, v14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v17, v13, v15
	v_and_b32_e32 v15, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, 0, v16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v13, 0, v17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b16 v6, v47 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v13, v[9:12]
	s_waitcnt vmcnt(7)
	ds_store_b128 v13, v[19:22] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v13, v[23:26] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v13, v[27:30] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v6, v48 offset:33280
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v13, v[31:34] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v13, v[35:38] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v13, v[39:42] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v13, v[43:46] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v13, 0x160, v18
	v_and_b32_e32 v6, 4, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v14, 0xe00, v7, v13
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr14
.LBB0_3:                                ; %Flow319
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v9, s33, v73
	v_and_b32_e32 v74, 0xf0, v0
	s_ashr_i32 s34, s17, 8
	v_or_b32_e32 v75, s26, v0
	v_and_b32_e32 v10, 28, v8
	v_mul_lo_u32 v76, v9, s34
	v_lshlrev_b32_e32 v11, 2, v74
	v_lshlrev_b32_e32 v12, 5, v5
	v_lshlrev_b32_e32 v9, 1, v74
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s1, s27, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 2, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s16, 5
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s10, s15, 8
	s_lshl_b32 s11, s14, 8
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v13, 0x160, v18
	v_and_b32_e32 v5, 0x90, v5
	v_add_nc_u32_e32 v3, s33, v3
	v_add3_u32 v28, 0, v11, v12
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v29, 0, v9
	v_and_or_b32 v14, 0xe00, v7, v13
	v_or_b32_e32 v18, v5, v13
	v_mul_lo_u32 v3, s13, v3
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v19, v14, v5
	v_add3_u32 v5, s27, s10, v4
	v_or_b32_e32 v4, s10, v4
	v_mov_b32_e32 v41, 0
	v_xor_b32_e32 v20, 16, v18
	v_add3_u32 v27, v3, v2, 64
	v_subrev_nc_u32_e32 v5, s11, v5
	v_subrev_nc_u32_e32 v4, s11, v4
	v_xor_b32_e32 v21, 16, v19
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v6, 0x80, v5
	v_or_b32_e32 v7, 0x80, v4
	v_mul_lo_u32 v5, s13, v5
	v_mul_lo_u32 v4, s13, v4
	v_add_nc_u32_e32 v28, v28, v10
	v_mul_lo_u32 v6, s13, v6
	v_mul_lo_u32 v7, s13, v7
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v22, s27, v75
	v_mov_b32_e32 v72, 0
	v_add3_u32 v24, v5, v1, 64
	v_add3_u32 v26, v4, v1, 64
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_add3_u32 v23, v6, v1, 64
	v_add3_u32 v25, v7, v1, 64
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v43, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s31, 1
	s_add_i32 s11, s0, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s30, 31
	s_mov_b32 s13, s30
	s_lshr_b32 s14, s14, 24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v30, s13, v27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s30, s14
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v39, s13, v24
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 8
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v40, s13, v23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v38, v30, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v30, v76, s14, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s34
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v75, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_clause 0x1
	buffer_load_b128 v[125:128], v39, s[20:23], 0 offen
	buffer_load_b128 v[129:132], v40, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v39, v30, s[36:39], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v36, s12, v19
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v81, s10, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s31, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v31, v31, s[40:43], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	s_cselect_b32 s31, s14, 0
	s_add_i32 s11, s11, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s14, s31, 9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, 32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s14, s14, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v32, s0, v18
	v_add_nc_u32_e32 v33, s0, v20
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v34, s13, v26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v32
	ds_load_b128 v[105:108], v33
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v32, v22, s15, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v35, s13, v25
	v_add_nc_u32_e32 v37, s12, v21
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v82, s10, v21
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[109:112], v34, s[20:23], 0 offen
	buffer_load_b128 v[113:116], v35, s[20:23], 0 offen
	ds_load_b128 v[77:80], v36
	ds_load_b128 v[85:88], v36 offset:4096
	ds_load_b128 v[117:120], v37
	ds_load_b128 v[121:124], v37 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[93:96], v81
	ds_load_b128 v[133:136], v81 offset:4096
	ds_load_b128 v[137:140], v82
	ds_load_b128 v[141:144], v82 offset:4096
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v28, v30 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v40, v32, s[40:43], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s15, s31, 13
	s_mov_b32 s12, s45
	s_add_i32 s45, s15, 0
	s_mov_b32 s0, s46
	s_mov_b32 s10, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s46, s14, 0x8000
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[30:37], v[77:80], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[101:104], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[133:136], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[30:37], v[117:120], v[105:108], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[121:124], v[105:108], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[85:92], v[137:140], v[105:108], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[141:144], v[105:108], v[93:100] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v101, v31
	v_cvt_f32_i32_e32 v102, v30
	v_cvt_f32_i32_e32 v103, v33
	v_cvt_f32_i32_e32 v104, v32
	v_cvt_f32_i32_e32 v105, v35
	v_cvt_f32_i32_e32 v106, v34
	v_cvt_f32_i32_e32 v107, v37
	v_cvt_f32_i32_e32 v108, v36
	v_cvt_f32_i32_e32 v117, v78
	v_cvt_f32_i32_e32 v118, v77
	v_cvt_f32_i32_e32 v119, v80
	v_cvt_f32_i32_e32 v120, v79
	v_cvt_f32_i32_e32 v121, v82
	v_cvt_f32_i32_e32 v122, v81
	v_cvt_f32_i32_e32 v123, v84
	v_cvt_f32_i32_e32 v124, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[30:33], v29 offset:33792
	ds_load_b128 v[34:37], v29 offset:33808
	ds_load_b128 v[77:80], v29 offset:34304
	ds_load_b128 v[81:84], v29 offset:34320
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v34, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v62, v34, v106 :: v_dual_add_nc_u32 v145, s14, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v36, v39
	v_dual_mul_f32 v77, v77, v39 :: v_dual_add_nc_u32 v146, s45, v17
	v_mul_f32_e32 v30, v30, v39
	v_mul_f32_e32 v33, v33, v39
	v_mul_f32_e32 v31, v31, v39
	v_mul_f32_e32 v32, v32, v39
	v_mul_f32_e32 v35, v35, v39
	v_mul_f32_e32 v37, v37, v39
	v_mul_f32_e32 v80, v80, v39
	v_dual_mul_f32 v79, v79, v39 :: v_dual_fmac_f32 v58, v36, v108
	v_mul_f32_e32 v82, v82, v39
	v_mul_f32_e32 v81, v81, v39
	v_mul_f32_e32 v84, v84, v39
	v_dual_mul_f32 v83, v83, v39 :: v_dual_fmac_f32 v54, v77, v118
	v_mul_f32_e32 v78, v78, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v70, v30, v102 :: v_dual_fmac_f32 v67, v33, v103
	v_dual_fmac_f32 v71, v31, v101 :: v_dual_fmac_f32 v66, v32, v104
	v_fmac_f32_e32 v63, v35, v105
	v_dual_fmac_f32 v59, v37, v107 :: v_dual_fmac_f32 v50, v79, v120
	v_dual_fmac_f32 v51, v80, v119 :: v_dual_fmac_f32 v46, v81, v122
	v_fmac_f32_e32 v47, v82, v121
	v_fmac_f32_e32 v43, v83, v124
	v_dual_fmac_f32 v55, v78, v117 :: v_dual_fmac_f32 v42, v84, v123
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v40
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v28, v30 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v29 offset:33792
	ds_load_b128 v[34:37], v29 offset:33808
	ds_load_b128 v[77:80], v29 offset:34304
	ds_load_b128 v[81:84], v29 offset:34320
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b16 v145, v38 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v146, v[109:112]
	ds_store_b128 v146, v[113:116] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v146, v[125:128] offset:16384
	ds_store_b128 v146, v[129:132] offset:20480
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(7)
	v_mul_f32_e32 v37, v37, v39
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v38, v78, v39
	v_mul_f32_e32 v78, v79, v39
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v79, v82, v39
	v_mul_f32_e32 v32, v32, v39
	v_mul_f32_e32 v34, v34, v39
	v_mul_f32_e32 v40, v77, v39
	v_mul_f32_e32 v33, v33, v39
	v_mul_f32_e32 v77, v80, v39
	v_mul_f32_e32 v30, v30, v39
	v_mul_f32_e32 v80, v81, v39
	v_mul_f32_e32 v35, v35, v39
	v_mul_f32_e32 v81, v84, v39
	v_dual_mul_f32 v36, v36, v39 :: v_dual_fmac_f32 v49, v79, v98
	v_dual_mul_f32 v31, v31, v39 :: v_dual_fmac_f32 v64, v34, v89
	v_mul_f32_e32 v39, v83, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v61, v37, v92 :: v_dual_fmac_f32 v56, v40, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v72, v31, v86 :: v_dual_fmac_f32 v69, v33, v88
	v_dual_fmac_f32 v57, v38, v94 :: v_dual_fmac_f32 v68, v32, v87
	v_dual_fmac_f32 v52, v78, v95 :: v_dual_fmac_f32 v53, v77, v96
	v_fmac_f32_e32 v41, v30, v85
	v_dual_fmac_f32 v48, v80, v97 :: v_dual_fmac_f32 v65, v35, v90
	v_dual_fmac_f32 v44, v39, v99 :: v_dual_fmac_f32 v45, v81, v100
	v_fmac_f32_e32 v60, v36, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v6, v15
	s_add_i32 s36, s13, 64
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v41, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v13, v1, v13
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v143, v14, v1
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, s0, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v15, 16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v144, 16, v143
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v3, s0, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v3
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s16, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v14, s12, v143
	v_add_nc_u32_e32 v16, s12, v144
	ds_load_b128 v[32:35], v14
	ds_load_b128 v[36:39], v14 offset:4096
	ds_load_b128 v[77:80], v16
	ds_load_b128 v[81:84], v16 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v16, s16 :: v_dual_mov_b32 v21, s21
	v_dual_mov_b32 v17, s17 :: v_dual_mov_b32 v18, s18
	v_mov_b32_e32 v23, s23
	v_dual_mov_b32 v19, s19 :: v_dual_mov_b32 v20, s20
	v_mov_b32_e32 v22, s22
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[32:35], v[5:8], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[36:39], v[5:8], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[77:80], v[1:4], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[81:84], v[1:4], v[16:23] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v87, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v89, v27
	v_cvt_f32_i32_e32 v77, v28
	v_cvt_f32_i32_e32 v79, v29
	v_cvt_f32_i32_e32 v81, v30
	v_cvt_f32_i32_e32 v84, v31
	v_cvt_f32_i32_e32 v82, v16
	v_cvt_f32_i32_e32 v85, v17
	v_cvt_f32_i32_e32 v88, v18
	v_cvt_f32_i32_e32 v90, v19
	v_cvt_f32_i32_e32 v78, v20
	v_cvt_f32_i32_e32 v80, v21
	v_cvt_f32_i32_e32 v83, v22
	v_cvt_f32_i32_e32 v86, v23
	v_cvt_f32_i32_e32 v92, v24
	v_cvt_f32_i32_e32 v93, v25
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_mov_b32_e32 v105, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v14, s10, v143
	v_add_nc_u32_e32 v16, s10, v144
	ds_load_b128 v[94:97], v16
	ds_load_b128 v[98:101], v16 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v23, s19
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[32:35], v14
	ds_load_b128 v[36:39], v14 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v22, s18 :: v_dual_mov_b32 v19, s15
	v_dual_mov_b32 v21, s17 :: v_dual_mov_b32 v20, s16
	v_dual_mov_b32 v17, s13 :: v_dual_mov_b32 v18, s14
	v_mov_b32_e32 v16, s12
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[32:35], v[5:8], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[36:39], v[5:8], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[94:97], v[1:4], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[98:101], v[1:4], v[16:23] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v108, v27
	v_cvt_f32_i32_e32 v96, v28
	v_cvt_f32_i32_e32 v98, v29
	v_cvt_f32_i32_e32 v100, v30
	v_cvt_f32_i32_e32 v103, v31
	v_cvt_f32_i32_e32 v101, v16
	v_cvt_f32_i32_e32 v104, v17
	v_cvt_f32_i32_e32 v107, v18
	v_cvt_f32_i32_e32 v109, v19
	v_cvt_f32_i32_e32 v97, v20
	v_cvt_f32_i32_e32 v99, v21
	v_cvt_f32_i32_e32 v102, v22
	v_cvt_f32_i32_e32 v105, v23
	v_cvt_f32_i32_e32 v91, v24
	v_cvt_f32_i32_e32 v111, v25
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s1
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v76, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v75, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v146, s35, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v3, 0, v11, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, v146, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v95, 0, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add_nc_u32_e32 v94, v3, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v145, v1, s[8:11], 0 offen
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v17, s46, v13
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v18, s46, v15
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v124, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v94, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[13:16], v95 offset:33792
	ds_load_b128 v[9:12], v95 offset:33808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v95 offset:34304
	ds_load_b128 v[1:4], v95 offset:34320
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v94, v19 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[37:40], v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[33:36], v18
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v17, s45, v143
	v_add_nc_u32_e32 v18, s45, v144
	ds_load_b128 v[112:115], v17
	ds_load_b128 v[116:119], v17 offset:4096
	ds_load_b128 v[120:123], v18
	ds_load_b128 v[124:127], v18 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v24, s19 :: v_dual_mov_b32 v21, s16
	v_dual_mov_b32 v23, s18 :: v_dual_mov_b32 v22, s17
	v_dual_mov_b32 v20, s15 :: v_dual_mov_b32 v19, s14
	v_dual_mov_b32 v18, s13 :: v_dual_mov_b32 v17, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[112:115], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[116:119], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[120:123], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[124:127], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v115, v28
	v_cvt_f32_i32_e32 v112, v29
	v_cvt_f32_i32_e32 v113, v30
	v_cvt_f32_i32_e32 v116, v31
	v_cvt_f32_i32_e32 v117, v32
	v_cvt_f32_i32_e32 v118, v17
	v_cvt_f32_i32_e32 v119, v18
	v_cvt_f32_i32_e32 v122, v19
	v_cvt_f32_i32_e32 v123, v20
	v_cvt_f32_i32_e32 v120, v21
	v_cvt_f32_i32_e32 v121, v22
	v_cvt_f32_i32_e32 v124, v23
	v_cvt_f32_i32_e32 v125, v24
	v_cvt_f32_i32_e32 v126, v25
	v_cvt_f32_i32_e32 v127, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v95 offset:33792
	ds_load_b128 v[25:28], v95 offset:33808
	ds_load_b128 v[21:24], v95 offset:34304
	ds_load_b128 v[17:20], v95 offset:34320
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_mov_b32_e32 v142, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v110, s44, v143
	v_add_nc_u32_e32 v128, s44, v144
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v144, s19 :: v_dual_mov_b32 v139, s14
	v_mov_b32_e32 v143, s18
	v_mov_b32_e32 v141, s16
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[147:150], v110
	ds_load_b128 v[151:154], v110 offset:4096
	ds_load_b128 v[155:158], v128
	ds_load_b128 v[159:162], v128 offset:4096
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v142, s17 :: v_dual_mov_b32 v137, s12
	v_mov_b32_e32 v140, s15
	v_mov_b32_e32 v138, s13
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[147:150], v[37:40], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[151:154], v[37:40], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[155:158], v[33:36], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[159:162], v[33:36], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v129
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v135, v137
	v_cvt_f32_i32_e32 v136, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v142, v144
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s36, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s36, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v36.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v36.h, v145.l
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v33, v76, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v75, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v21, v21, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v24, v24, v36 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_mul_f32 v23, v23, v36
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v37, s27, v73
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v34, v33, s[8:11], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v33, v146, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 16, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v29, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v13, v36
	v_mul_f32_e32 v76, v16, v36
	v_mul_f32_e32 v143, v15, v36
	v_mul_f32_e32 v8, v8, v36
	v_mul_f32_e32 v150, v7, v36
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v18, v36
	v_mul_f32_e32 v17, v17, v36
	v_mul_f32_e32 v20, v20, v36
	v_mul_f32_e32 v19, v19, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v101, v56
	v_fma_f32 v23, v23, v107, v52
	v_fma_f32 v24, v24, v109, v53
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v40, v30, v36
	v_mov_b16_e32 v30.h, v36.l
	v_mov_b16_e32 v29.h, v36.l
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v32, v36
	v_mul_f32_e32 v31, v31, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v36.l
	v_mov_b16_e32 v15.h, v36.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v26, v36
	v_mul_f32_e32 v25, v25, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v144, v10, v36
	v_mul_f32_e32 v145, v9, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v36.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v27, v27, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v146, v12, v36
	v_mul_f32_e32 v147, v11, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v36.l
	v_mov_b16_e32 v11.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v6, v36
	v_mul_f32_e32 v149, v5, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v36.l
	v_mov_b16_e32 v9.h, v36.l
	v_mov_b16_e32 v7.h, v36.l
	v_mov_b16_e32 v5.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v151, v2, v36
	v_mul_f32_e32 v152, v1, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v36.l
	v_mov_b16_e32 v2.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v153, v3, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, v36.l
	v_mov_b16_e32 v1.h, v36.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v76, v89, v67
	v_fma_f32 v8, v8, v90, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v89, v18, v99, v49
	v_fma_f32 v90, v19, v102, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v21, s3
	v_cndmask_b32_e64 v53, v53, v24, s3
	v_cndmask_b32_e64 v52, v52, v23, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v111, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v86, v4, v86, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v100, v60
	v_fma_f32 v28, v28, v103, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v152, v78, v46
	v_fma_f32 v80, v151, v80, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v51, v8, s3
	v_cndmask_b32_e64 v60, v60, v27, s3
	v_cndmask_b32_e64 v61, v61, v28, s3
	v_cndmask_b32_e64 v51, v49, v89, s3
	v_cndmask_b32_e64 v44, v44, v90, s3
	v_cndmask_b32_e64 v42, v42, v86, s3
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v94, v35 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v22, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v35, 1, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v14, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v36.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v36, s33, s26, v37
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v104, v57
	v_fma_f32 v37, v73, v91, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v75, v92, v70
	v_fma_f32 v75, v143, v87, v66
	v_fma_f32 v87, v150, v88, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v88, v17, v97, v48
	v_fma_f32 v91, v20, v105, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v22, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[17:20], v95 offset:33792
	ds_load_b128 v[21:24], v95 offset:33808
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v4, v36, v35, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v72, v40, s3
	v_cndmask_b32_e64 v40, v70, v73, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v70, 16, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v41, v37, s3
	v_cndmask_b32_e64 v50, v50, v87, s3
	v_cndmask_b32_e64 v45, v45, v91, s3
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v20, v20, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v106, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v19, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v108, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v24, v24, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v96, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v23, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v98, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v69, v32, s3
	v_cndmask_b32_e64 v68, v68, v31, s3
	v_cndmask_b32_e64 v31, v67, v76, s3
	v_cndmask_b32_e64 v32, v66, v75, s3
	v_cndmask_b32_e64 v65, v65, v26, s3
	v_cndmask_b32_e64 v64, v64, v25, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v95 offset:34304
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v48, v88, s3
	v_cndmask_b32_e64 v67, v47, v80, s3
	v_cndmask_b32_e64 v69, v46, v78, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[46:49], v95 offset:34320
	v_mul_f32_e32 v17, v17, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v74, v93, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v18, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v72, v19, v114, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v71, v74, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v20, v115, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v22, v70
	v_mul_f32_e32 v21, v21, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v18, v127, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v26, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v145, v77, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v25, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v144, v79, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v47, v70
	v_mul_f32_e32 v47, v49, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v17, v126, v40
	v_fma_f32 v84, v146, v84, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v46, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v147, v81, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v79, s3
	v_cndmask_b32_e64 v62, v62, v77, s3
	v_cndmask_b32_e64 v59, v59, v84, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v48, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v81, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v149, v82, v54
	v_fma_f32 v74, v21, v112, v62
	v_fma_f32 v75, v22, v113, v63
	v_fma_f32 v77, v24, v117, v59
	v_fma_f32 v76, v23, v116, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v82, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v28, v70
	v_mul_f32_e32 v27, v27, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v34, v121, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v71, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v25, v118, v54
	v_fma_f32 v81, v28, v123, v8
	v_fma_f32 v80, v27, v122, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v49, s2
	v_cndmask_b32_e64 v49, v31, v73, s2
	v_cndmask_b32_e64 v71, v32, v72, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v120, v69
	v_fma_f32 v47, v47, v125, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v75, s2
	v_cndmask_b32_e64 v62, v62, v74, s2
	v_cndmask_b32_e64 v59, v59, v77, s2
	v_cndmask_b32_e64 v58, v58, v76, s2
	v_cndmask_b32_e64 v54, v54, v78, s2
	v_cndmask_b32_e64 v8, v8, v81, s2
	v_cndmask_b32_e64 v50, v50, v80, s2
	v_cndmask_b32_e64 v67, v67, v82, s2
	v_cndmask_b32_e64 v46, v69, v46, s2
	v_cndmask_b32_e64 v42, v42, v47, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v94, v17 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v95 offset:33792
	ds_load_b128 v[21:24], v95 offset:33808
	ds_load_b128 v[31:34], v95 offset:34320
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v17, v17, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v148, v85, v55
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v18, v70
	v_mul_f32_e32 v19, v19, v70
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v21, v21, v70
	v_mul_f32_e32 v20, v20, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v85, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v24, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v128, v35
	v_fma_f32 v19, v19, v131, v68
	v_fma_f32 v17, v17, v110, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v26, v119, v55
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[25:28], v95 offset:34304
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v129, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v22, v70
	v_mul_f32_e32 v23, v23, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v132, v41
	v_fma_f32 v24, v24, v134, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v35, v18, s2
	v_cndmask_b32_e64 v19, v68, v19, s2
	v_cndmask_b32_e64 v17, v36, v17, s2
	v_cndmask_b32_e64 v21, v64, v21, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v32, v32, v70
	v_mul_f32_e32 v33, v33, v70
	v_mul_f32_e32 v31, v31, v70
	v_mul_f32_e32 v34, v34, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v130, v65
	v_fma_f32 v23, v23, v133, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v41, v20, s2
	v_cndmask_b32_e64 v24, v61, v24, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v36, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v26, v26, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v153, v83, v43
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v27, v70
	v_mul_f32_e32 v25, v25, v70
	v_dual_mul_f32 v28, v28, v70 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v83, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v136, v57
	v_fma_f32 v27, v27, v139, v52
	v_fma_f32 v32, v32, v138, v51
	v_fma_f32 v33, v33, v141, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v124, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v135, v56
	v_fma_f32 v28, v28, v140, v53
	v_fma_f32 v31, v31, v137, v66
	v_fma_f32 v34, v34, v142, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v65, v22, s2
	v_cndmask_b32_e64 v23, v60, v23, s2
	v_cndmask_b32_e64 v26, v57, v26, s2
	v_cndmask_b32_e64 v27, v52, v27, s2
	v_cndmask_b32_e64 v32, v51, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v44, v33, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v44, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v79, s2
	v_cndmask_b32_e64 v43, v43, v48, s2
	v_cndmask_b32_e64 v25, v56, v25, s2
	v_cndmask_b32_e64 v28, v53, v28, s2
	v_cndmask_b32_e64 v31, v66, v31, s2
	v_cndmask_b32_e64 v34, v45, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v41
	v_dual_mul_f32 v48, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v26
	v_dual_mul_f32 v56, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	v_mul_f32_e32 v64, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v56
	v_mul_f32_e32 v45, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v18
	v_dual_mul_f32 v52, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v28
	v_dual_mul_f32 v60, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v51
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v61
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v64
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cndmask_b32_e64 v53, 0, 0x42800000, s7
	v_cndmask_b32_e64 v56, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v48
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v17
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v60
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v61, 0, 0x42800000, s11
	v_cndmask_b32_e64 v64, 0, 0x42800000, s14
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v48, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v65
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, s8
	v_cndmask_b32_e64 v57, 0, 0x42800000, s9
	v_cndmask_b32_e64 v60, 0, 0x42800000, s12
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v44, v44
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v33
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v56, v56
	v_cndmask_b32_e64 v65, 0, 0x42800000, s13
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v23
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v36, v36, v66
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v28
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v31
	v_exp_f32_e32 v51, v51
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s1
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v64, v64
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s2
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v34 :: v_dual_add_f32 v36, 1.0, v36
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s5
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v35, v35, v68
	v_ldexp_f32 v44, v44, v69
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, s14
	v_ldexp_f32 v47, v47, v72
	v_ldexp_f32 v56, v56, v79
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s6
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v41, v41, v70
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v36, v36, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s12
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v51, v51, v74
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_add_f32 v44, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v53, v76
	v_ldexp_f32 v64, v64, v83
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v56, 1.0, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s9
	v_ldexp_f32 v45, v45, v73
	v_ldexp_f32 v48, v48, v75
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v100, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s11
	v_ldexp_f32 v60, v60, v81
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v35, v35, v17
	v_div_scale_f32 v72, null, v44, v44, v20
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_add_f32 v64, 1.0, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v56, v56, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v52, v77
	v_ldexp_f32 v57, v57, v78
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v41, v41, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v61, v61, v80
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v47, v47, v22
	v_div_scale_f32 v80, null, v51, v51, v24
	v_rcp_f32_e32 v101, v69
	v_rcp_f32_e32 v102, v72
	v_div_scale_f32 v98, null, v64, v64, v33
	v_rcp_f32_e32 v111, v90
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v45, v45, v21
	v_div_scale_f32 v84, null, v53, v53, v26
	v_rcp_f32_e32 v103, v74
	v_fma_f32 v116, -v66, v100, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v104, v76
	v_rcp_f32_e32 v106, v80
	v_div_scale_f32 v94, null, v60, v60, v31
	v_rcp_f32_e32 v115, v98
	v_rcp_f32_e32 v105, v78
	v_rcp_f32_e32 v108, v84
	v_fmac_f32_e32 v100, v116, v100
	v_div_scale_f32 v88, null, v57, v57, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v117, -v69, v101, 1.0
	v_div_scale_f32 v82, null, v48, v48, v23
	v_fma_f32 v118, -v72, v102, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v113, v94
	v_div_scale_f32 v68, vcc_lo, v18, v36, v18
	v_fma_f32 v127, -v90, v111, 1.0
	v_rcp_f32_e32 v110, v88
	v_fma_f32 v119, -v74, v103, 1.0
	v_div_scale_f32 v70, s0, v17, v35, v17
	v_div_scale_f32 v86, null, v52, v52, v25
	v_fma_f32 v120, -v76, v104, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v80, v106, 1.0
	v_fmac_f32_e32 v101, v117, v101
	v_rcp_f32_e32 v107, v82
	v_fmac_f32_e32 v102, v118, v102
	v_div_scale_f32 v92, null, v61, v61, v32
	v_div_scale_f32 v73, s1, v20, v44, v20
	v_fma_f32 v131, -v98, v115, 1.0
	v_dual_fmac_f32 v111, v127, v111 :: v_dual_mul_f32 v116, v68, v100
	v_div_scale_f32 v75, s2, v19, v41, v19
	v_fma_f32 v121, -v78, v105, 1.0
	v_fma_f32 v124, -v84, v108, 1.0
	v_fmac_f32_e32 v103, v119, v103
	v_div_scale_f32 v77, s3, v22, v47, v22
	v_div_scale_f32 v81, s5, v24, v51, v24
	v_rcp_f32_e32 v109, v86
	v_fmac_f32_e32 v104, v120, v104
	v_div_scale_f32 v96, null, v65, v65, v34
	v_fmac_f32_e32 v106, v122, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v117, v70, v101 :: v_dual_mul_f32 v120, v77, v104
	v_rcp_f32_e32 v112, v92
	v_fma_f32 v129, -v94, v113, 1.0
	v_dual_fmac_f32 v115, v131, v115 :: v_dual_mul_f32 v118, v73, v102
	v_fma_f32 v132, -v66, v116, v68
	v_div_scale_f32 v79, s4, v21, v45, v21
	v_div_scale_f32 v85, s7, v26, v53, v26
	v_fma_f32 v126, -v88, v110, 1.0
	v_dual_fmac_f32 v105, v121, v105 :: v_dual_fmac_f32 v108, v124, v108
	v_dual_mul_f32 v119, v75, v103 :: v_dual_mul_f32 v122, v81, v106
	v_rcp_f32_e32 v114, v96
	v_fma_f32 v133, -v69, v117, v70
	v_fma_f32 v123, -v82, v107, 1.0
	v_div_scale_f32 v95, s12, v31, v60, v31
	v_dual_fmac_f32 v113, v129, v113 :: v_dual_fmac_f32 v116, v132, v100
	v_fma_f32 v134, -v72, v118, v73
	v_dual_fmac_f32 v110, v126, v110 :: v_dual_mul_f32 v121, v79, v105
	v_mul_f32_e32 v124, v85, v108
	v_fma_f32 v135, -v74, v119, v75
	v_fma_f32 v125, -v86, v109, 1.0
	v_fma_f32 v138, -v80, v122, v81
	v_fmac_f32_e32 v117, v133, v101
	v_div_scale_f32 v83, s6, v23, v48, v23
	v_div_scale_f32 v99, s14, v33, v64, v33
	v_fma_f32 v128, -v92, v112, 1.0
	v_fmac_f32_e32 v107, v123, v107
	v_fma_f32 v136, -v76, v120, v77
	v_div_scale_f32 v89, s9, v28, v57, v28
	v_dual_mul_f32 v129, v95, v113 :: v_dual_fmac_f32 v118, v134, v102
	v_fma_f32 v66, -v66, v116, v68
	v_fma_f32 v140, -v84, v124, v85
	v_fmac_f32_e32 v119, v135, v103
	v_div_scale_f32 v87, s8, v25, v52, v25
	v_fma_f32 v130, -v96, v114, 1.0
	v_dual_fmac_f32 v109, v125, v109 :: v_dual_fmac_f32 v122, v138, v106
	v_fma_f32 v68, -v69, v117, v70
	v_div_scale_f32 v93, s11, v32, v61, v32
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_mul_f32 v123, v83, v107
	v_dual_mul_f32 v126, v89, v110 :: v_dual_mul_f32 v131, v99, v115
	v_fmac_f32_e32 v120, v136, v104
	v_div_scale_f32 v91, s10, v27, v56, v27
	v_fma_f32 v137, -v78, v121, v79
	v_fma_f32 v69, -v72, v118, v73
	v_div_fmas_f32 v66, v66, v100, v116
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v124, v140, v108
	v_fma_f32 v70, -v74, v119, v75
	v_div_scale_f32 v97, s13, v34, v65, v34
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v125, v87, v109
	v_mul_f32_e32 v128, v93, v112
	v_div_fmas_f32 v68, v68, v101, v117
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v139, -v82, v123, v83
	v_fma_f32 v72, -v76, v120, v77
	v_dual_mul_f32 v127, v91, v111 :: v_dual_mul_f32 v130, v97, v114
	v_fma_f32 v142, -v88, v126, v89
	v_fmac_f32_e32 v121, v137, v105
	v_div_fmas_f32 v69, v69, v102, v118
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v18, v66, v36, v18
	v_div_fmas_f32 v36, v70, v103, v119
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v141, -v86, v125, v87
	v_fma_f32 v144, -v92, v128, v93
	v_fmac_f32_e32 v123, v139, v107
	v_div_fixup_f32 v17, v68, v35, v17
	v_div_fmas_f32 v35, v72, v104, v120
	v_fma_f32 v143, -v90, v127, v91
	v_fmac_f32_e32 v126, v142, v110
	v_fma_f32 v73, -v78, v121, v79
	v_fma_f32 v74, -v80, v122, v81
	v_fma_f32 v146, -v96, v130, v97
	v_fmac_f32_e32 v125, v141, v109
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v145, -v94, v129, v95
	v_fma_f32 v147, -v98, v131, v99
	v_fmac_f32_e32 v128, v144, v112
	v_fma_f32 v75, -v82, v123, v83
	v_div_fixup_f32 v20, v69, v44, v20
	v_div_fixup_f32 v22, v35, v47, v22
	v_dual_fmac_f32 v127, v143, v111 :: v_dual_mul_f32 v18, v37, v18
	v_div_fmas_f32 v37, v73, v105, v121
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v76, -v84, v124, v85
	v_div_fixup_f32 v19, v36, v41, v19
	v_div_fmas_f32 v36, v74, v106, v122
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v130, v146, v114
	v_fma_f32 v77, -v86, v125, v87
	v_dual_fmac_f32 v129, v145, v113 :: v_dual_mul_f32 v22, v63, v22
	v_dual_fmac_f32 v131, v147, v115 :: v_dual_mul_f32 v20, v49, v20
	v_div_fmas_f32 v35, v75, v107, v123
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v78, -v88, v126, v89
	v_div_fixup_f32 v21, v37, v45, v21
	v_div_fmas_f32 v37, v76, v108, v124
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v90, v127, v91
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v18.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v40, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v36, v51, v24
	v_div_fmas_f32 v36, v77, v109, v125
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v92, v128, v93
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v20.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v71, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v35, v48, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v22.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v78, v110, v126
	s_mov_b32 vcc_lo, s10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	v_mov_b16_e32 v29.l, v17.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v37, v53, v26
	v_div_fmas_f32 v37, v79, v111, v127
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v94, v129, v95
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v21, v62, v21 :: v_dual_mul_f32 v24, v59, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v36, v52, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v15.l, v19.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v23, v58, v23 :: v_dual_and_b32 v14, 1, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v80, v112, v128
	v_fma_f32 v82, -v96, v130, v97
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v55, v26 :: v_dual_and_b32 v29, 1, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v83, -v98, v131, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_cmp_o_f32_e64 s2, v20, v20
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v18, v18, v30, 0x7fff
	v_mov_b16_e32 v13.l, v21.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v35, v57, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v81, v113, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v20, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v36, v61, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v22, v14, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_add3_u32 v17, v17, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v82, v114, v130
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v19, v19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v20, v67, v20 :: v_dual_and_b32 v13, 1, v13
	v_mul_f32_e32 v8, v8, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v83, v115, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v19, v15, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v30, v60, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s4
	v_cmp_eq_u32_e64 s4, 0, v38
	v_mov_b16_e32 v12.l, v24.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v37, v56, v27
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v54, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v23.h
	v_cmp_o_f32_e64 s5, v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v29, v65, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v21, v13, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v28, v64, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.l, 0x7fff, v15.h, s3
	v_mov_b16_e32 v6.l, v20.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v46, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_mov_b16_e32 v10.l, v26.h
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v17, v50, v27 :: v_dual_and_b32 v12, 1, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v25.h
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v7.l, v8.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s5
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v2.l, v15.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v43, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v42, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v24, v24
	v_cmp_o_f32_e64 s7, v23, v23
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v12, v24, v12, 0x7fff
	v_mov_b16_e32 v5.l, v17.h
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v11, v23, v11, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v2, 1, v2
	v_mov_b16_e32 v1.l, v13.h
	v_and_b32_e32 v0, 0x540054, v0
	v_mov_b16_e32 v3.l, v19.h
	v_cmp_o_f32_e64 s0, v25, v25
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s2
	v_cmp_o_f32_e64 s1, v8, v8
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v9, v25, v9, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cndmask_b32_e64 v8, v14, v18, s4
	v_cndmask_b32_e64 v11, v18, v14, s4
	v_cndmask_b32_e64 v14, 0x3276, v39, s4
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v10, v26, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v17, v17
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v5, v17, v5, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s0
	v_add3_u32 v6, v20, v6, 0x7fff
	v_cndmask_b32_e64 v9, v12, v16, s4
	v_cndmask_b32_e64 v12, v16, v12, s4
	v_lshl_or_b32 v14, v14, 8, v14
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s6, v19, v19
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v2, v15, v2, 0x7fff
	v_add3_u32 v3, v19, v3, 0x7fff
	v_add3_u32 v1, v13, v1, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s3
	v_permlanex16_b32 v6, v12, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x760076, v14
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v12, 4, v12
	v_cndmask_b32_e64 v12, v5, v10, s4
	v_cndmask_b32_e64 v3, v10, v5, s4
	v_cndmask_b32_e64 v5, v7, v2, s4
	v_permlanex16_b32 v11, v11, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v1
	v_cndmask_b32_e64 v14, v2, v7, s4
	v_permlanex16_b32 v7, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v11, v8, v10
	v_perm_b32 v1, v11, v8, v13
	v_perm_b32 v2, v6, v9, v10
	v_perm_b32 v3, v6, v9, v13
	v_perm_b32 v5, v7, v12, v10
	v_perm_b32 v6, v7, v12, v13
	v_perm_b32 v7, v15, v14, v10
	v_perm_b32 v8, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v4, s[24:27], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 163
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9436
; TotalNumSgprs: 49
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
