	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
	v_mov_b32_e32 v129, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v8, 3, v129
	v_and_b32_e32 v2, 24, v8
	v_and_b32_e32 v5, 1, v129
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 2, v129
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v129
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v137, 15, v129
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v1, 4, v5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s26, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s13, v4, v[1:2]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s13, 7, v6
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
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
	v_rcp_iflag_f32_e32 v0, s16
	v_readfirstlane_b32 s16, v0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v0, s13, v3
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s22, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s16, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s16
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
	s_add_i32 s18, s13, 0x7f
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
	s_lshr_b32 s3, s3, 25
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s12, 8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s33, s13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s18, s3
.Ltmp21:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v0, v0, v2, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s45, s26, s27
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s3, s26, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 31
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s12, s45, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s3, s3, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s12, s12, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s30, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, s3, v6
	v_add_nc_u32_e32 v11, s3, v7
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s12, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s30, 32
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, s12, v7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v0, s36, v0
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v12, 0x80000000, v10, s2
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, 32, v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v16, 0x80000000, v11, s2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, 32, v11
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v20, 0x80000000, v6, s2
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, 32, v6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v24, 0x80000000, v7, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, 32, v7
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	buffer_load_b64 v[44:45], v9, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v9, 0x80000000, v10, s3
	v_cndmask_b32_e64 v10, 0x80000000, v11, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[12:15], v12, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v16, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v20, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v24, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[46:47], v0, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[28:31], v9, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v10, s[20:23], 0 offen
	buffer_load_b128 v[36:39], v6, s[20:23], 0 offen
	buffer_load_b128 v[40:43], v7, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v0, v129, 4, 1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v6, 4, v129
	v_bfe_i32 v7, v129, 3, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v9, 0x778, v8
	v_and_b32_e32 v8, 16, v129
	v_and_b32_e32 v0, 0x90, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v10, 0xf70, v6
	v_and_b32_e32 v7, 0x90, v7
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v11, 48, v137
	s_mov_b32 s12, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v65, v0, v9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v9, 16, v137
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v66, v7, v10
	v_lshlrev_b32_e32 v7, 5, v129
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v10, 32, v137
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, 0, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x5f
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v48, 0, v66
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v0, v[44:45] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v48, v[12:15]
	s_waitcnt vmcnt(7)
	ds_store_b128 v48, v[16:19] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v48, v[20:23] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[24:27] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v0, v[46:47] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[28:31] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[32:35] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[36:39] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[40:43] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v41, 0x160, v7
	v_and_b32_e32 v0, 4, v129
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v35, 0xe00, v6, v41
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow1207
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v8
	v_or_b32_e32 v8, s33, v137
	v_or_b32_e32 v9, s33, v9
	v_or_b32_e32 v10, s33, v10
	v_or_b32_e32 v11, s33, v11
	v_and_b32_e32 v143, 0xf0, v129
	s_ashr_i32 s34, s17, 7
	v_or_b32_e32 v221, s26, v129
	v_mul_lo_u32 v8, v8, s34
	v_mul_lo_u32 v245, v9, s34
	v_mul_lo_u32 v199, v10, s34
	v_mul_lo_u32 v200, v11, s34
	v_lshlrev_b32_e32 v131, 2, v143
	v_lshlrev_b32_e32 v147, 1, v129
	v_lshlrev_b32_e32 v148, 5, v5
	v_lshlrev_b32_e32 v130, 1, v143
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s35, s27, 1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:540
	scratch_store_b32 off, v221, off offset:536
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v129, 2, 1
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s16, 5
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s15, 8
	s_lshl_b32 s11, s14, 8
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v7, 0x160, v7
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v0, 0x90, v0
	v_add3_u32 v5, s27, s1, v4
	v_or_b32_e32 v4, s1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v6, 0xe00, v6, v7
	v_add_nc_u32_e32 v3, s33, v3
	v_add3_u32 v10, 0, v131, v148
	v_subrev_nc_u32_e32 v5, s11, v5
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	scratch_store_b32 off, v6, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v6, v6, v0
	v_or_b32_e32 v0, v0, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:556
	scratch_store_b32 off, v6, off offset:552
	v_xor_b32_e32 v0, 16, v6
	scratch_store_b32 off, v7, off offset:648 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s13, v3
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s11, v4
	v_add_nc_u32_e32 v4, 0x80, v5
	v_mul_lo_u32 v5, s13, v5
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v133, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v6, 0x80, v0
	v_mul_lo_u32 v4, s13, v4
	v_mul_lo_u32 v0, s13, v0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v115, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v6, s13, v6
	s_mov_b32 s13, s12
	v_dual_mov_b32 v180, 0 :: v_dual_and_b32 v9, 28, v147
	v_mov_b32_e32 v117, 0
	v_add3_u32 v4, v4, v1, 64
	v_add3_u32 v0, v0, v1, 64
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v111, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:564
	scratch_store_b32 off, v0, off offset:576
	v_add3_u32 v4, v5, v1, 64
	v_add3_u32 v0, v3, v2, 64
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v113, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:568
	scratch_store_b32 off, v0, off offset:580
	v_add3_u32 v4, v6, v1, 64
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v94, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v4, off offset:572 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v1, s13
	v_dual_mov_b32 v2, s14 :: v_dual_mov_b32 v3, s15
	v_mov_b32_e32 v6, s18
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_mov_b32_e32 v7, s19
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:584
	scratch_store_b128 off, v[4:7], off offset:600
	v_add_nc_u32_e32 v0, v10, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:616
	scratch_store_b32 off, v130, off offset:628
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v0, 0, v130
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v239, 0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v135, 0
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v6, 0
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v203, 0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v75, 0
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v147, off offset:636 ; 4-byte Folded Spill
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v29, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v129, off offset:624 ; 4-byte Folded Spill
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v49, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v191, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v238, 0
	v_mov_b32_e32 v162, 0
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v186, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s1, 1
	s_add_i32 s10, s10, -2
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v131, off offset:632
	scratch_store_b32 off, v148, off offset:640
	scratch_store_b32 off, v0, off offset:276
	scratch_store_b32 off, v199, off offset:544
	scratch_store_b32 off, v200, off offset:548
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	s_mov_b32 s11, s30
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v102, off offset:88
	scratch_store_b32 off, v101, off offset:80
	scratch_store_b32 off, v56, off offset:64
	scratch_store_b32 off, v147, off offset:268
	scratch_store_b32 off, v136, off offset:264
	scratch_store_b32 off, v11, off offset:372
	scratch_store_b32 off, v82, off offset:368
	scratch_store_b32 off, v50, off offset:364
	scratch_store_b32 off, v41, off offset:360
	scratch_store_b32 off, v10, off offset:356
	scratch_store_b32 off, v42, off offset:296
	scratch_store_b32 off, v54, off offset:300
	scratch_store_b32 off, v17, off offset:292
	scratch_store_b32 off, v90, off offset:352
	scratch_store_b32 off, v89, off offset:348
	scratch_store_b32 off, v77, off offset:344
	scratch_store_b32 off, v76, off offset:340
	scratch_store_b32 off, v204, off offset:336
	scratch_store_b32 off, v203, off offset:332
	scratch_store_b32 off, v246, off offset:328
	scratch_store_b32 off, v75, off offset:288
	scratch_store_b32 off, v189, off offset:324
	scratch_store_b32 off, v188, off offset:320
	scratch_store_b32 off, v74, off offset:272
	scratch_store_b32 off, v34, off offset:260
	scratch_store_b32 off, v201, off offset:256
	scratch_store_b32 off, v97, off offset:252
	scratch_store_b32 off, v180, off offset:248
	scratch_store_b32 off, v154, off offset:244
	scratch_store_b32 off, v135, off offset:240
	scratch_store_b32 off, v134, off offset:236
	scratch_store_b32 off, v133, off offset:232
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v132, off offset:228
	scratch_store_b32 off, v45, off offset:224
	scratch_store_b32 off, v122, off offset:220
	scratch_store_b32 off, v121, off offset:216
	scratch_store_b32 off, v117, off offset:212
	scratch_store_b32 off, v115, off offset:208
	scratch_store_b32 off, v113, off offset:204
	scratch_store_b32 off, v111, off offset:200
	scratch_store_b32 off, v106, off offset:196
	scratch_store_b32 off, v81, off offset:192
	scratch_store_b32 off, v79, off offset:188
	scratch_store_b32 off, v78, off offset:184
	scratch_store_b32 off, v63, off offset:180
	scratch_store_b32 off, v62, off offset:176
	scratch_store_b32 off, v61, off offset:172
	scratch_store_b32 off, v60, off offset:168
	scratch_store_b32 off, v30, off offset:164
	scratch_store_b32 off, v59, off offset:160
	scratch_store_b32 off, v58, off offset:156
	scratch_store_b32 off, v29, off offset:152
	scratch_store_b32 off, v49, off offset:148
	scratch_store_b32 off, v52, off offset:144
	scratch_store_b32 off, v57, off offset:140
	scratch_store_b32 off, v48, off offset:136
	scratch_store_b32 off, v38, off offset:132
	scratch_store_b32 off, v37, off offset:128
	scratch_store_b32 off, v47, off offset:124
	scratch_store_b32 off, v33, off offset:120
	scratch_store_b32 off, v26, off offset:116
	scratch_store_b32 off, v36, off offset:112
	scratch_store_b32 off, v40, off offset:108
	scratch_store_b32 off, v25, off offset:104
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v32, off offset:100
	scratch_store_b32 off, v31, off offset:96
	scratch_store_b32 off, v39, off offset:92
	scratch_store_b32 off, v20, off offset:84
	scratch_store_b32 off, v28, off offset:76
	scratch_store_b32 off, v27, off offset:72
	scratch_store_b32 off, v19, off offset:68
	scratch_store_b32 off, v24, off offset:60
	scratch_store_b32 off, v23, off offset:56
	scratch_store_b32 off, v16, off offset:52
	scratch_store_b32 off, v15, off offset:48
	scratch_store_b32 off, v22, off offset:44
	scratch_store_b32 off, v21, off offset:40
	scratch_store_b32 off, v13, off offset:36
	scratch_store_b32 off, v12, off offset:32
	scratch_store_b32 off, v107, off offset:28
	scratch_store_b32 off, v53, off offset:24
	scratch_store_b32 off, v100, off offset:20
	scratch_store_b32 off, v46, off offset:16
	scratch_store_b32 off, v93, off offset:12
	scratch_store_b32 off, v9, off offset:8
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v97, v182 :: v_dual_add_nc_u32 v0, s11, v0
	buffer_load_b64 v[25:26], v0, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 44-byte Folded Reload
	scratch_load_b32 v9, off, off offset:556
	scratch_load_b32 v85, off, off offset:560
	scratch_load_b32 v84, off, off offset:552
	scratch_load_b128 v[212:215], off, off offset:584
	scratch_load_b128 v[216:219], off, off offset:600
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s48, v9
	v_xor_b32_e32 v9, 16, v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v53, s12, v84
	v_add_nc_u32_e32 v55, s12, v85
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s30, 31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, s48, v9
	ds_load_b128 v[61:64], v0 offset:512
	ds_load_b128 v[75:78], v54 offset:512
	ds_load_b128 v[79:82], v0 offset:1024
	ds_load_b128 v[108:111], v54 offset:1024
	ds_load_b128 v[208:211], v0 offset:1536
	ds_load_b128 v[187:190], v54 offset:1536
	ds_load_b128 v[45:48], v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[27:30], v53
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[49:52], v54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[31:34], v55
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v0, s31, v84
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s12, s12, 25
	s_mov_b32 s48, s47
	s_add_i32 s12, s30, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 7
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s13, s12, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s1, s1, 0
	s_add_i32 s10, s10, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[27:30], v[45:48], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[27:30], v[61:64], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[35:42], v[27:30], v[79:82], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[27:30], v[208:211], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[31:34], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[31:34], v[75:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[35:42], v[31:34], v[108:111], v[35:42] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[31:34], v[187:190], v[129:136] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[27:30], v53 offset:4096
	ds_load_b128 v[31:34], v55 offset:4096
	s_lshl_b32 s14, s1, 13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, 32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[27:30], v[45:48], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[27:30], v[61:64], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[27:30], v[79:82], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[27:30], v[208:211], v[212:219] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v27, s31, v85
	ds_load_b128 v[197:200], v0
	ds_load_b128 v[201:204], v27
	ds_load_b128 v[227:230], v0 offset:4096
	ds_load_b128 v[240:243], v27 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v10
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[31:34], v[49:52], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[31:34], v[75:78], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[31:34], v[108:111], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[31:34], v[187:190], v[167:174] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v9, v221, s13, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v245, s12, 1
	s_mov_b32 s31, s44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[197:200], v[45:48], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[27:34], v[227:230], v[45:48], v[212:219] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[84:91], v[201:204], v[49:52], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[27:34], v[240:243], v[49:52], v[27:34] neg_lo:[1,1,0]
	v_mov_b32_e32 v45, v125
	v_wmma_i32_16x16x16_iu8 v[121:128], v[197:200], v[61:64], v[212:219] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[175:182], v[227:230], v[61:64], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[201:204], v[75:78], v[121:128] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[175:182], v[240:243], v[75:78], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[227:230], v[79:82], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[246:253], v[197:200], v[79:82], v[212:219] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[99:106], v[240:243], v[108:111], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[246:253], v[201:204], v[108:111], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[197:200], v[208:211], v[212:219] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	v_add_nc_u32_e32 v13, s27, v221
	v_wmma_i32_16x16x16_iu8 v[111:118], v[201:204], v[187:190], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[227:230], v[208:211], v[212:219] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v84
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v13, v13, s13, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[199:206], v[240:243], v[187:190], v[199:206] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v56
	v_cvt_f32_i32_e32 v242, v74
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v87
	v_cvt_f32_i32_e32 v208, v175
	v_cvt_f32_i32_e32 v197, v249
	v_cvt_f32_i32_e32 v175, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v74, v148
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v75, v147
	v_cvt_f32_i32_e32 v76, v150
	v_cvt_f32_i32_e32 v77, v149
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v249, v100
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v89
	v_cvt_f32_i32_e32 v250, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v130
	v_cvt_f32_i32_e32 v56, v134
	v_cvt_f32_i32_e32 v100, v133
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v102, v135
	v_cvt_f32_i32_e32 v62, v58
	v_cvt_f32_i32_e32 v61, v57
	v_cvt_f32_i32_e32 v216, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v91
	v_cvt_f32_i32_e32 v91, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v217, v19
	v_cvt_f32_i32_e32 v218, v22
	v_cvt_f32_i32_e32 v219, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v90, v129
	v_cvt_f32_i32_e32 v58, v24
	v_cvt_f32_i32_e32 v57, v23
	v_cvt_f32_i32_e32 v52, v68
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	v_cvt_f32_i32_e32 v54, v154
	v_cvt_f32_i32_e32 v49, v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v209, v177
	v_cvt_f32_i32_e32 v210, v179
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v53
	v_cvt_f32_i32_e32 v53, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v198, v247
	v_cvt_f32_i32_e32 v230, v248
	v_cvt_f32_i32_e32 v248, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v60
	v_cvt_f32_i32_e32 v60, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v80, v114
	v_cvt_f32_i32_e32 v87, v116
	v_cvt_f32_i32_e32 v88, v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v59
	v_cvt_f32_i32_e32 v59, v17
	v_cvt_f32_i32_e32 v108, v170
	v_cvt_f32_i32_e32 v109, v169
	v_cvt_f32_i32_e32 v112, v172
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v114, v171
	v_cvt_f32_i32_e32 v116, v174
	v_cvt_f32_i32_e32 v118, v173
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v67, v200
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v27
	v_cvt_f32_i32_e32 v247, v199
	v_cvt_f32_i32_e32 v68, v202
	v_cvt_f32_i32_e32 v84, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v63, v55
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	scratch_load_b32 v30, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v70
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v211, v181
	v_cvt_f32_i32_e32 v70, v111
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v64, v206
	v_cvt_f32_i32_e32 v86, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v47, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v151
	v_cvt_f32_i32_e32 v240, v72
	v_cvt_f32_i32_e32 v241, v71
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v37
	v_cvt_f32_i32_e32 v37, v152
	v_cvt_f32_i32_e32 v243, v73
	v_cvt_f32_i32_e32 v82, v36
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v36, v35
	v_cvt_f32_i32_e32 v110, v40
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v33, v42
	v_cvt_f32_i32_e32 v42, v132
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v229, v246
	v_cvt_f32_i32_e32 v227, v251
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v122
	v_cvt_f32_i32_e32 v228, v253
	v_cvt_f32_i32_e32 v253, v106
	v_cvt_f32_i32_e32 v71, v113
	v_cvt_f32_i32_e32 v72, v115
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v121
	v_cvt_f32_i32_e32 v73, v117
	v_cvt_f32_i32_e32 v69, v204
	v_cvt_f32_i32_e32 v85, v203
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v124
	v_cvt_f32_i32_e32 v124, v103
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v123
	v_cvt_f32_i32_e32 v123, v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v101, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v126
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v125
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v128
	v_cvt_f32_i32_e32 v128, v252
	v_cvt_f32_i32_e32 v252, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v104, v168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v127
	v_cvt_f32_i32_e32 v127, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v167
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v176
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v178
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v180
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v182
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(1)
	ds_store_b32 v30, v9 offset:36864
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, v0, s12, 1
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, v0, s12, 1
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v0, s12, 1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	scratch_load_b32 v0, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s12, s1, 11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s13, s12, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x3
	buffer_load_u16 v121, v9, s[36:39], 0 offen
	buffer_load_u16 v122, v10, s[36:39], 0 offen
	buffer_load_u16 v125, v11, s[36:39], 0 offen
	buffer_load_u16 v126, v12, s[36:39], 0 offen
	s_mov_b32 s12, s46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s46, s14, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s47, s13, 0x8000
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s44, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s10, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v103, 16, v126
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v9, s11, v0
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s11, v0
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	scratch_load_b32 v0, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s11, v0
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	scratch_load_b32 v0, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s11, v0
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[129:132], v9, s[20:23], 0 offen
	buffer_load_b128 v[133:136], v10, s[20:23], 0 offen
	buffer_load_b128 v[147:150], v11, s[20:23], 0 offen
	buffer_load_b128 v[151:154], v12, s[20:23], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v99, v13, s[40:43], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(1)
	ds_load_b128 v[21:24], v0 offset:36864
	ds_load_b128 v[17:20], v0 offset:36880
	ds_load_b128 v[13:16], v0 offset:37376
	ds_load_b128 v[9:12], v0 offset:37392
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v30, v99 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v99, s13, v65
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[167:170], v0 offset:36864
	ds_load_b128 v[171:174], v0 offset:36880
	ds_load_b128 v[176:179], v0 offset:37376
	ds_load_b128 v[199:202], v0 offset:37392
	v_mov_b32_e32 v0, v94
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v99, v[25:26] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v99, 16, v125
	v_dual_mov_b32 v55, v66 :: v_dual_lshlrev_b32 v26, 16, v122
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v34, v18, v103 :: v_dual_add_nc_u32 v25, s46, v66
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v25, v[129:132]
	ds_store_b128 v25, v[133:136] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v25, v[147:150] offset:16384
	ds_store_b128 v25, v[151:154] offset:20480
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v152, v20, v99 :: v_dual_lshlrev_b32 v25, 16, v121
	v_mul_f32_e32 v129, v21, v99
	v_mul_f32_e32 v205, v16, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v206, v15, v26 :: v_dual_mul_f32 v111, v21, v25
	v_dual_mul_f32 v154, v14, v25 :: v_dual_mul_f32 v121, v21, v26
	v_mul_f32_e32 v21, v21, v103
	v_dual_mul_f32 v147, v17, v26 :: v_dual_mul_f32 v46, v16, v103
	v_mul_f32_e32 v181, v16, v25
	v_dual_mul_f32 v182, v15, v25 :: v_dual_mul_f32 v185, v16, v99
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(8)
	v_mul_f32_e32 v160, v167, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v213, v15, v99
	v_dual_mul_f32 v16, v15, v103 :: v_dual_mul_f32 v189, v9, v25
	v_dual_mul_f32 v40, v12, v103 :: v_dual_mul_f32 v221, v11, v25
	v_mul_f32_e32 v155, v9, v26
	v_dual_mov_b32 v15, v92 :: v_dual_mul_f32 v92, v9, v99
	v_dual_mul_f32 v9, v9, v103 :: v_dual_mul_f32 v106, v22, v25
	v_mul_f32_e32 v113, v24, v25
	v_mul_f32_e32 v115, v23, v25
	v_mul_f32_e32 v117, v22, v26
	v_mul_f32_e32 v122, v24, v26
	v_dual_mul_f32 v125, v23, v26 :: v_dual_mul_f32 v126, v22, v99
	v_mul_f32_e32 v130, v24, v99
	v_dual_mul_f32 v131, v23, v99 :: v_dual_mul_f32 v180, v13, v25
	v_mul_f32_e32 v22, v22, v103
	v_mul_f32_e32 v30, v24, v103
	v_dual_mul_f32 v23, v23, v103 :: v_dual_mul_f32 v204, v13, v26
	v_mul_f32_e32 v132, v18, v25
	v_dual_mul_f32 v133, v17, v25 :: v_dual_mul_f32 v246, v14, v99
	v_mul_f32_e32 v134, v20, v25
	v_dual_mul_f32 v135, v19, v25 :: v_dual_mul_f32 v50, v14, v103
	v_mul_f32_e32 v136, v18, v26
	v_mul_f32_e32 v148, v20, v26
	v_dual_mul_f32 v149, v19, v26 :: v_dual_mul_f32 v188, v10, v25
	v_mul_f32_e32 v150, v18, v99
	v_dual_mul_f32 v151, v17, v99 :: v_dual_mul_f32 v214, v12, v25
	v_dual_mul_f32 v153, v19, v99 :: v_dual_mul_f32 v156, v10, v26
	v_mul_f32_e32 v24, v17, v103
	v_mul_f32_e32 v20, v20, v103
	v_mul_f32_e32 v19, v19, v103
	v_mul_f32_e32 v203, v14, v26
	v_mul_f32_e32 v251, v13, v99
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v41, v13, v103 :: v_dual_mul_f32 v138, v172, v25
	v_dual_mov_b32 v13, v2 :: v_dual_mul_f32 v66, v169, v26
	v_mov_b32_e32 v2, v6
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v8, v5
	v_dual_mov_b32 v5, v245 :: v_dual_mul_f32 v194, v167, v99
	v_dual_mul_f32 v245, v12, v26 :: v_dual_mul_f32 v196, v169, v99
	v_mul_f32_e32 v93, v11, v26
	v_dual_mul_f32 v95, v10, v99 :: v_dual_mul_f32 v222, v171, v25
	v_dual_mul_f32 v107, v12, v99 :: v_dual_mul_f32 v234, v173, v25
	v_dual_mul_f32 v119, v11, v99 :: v_dual_mul_f32 v220, v173, v26
	v_dual_mul_f32 v39, v10, v103 :: v_dual_mul_f32 v212, v171, v26
	v_dual_mul_f32 v12, v11, v103 :: v_dual_mul_f32 v159, v168, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v226, v171, v99 :: v_dual_mul_f32 v231, v170, v25
	v_dual_mul_f32 v236, v173, v99 :: v_dual_mov_b32 v235, v146
	v_dual_mul_f32 v146, v169, v25 :: v_dual_mul_f32 v237, v168, v26
	v_mul_f32_e32 v51, v167, v26
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v225, v170, v26 :: v_dual_mul_f32 v224, v179, v25
	v_dual_mul_f32 v187, v168, v99 :: v_dual_mul_f32 v96, v179, v26
	v_dual_mul_f32 v195, v170, v99 :: v_dual_mul_f32 v14, v176, v26
	v_mul_f32_e32 v168, v168, v103
	v_dual_mul_f32 v167, v167, v103 :: v_dual_mul_f32 v232, v178, v26
	v_mul_f32_e32 v170, v170, v103
	v_mul_f32_e32 v169, v169, v103
	v_dual_mul_f32 v183, v174, v25 :: v_dual_mul_f32 v164, v177, v99
	v_mul_f32_e32 v207, v172, v26
	v_mul_f32_e32 v215, v174, v26
	v_mul_f32_e32 v223, v172, v99
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v233, v174, v99 :: v_dual_mul_f32 v94, v200, v25
	v_mul_f32_e32 v172, v172, v103
	v_dual_mul_f32 v171, v171, v103 :: v_dual_mul_f32 v120, v202, v25
	v_mul_f32_e32 v174, v174, v103
	v_dual_mul_f32 v173, v173, v103 :: v_dual_mul_f32 v142, v199, v26
	v_dual_mov_b32 v11, v3 :: v_dual_mov_b32 v10, v98
	v_dual_mul_f32 v3, v177, v25 :: v_dual_mul_f32 v166, v200, v99
	v_dual_mul_f32 v143, v176, v25 :: v_dual_mul_f32 v190, v199, v99
	v_mov_b32_e32 v17, v1
	v_dual_mul_f32 v18, v177, v26 :: v_dual_mul_f32 v165, v176, v99
	v_mul_f32_e32 v137, v179, v99
	v_mul_f32_e32 v35, v178, v99
	v_mul_f32_e32 v177, v177, v103
	v_mul_f32_e32 v176, v176, v103
	v_mul_f32_e32 v179, v179, v103
	v_dual_mul_f32 v98, v199, v25 :: v_dual_mul_f32 v141, v200, v26
	v_mul_f32_e32 v161, v202, v26
	v_dual_mul_f32 v26, v201, v26 :: v_dual_mul_f32 v193, v202, v99
	v_mul_f32_e32 v99, v201, v99
	v_mul_f32_e32 v200, v200, v103
	v_mul_f32_e32 v199, v199, v103
	v_mul_f32_e32 v202, v202, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v97, v182, v63 :: v_dual_fmac_f32 v192, v9, v114
	v_mov_b32_e32 v1, v254
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v254, v178, v25
	v_dual_mul_f32 v178, v178, v103 :: v_dual_mul_f32 v25, v201, v25
	v_mul_f32_e32 v103, v201, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v201, off, off offset:256
	scratch_load_b32 v81, off, off offset:304
	scratch_load_b32 v79, off, off offset:444
	v_mov_b32_e32 v182, v97
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v97, off, off offset:252
	scratch_load_b32 v63, off, off offset:180
	scratch_load_b32 v9, off, off offset:8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v145, v164, v249
	v_fmac_f32_e32 v163, v200, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v244, v95, v37
	v_fmac_f32_e32 v238, v41, v105
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v184, v178, v84
	scratch_load_b32 v37, off, off offset:128 ; 4-byte Folded Reload
	v_fmac_f32_e32 v140, v202, v64
	v_fmac_f32_e32 v158, v142, v210
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v186, v12, v118
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v44, v223, v227
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v81, v111, v79
	scratch_store_b32 off, v81, off offset:304 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:308
	scratch_load_b32 v111, off, off offset:440
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v106, v111
	scratch_store_b32 off, v81, off offset:308 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v106, off, off offset:196
	scratch_load_b32 v81, off, off offset:312
	scratch_load_b32 v79, off, off offset:452
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v106, v205, v48
	scratch_load_b32 v48, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v81, v115, v79
	scratch_store_b32 off, v81, off offset:312 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:316
	scratch_load_b32 v79, off, off offset:448
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v48, v251, v75
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v113, v79
	scratch_store_b32 off, v81, off offset:316 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:280
	scratch_load_b32 v79, off, off offset:460
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v133, v79
	scratch_store_b32 off, v81, off offset:280 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v133, off, off offset:232
	scratch_load_b32 v81, off, off offset:284
	scratch_load_b32 v79, off, off offset:456
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v133, v117, v60
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v132, v79
	scratch_store_b32 off, v81, off offset:284 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v132, off, off offset:228
	scratch_load_b32 v81, off, off offset:4
	scratch_load_b32 v79, off, off offset:468
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v132, v121, v59
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v121, off, off offset:216
	scratch_load_b32 v59, off, off offset:160
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v81, v135, v79
	scratch_store_b32 off, v81, off offset:4 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v135, off, off offset:240
	scratch_load_b32 v81, off, off
	scratch_load_b32 v79, off, off offset:464
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v121, v147, v219
	scratch_load_b32 v147, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v81, v134, v79
	scratch_store_b32 off, v81, off         ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v134, off, off offset:236
	scratch_load_b32 v81, off, off offset:276
	scratch_load_b32 v79, off, off offset:504
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v180, v79
	scratch_store_b32 off, v81, off offset:276 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v180, off, off offset:248
	scratch_load_b32 v79, off, off offset:188
	scratch_load_b32 v81, off, off offset:508
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v180, v188, v62
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v62, off, off offset:176
	scratch_load_b32 v111, off, off offset:524
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v79, v245, v242
	v_mov_b32_e32 v245, v5
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v8, v4
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v2, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v162, v199, v85
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v62, v129, v36
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v221, v111
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v111, off, off offset:520
	scratch_load_b32 v221, off, off offset:536
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v135, v214, v111
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v117, off, off offset:212
	scratch_load_b32 v115, off, off offset:208
	scratch_load_b32 v113, off, off offset:204
	scratch_load_b32 v111, off, off offset:200
	scratch_load_b32 v60, off, off offset:168
	v_fmac_f32_e32 v97, v181, v78
	scratch_load_b32 v78, off, off offset:184 ; 4-byte Folded Reload
	v_fmac_f32_e32 v201, v154, v81
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v154, off, off offset:244
	scratch_load_b32 v81, off, off offset:192
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v115, v149, v57
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v113, v203, v52
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v111, v204, v49
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v203, off, off offset:332
	scratch_load_b32 v49, off, off offset:148
	scratch_load_b32 v52, off, off offset:144
	v_fmac_f32_e32 v117, v148, v58
	scratch_load_b32 v58, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v154, v189, v61
	scratch_load_b32 v61, off, off offset:172 ; 4-byte Folded Reload
	v_fmac_f32_e32 v78, v93, v243
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:360
	scratch_load_b32 v93, off, off offset:12
	v_fmac_f32_e32 v60, v131, v31
	scratch_load_b32 v31, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v81, v206, v47
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v47, off, off offset:124
	scratch_load_b32 v204, off, off offset:336
	scratch_load_b32 v57, off, off offset:140
	v_fmac_f32_e32 v43, v213, v77
	scratch_load_b32 v77, off, off offset:344 ; 4-byte Folded Reload
	v_dual_mov_b32 v95, v10 :: v_dual_fmac_f32 v144, v165, v91
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v75, off, off offset:288
	scratch_load_b32 v189, off, off offset:324
	scratch_load_b32 v188, off, off offset:320
	v_fmac_f32_e32 v191, v40, v116
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v95, v232, v209
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v49, v152, v33 :: v_dual_fmac_f32 v52, v153, v27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:120
	scratch_load_b32 v27, off, off offset:72
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v61, v130, v32
	scratch_load_b32 v32, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v93, v50, v104
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:364
	scratch_load_b32 v13, off, off offset:36
	v_fmac_f32_e32 v63, v126, v82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v82, off, off offset:368
	scratch_load_b32 v36, off, off offset:112
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v57, v246, v74
	scratch_load_b32 v74, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v75, v187, v198
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v189, v194, v229
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v188, v195, v197 :: v_dual_fmac_f32 v33, v166, v252
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v27, v21, v90
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:352
	scratch_load_b32 v21, off, off offset:40
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v32, v107, v54
	scratch_load_b32 v54, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v13, v174, v88 :: v_dual_fmac_f32 v36, v92, v38
	scratch_load_b32 v38, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v58, v151, v28
	scratch_load_b32 v28, off, off offset:76 ; 4-byte Folded Reload
	v_mov_b32_e32 v92, v15
	v_fmac_f32_e32 v31, v119, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:24
	scratch_load_b32 v15, off, off offset:48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v74, v196, v230
	v_fmac_f32_e32 v139, v103, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v21, v24, v100 :: v_dual_fmac_f32 v38, v137, v250
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v28, v22, v89
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:348
	scratch_load_b32 v22, off, off offset:44
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v53, v19, v102
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:88
	scratch_load_b32 v24, off, off offset:60
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v45, v125, v217 :: v_dual_fmac_f32 v22, v34, v56
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v56, off, off offset:64
	scratch_load_b32 v34, off, off offset:260
	scratch_load_b32 v107, off, off offset:28
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v102, v46, v108 :: v_dual_mov_b32 v125, v45
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:224
	scratch_load_b32 v46, off, off offset:16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v24, v169, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v56, v39, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:32
	scratch_load_b32 v39, off, off offset:392
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v107, v20, v101 :: v_dual_fmac_f32 v34, v226, v175
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v101, off, off offset:80
	scratch_load_b32 v20, off, off offset:84
	scratch_load_b32 v19, off, off offset:68
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v45, v122, v216
	scratch_load_b32 v122, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v12, v173, v73 :: v_dual_fmac_f32 v77, v160, v39
	scratch_load_b32 v39, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v101, v16, v109
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:52
	scratch_load_b32 v100, off, off offset:20
	v_fmac_f32_e32 v47, v185, v76
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:340
	scratch_load_b32 v246, off, off offset:328
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v122, v136, v218
	scratch_load_b32 v136, off, off offset:264 ; 4-byte Folded Reload
	v_dual_fmac_f32 v255, v23, v29 :: v_dual_fmac_f32 v54, v14, v208
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:152
	scratch_load_b32 v23, off, off offset:56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v37, v35, v123
	v_dual_fmac_f32 v20, v167, v70 :: v_dual_fmac_f32 v19, v170, v80
	v_dual_fmac_f32 v15, v171, v72 :: v_dual_fmac_f32 v46, v176, v247
	v_fmac_f32_e32 v9, v179, v68
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v90, v159, v39
	scratch_load_b32 v39, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v16, v172, v87
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v29, v236, v128 :: v_dual_fmac_f32 v76, v146, v39
	scratch_load_b32 v39, off, off offset:380 ; 4-byte Folded Reload
	v_mov_b32_e32 v146, v235
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v146, v26, v211
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v89, v231, v39
	scratch_load_b32 v39, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v6, v222, v39
	scratch_load_b32 v39, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v147, v156, v240 :: v_dual_fmac_f32 v2, v138, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v39, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v8, v234, v39
	scratch_load_b32 v39, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v183, v39
	scratch_load_b32 v39, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v5, v143, v39
	scratch_load_b32 v39, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v7, v3, v39
	v_mov_b32_e32 v3, v11
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v11, off, off offset:372
	scratch_load_b32 v10, off, off offset:356
	scratch_load_b32 v39, off, off offset:428
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v41, v254, v39 :: v_dual_mov_b32 v254, v1
	v_mov_b32_e32 v1, v17
	scratch_load_b32 v17, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v239, v224, v17
	scratch_load_b32 v17, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v3, v98, v17
	scratch_load_b32 v17, off, off offset:416 ; 4-byte Folded Reload
	v_mov_b32_e32 v98, v95
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v10, v94, v17
	v_mov_b32_e32 v94, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:436
	scratch_load_b32 v17, off, off offset:292
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v136, v155, v241
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v100, v177, v67
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v50, v25, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:104
	scratch_load_b32 v39, off, off offset:92
	scratch_load_b32 v0, off, off offset:420
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v59, v150, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v25, v99, v127
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v39, v168, v248
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v82, v120, v0
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v94, v51, v0
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v1, v237, v0
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v204, v66, v0
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v66, v55 :: v_dual_fmac_f32 v11, v225, v0
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v246, v212, v0
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v203, v207, v0
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v92, v220, v0
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v254, v215, v0
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v18, v0
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v23, v30, v42
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:296
	scratch_load_b32 v30, off, off offset:164
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v42, v96, v0
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v30, v233, v228
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v141, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v26, off, off offset:116
	scratch_load_b32 v40, off, off offset:108
	scratch_load_b32 v0, off, off offset:528
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v26, v190, v124
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v40, v193, v253
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v157, v161, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v136, off offset:264
	scratch_store_b32 off, v147, off offset:268
	v_dual_mov_b32 v223, v82 :: v_dual_mov_b32 v236, v41
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v199, off, off offset:544
	scratch_load_b32 v200, off, off offset:548
	scratch_load_b32 v130, off, off offset:628
	scratch_load_b32 v131, off, off offset:632
	scratch_load_b32 v147, off, off offset:636
	scratch_load_b32 v148, off, off offset:640
	scratch_load_b32 v35, off, off offset:644
	scratch_load_b32 v41, off, off offset:648
	scratch_load_b32 v165, off, off offset:4
	scratch_load_b32 v64, off, off
	scratch_load_b32 v65, off, off offset:312
	scratch_load_b32 v66, off, off offset:316
	scratch_load_b32 v164, off, off offset:304
	scratch_load_b32 v138, off, off offset:308
	scratch_load_b32 v129, off, off offset:624
	s_add_i32 s36, s11, 64
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v56, off offset:64
	scratch_store_b32 off, v101, off offset:80
	scratch_store_b32 off, v102, off offset:88
	v_dual_mov_b32 v215, v1 :: v_dual_mov_b32 v226, v3
	v_mov_b32_e32 v233, v10
	v_dual_mov_b32 v207, v11 :: v_dual_mov_b32 v212, v94
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v220, v50 :: v_dual_and_b32 v143, 0xf0, v129
	v_and_b32_e32 v0, 4, v129
	v_and_b32_e32 v137, 15, v129
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v162, 0
	v_mov_b32_e32 v238, 0
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v46, 0
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v24, 0
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v16, 0
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v89, 0
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v77, 0
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow1208
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v254, off offset:908
	scratch_store_b32 off, v92, off offset:892
	scratch_store_b32 off, v83, off offset:888
	scratch_store_b32 off, v54, off offset:300
	scratch_store_b32 off, v42, off offset:296
	scratch_store_b32 off, v98, off offset:884
	scratch_store_b32 off, v17, off offset:292
	scratch_store_b32 off, v75, off offset:288
	scratch_store_b32 off, v74, off offset:272
	scratch_store_b32 off, v44, off offset:856
	scratch_store_b32 off, v34, off offset:260
	scratch_store_b32 off, v201, off offset:256
	scratch_store_b32 off, v45, off offset:224
	scratch_store_b32 off, v40, off offset:108
	scratch_store_b32 off, v39, off offset:92
	scratch_store_b32 off, v60, off offset:168
	scratch_store_b32 off, v61, off offset:172
	scratch_store_b32 off, v58, off offset:156
	scratch_store_b32 off, v30, off offset:164
	scratch_store_b32 off, v59, off offset:160
	scratch_store_b32 off, v29, off offset:152
	scratch_store_b32 off, v49, off offset:148
	scratch_store_b32 off, v52, off offset:144
	scratch_store_b32 off, v57, off offset:140
	scratch_store_b32 off, v48, off offset:136
	scratch_store_b32 off, v38, off offset:132
	scratch_store_b32 off, v37, off offset:128
	scratch_store_b32 off, v47, off offset:124
	scratch_store_b32 off, v43, off offset:372
	scratch_store_b32 off, v33, off offset:120
	scratch_store_b32 off, v26, off offset:116
	scratch_store_b32 off, v244, off offset:368
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v36, off offset:112
	scratch_store_b32 off, v25, off offset:104
	scratch_store_b32 off, v32, off offset:100
	scratch_store_b32 off, v31, off offset:96
	scratch_store_b32 off, v20, off offset:84
	scratch_store_b32 off, v28, off offset:76
	scratch_store_b32 off, v27, off offset:72
	scratch_store_b32 off, v19, off offset:68
	scratch_store_b32 off, v24, off offset:60
	scratch_store_b32 off, v23, off offset:56
	scratch_store_b32 off, v255, off offset:356
	scratch_store_b32 off, v16, off offset:52
	scratch_store_b32 off, v15, off offset:48
	scratch_store_b32 off, v22, off offset:44
	scratch_store_b32 off, v21, off offset:40
	scratch_store_b32 off, v13, off offset:36
	scratch_store_b32 off, v12, off offset:32
	scratch_store_b32 off, v107, off offset:28
	scratch_store_b32 off, v53, off offset:24
	scratch_store_b32 off, v100, off offset:20
	scratch_store_b32 off, v46, off offset:16
	scratch_store_b32 off, v93, off offset:12
	scratch_store_b32 off, v238, off offset:332
	scratch_store_b32 off, v9, off offset:8
	scratch_store_b32 off, v97, off offset:252
	scratch_store_b32 off, v135, off offset:240
	scratch_store_b32 off, v134, off offset:236
	scratch_store_b32 off, v133, off offset:232
	scratch_store_b32 off, v132, off offset:228
	scratch_store_b32 off, v125, off offset:404
	scratch_store_b32 off, v122, off offset:220
	scratch_store_b32 off, v121, off offset:216
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v117, off offset:212
	scratch_store_b32 off, v115, off offset:208
	scratch_store_b32 off, v113, off offset:204
	scratch_store_b32 off, v111, off offset:200
	scratch_store_b32 off, v81, off offset:192
	scratch_store_b32 off, v79, off offset:188
	scratch_store_b32 off, v78, off offset:184
	scratch_store_b32 off, v62, off offset:176
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v244, off, off offset:540 ; 4-byte Folded Reload
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_mov_b32 v251, v2 :: v_dual_mov_b32 v160, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_dual_mov_b32 v248, v6 :: v_dual_mov_b32 v247, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v159, v5 :: v_dual_mov_b32 v190, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s1, 1, v2
	v_mov_b32_e32 v128, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v0, v1, v41
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v238, v35, v1
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v51, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v33, 16, v0
	v_add_nc_u32_e32 v1, s48, v0
	v_mov_b32_e32 v185, v8
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v36, 0
	v_add_nc_u32_e32 v2, s48, v33
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[17:20], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[29:32], v2
	ds_load_b128 v[21:24], v2 offset:512
	ds_load_b128 v[13:16], v2 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v2 offset:1536
	scratch_store_b32 off, v34, off offset:312 ; 4-byte Folded Spill
	v_mov_b32_e32 v34, 0
	v_dual_mov_b32 v196, v90 :: v_dual_mov_b32 v195, v89
	v_dual_mov_b32 v194, v77 :: v_dual_mov_b32 v187, v76
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v132, 0
	v_xor_b32_e32 v240, 16, v238
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v35, 0
	scratch_store_b32 off, v36, off offset:304 ; 4-byte Folded Spill
	v_mov_b32_e32 v36, 0
	scratch_store_b32 off, v34, off offset:316 ; 4-byte Folded Spill
	v_mov_b32_e32 v34, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	scratch_store_b32 off, v36, off offset:308 ; 4-byte Folded Spill
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
	v_add_nc_u32_e32 v34, s12, v238
	ds_load_b128 v[58:61], v34
	ds_load_b128 v[120:123], v34 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v41, s23 :: v_dual_add_nc_u32 v62, s12, v240
	v_dual_mov_b32 v40, s22 :: v_dual_mov_b32 v37, s19
	v_dual_mov_b32 v39, s21 :: v_dual_mov_b32 v38, s20
	v_dual_mov_b32 v35, s17 :: v_dual_mov_b32 v36, s18
	v_mov_b32_e32 v34, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[124:127], v62
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[58:61], v[25:28], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[58:61], v[17:20], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[58:61], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[58:61], v[5:8], v[34:41] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[58:61], v62 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[120:123], v[25:28], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[120:123], v[17:20], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[120:123], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[120:123], v[5:8], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[124:127], v[29:32], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[124:127], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[124:127], v[13:16], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[124:127], v[1:4], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v132, v44
	v_cvt_f32_i32_e32 v133, v45
	v_cvt_f32_i32_e32 v127, v46
	v_cvt_f32_i32_e32 v128, v47
	v_cvt_f32_i32_e32 v117, v67
	v_cvt_f32_i32_e32 v118, v68
	v_cvt_f32_i32_e32 v107, v69
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[58:61], v[1:4], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[29:32], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[58:61], v[21:24], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[58:61], v[13:16], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v116, v70
	v_cvt_f32_i32_e32 v44, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v125, v50
	v_cvt_f32_i32_e32 v126, v51
	v_cvt_f32_i32_e32 v123, v52
	v_cvt_f32_i32_e32 v124, v53
	scratch_store_b32 off, v36, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v121, v54
	v_cvt_f32_i32_e32 v122, v55
	v_cvt_f32_i32_e32 v119, v56
	v_cvt_f32_i32_e32 v120, v57
	scratch_store_b32 off, v36, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v96, v71
	v_cvt_f32_i32_e32 v105, v72
	v_cvt_f32_i32_e32 v94, v73
	v_cvt_f32_i32_e32 v95, v74
	v_cvt_f32_i32_e32 v92, v75
	v_cvt_f32_i32_e32 v93, v76
	v_cvt_f32_i32_e32 v183, v77
	v_cvt_f32_i32_e32 v83, v78
	v_cvt_f32_i32_e32 v78, v79
	v_cvt_f32_i32_e32 v79, v80
	v_cvt_f32_i32_e32 v76, v81
	v_cvt_f32_i32_e32 v77, v82
	v_cvt_f32_i32_e32 v74, v84
	v_cvt_f32_i32_e32 v75, v85
	v_cvt_f32_i32_e32 v72, v86
	v_cvt_f32_i32_e32 v73, v87
	v_cvt_f32_i32_e32 v70, v88
	v_cvt_f32_i32_e32 v71, v89
	v_cvt_f32_i32_e32 v68, v90
	v_cvt_f32_i32_e32 v69, v91
	v_cvt_f32_i32_e32 v62, v97
	v_cvt_f32_i32_e32 v67, v98
	v_cvt_f32_i32_e32 v60, v99
	v_cvt_f32_i32_e32 v61, v100
	v_cvt_f32_i32_e32 v58, v101
	v_cvt_f32_i32_e32 v59, v102
	v_cvt_f32_i32_e32 v56, v103
	v_cvt_f32_i32_e32 v57, v104
	v_cvt_f32_i32_e32 v54, v108
	v_cvt_f32_i32_e32 v55, v109
	v_cvt_f32_i32_e32 v52, v110
	v_cvt_f32_i32_e32 v53, v111
	v_cvt_f32_i32_e32 v50, v112
	v_cvt_f32_i32_e32 v51, v113
	v_cvt_f32_i32_e32 v46, v114
	v_cvt_f32_i32_e32 v47, v115
	v_cvt_f32_i32_e32 v45, v35
	v_cvt_f32_i32_e32 v35, v37
	scratch_store_b32 off, v36, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v41
	v_cvt_f32_i32_e32 v37, v48
	v_cvt_f32_i32_e32 v38, v49
	v_cvt_f32_i32_e32 v39, v42
	v_cvt_f32_i32_e32 v190, v43
	scratch_store_b32 off, v36, off offset:308 ; 4-byte Folded Spill
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v39, off offset:904
	scratch_store_b32 off, v133, off offset:900
	scratch_store_b32 off, v132, off offset:896
	scratch_store_b32 off, v38, off offset:732
	scratch_store_b32 off, v37, off offset:728
	scratch_store_b32 off, v126, off offset:712
	scratch_store_b32 off, v123, off offset:700
	scratch_store_b32 off, v122, off offset:684
	scratch_store_b32 off, v121, off offset:680
	scratch_store_b32 off, v120, off offset:676
	scratch_store_b32 off, v117, off offset:664
	scratch_store_b32 off, v105, off offset:644
	scratch_store_b32 off, v79, off offset:580
	scratch_store_b32 off, v78, off offset:576
	scratch_store_b32 off, v77, off offset:572
	scratch_store_b32 off, v76, off offset:568
	scratch_store_b32 off, v75, off offset:564
	scratch_store_b32 off, v74, off offset:560
	scratch_store_b32 off, v73, off offset:548
	scratch_store_b32 off, v72, off offset:544
	scratch_store_b32 off, v71, off offset:532
	scratch_store_b32 off, v70, off offset:528
	scratch_store_b32 off, v69, off offset:524
	scratch_store_b32 off, v68, off offset:520
	scratch_store_b32 off, v67, off offset:516
	scratch_store_b32 off, v62, off offset:512
	scratch_store_b32 off, v61, off offset:508
	scratch_store_b32 off, v60, off offset:504
	scratch_store_b32 off, v59, off offset:500
	scratch_store_b32 off, v58, off offset:496
	scratch_store_b32 off, v57, off offset:492
	scratch_store_b32 off, v56, off offset:488
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v55, off offset:444
	scratch_store_b32 off, v54, off offset:440
	scratch_store_b32 off, v64, off
	scratch_store_b32 off, v165, off offset:4
	scratch_store_b32 off, v53, off offset:412
	scratch_store_b32 off, v52, off offset:408
	scratch_store_b32 off, v154, off offset:244
	scratch_store_b32 off, v51, off offset:392
	scratch_store_b32 off, v50, off offset:388
	scratch_store_b32 off, v63, off offset:180
	scratch_store_b32 off, v47, off offset:380
	scratch_store_b32 off, v46, off offset:376
	scratch_store_b32 off, v45, off offset:364
	scratch_store_b32 off, v44, off offset:360
	scratch_store_b32 off, v35, off offset:328
	scratch_store_b32 off, v34, off offset:324
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v34, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
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
	v_add_nc_u32_e32 v34, s31, v240
	ds_load_b128 v[58:61], v34 offset:4096
	ds_load_b128 v[84:87], v34
	v_add_nc_u32_e32 v34, s31, v238
	ds_load_b128 v[88:91], v34 offset:4096
	ds_load_b128 v[97:100], v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v41, s19 :: v_dual_mov_b32 v40, s18
	v_dual_mov_b32 v39, s17 :: v_dual_mov_b32 v38, s16
	v_mov_b32_e32 v35, s13
	v_dual_mov_b32 v37, s15 :: v_dual_mov_b32 v36, s14
	v_mov_b32_e32 v34, s12
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[88:91], v[25:28], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[97:100], v[25:28], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[88:91], v[17:20], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[29:32], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[84:87], v[29:32], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[17:20], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[58:61], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[88:91], v[9:12], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[84:87], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[97:100], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[58:61], v[13:16], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v250, v44
	v_cvt_f32_i32_e32 v253, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[84:87], v[13:16], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[5:8], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[88:91], v[5:8], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v242, v46
	v_cvt_f32_i32_e32 v243, v47
	v_wmma_i32_16x16x16_iu8 v[9:16], v[84:87], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v237, v48
	v_wmma_i32_16x16x16_iu8 v[34:41], v[58:61], v[1:4], v[34:41] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v241, v49
	v_cvt_f32_i32_e32 v234, v50
	v_cvt_f32_i32_e32 v235, v51
	v_cvt_f32_i32_e32 v231, v52
	v_cvt_f32_i32_e32 v232, v53
	v_cvt_f32_i32_e32 v228, v54
	v_cvt_f32_i32_e32 v230, v55
	v_cvt_f32_i32_e32 v225, v56
	v_cvt_f32_i32_e32 v227, v57
	v_cvt_f32_i32_e32 v222, v25
	v_cvt_f32_i32_e32 v224, v26
	v_cvt_f32_i32_e32 v219, v27
	v_cvt_f32_i32_e32 v254, v28
	v_cvt_f32_i32_e32 v213, v29
	v_cvt_f32_i32_e32 v218, v30
	v_cvt_f32_i32_e32 v161, v31
	v_cvt_f32_i32_e32 v166, v32
	v_cvt_f32_i32_e32 v98, v67
	v_cvt_f32_i32_e32 v142, v68
	v_cvt_f32_i32_e32 v134, v69
	v_cvt_f32_i32_e32 v206, v70
	v_cvt_f32_i32_e32 v133, v71
	v_cvt_f32_i32_e32 v205, v72
	v_cvt_f32_i32_e32 v117, v73
	v_cvt_f32_i32_e32 v132, v74
	v_cvt_f32_i32_e32 v155, v17
	v_cvt_f32_i32_e32 v156, v18
	v_cvt_f32_i32_e32 v136, v19
	v_cvt_f32_i32_e32 v141, v20
	v_cvt_f32_i32_e32 v193, v21
	v_cvt_f32_i32_e32 v135, v22
	v_cvt_f32_i32_e32 v64, v23
	v_cvt_f32_i32_e32 v67, v24
	v_cvt_f32_i32_e32 v62, v75
	v_cvt_f32_i32_e32 v63, v76
	v_cvt_f32_i32_e32 v60, v77
	v_cvt_f32_i32_e32 v61, v78
	v_cvt_f32_i32_e32 v58, v79
	v_cvt_f32_i32_e32 v59, v80
	v_cvt_f32_i32_e32 v56, v81
	v_cvt_f32_i32_e32 v57, v82
	v_cvt_f32_i32_e32 v54, v9
	v_cvt_f32_i32_e32 v55, v10
	v_cvt_f32_i32_e32 v52, v11
	v_cvt_f32_i32_e32 v53, v12
	v_cvt_f32_i32_e32 v50, v13
	v_cvt_f32_i32_e32 v51, v14
	v_cvt_f32_i32_e32 v48, v15
	v_cvt_f32_i32_e32 v49, v16
	v_cvt_f32_i32_e32 v46, v34
	v_cvt_f32_i32_e32 v47, v35
	v_cvt_f32_i32_e32 v44, v36
	v_cvt_f32_i32_e32 v45, v37
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v229, v42
	v_cvt_f32_i32_e32 v82, v43
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s1, s1, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s1, s30, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_lshl_u32 v1, v244, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v221, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v128, off offset:724
	scratch_store_b32 off, v127, off offset:868
	scratch_store_b32 off, v67, off offset:720
	scratch_store_b32 off, v64, off offset:716
	scratch_store_b32 off, v125, off offset:708
	scratch_store_b32 off, v124, off offset:704
	scratch_store_b32 off, v63, off offset:692
	scratch_store_b32 off, v62, off offset:688
	scratch_store_b32 off, v118, off offset:668
	scratch_store_b32 off, v116, off offset:660
	scratch_store_b32 off, v107, off offset:656
	scratch_store_b32 off, v61, off offset:652
	scratch_store_b32 off, v60, off offset:648
	scratch_store_b32 off, v96, off offset:640
	scratch_store_b32 off, v95, off offset:636
	scratch_store_b32 off, v94, off offset:632
	scratch_store_b32 off, v93, off offset:628
	scratch_store_b32 off, v92, off offset:624
	scratch_store_b32 off, v59, off offset:620
	scratch_store_b32 off, v83, off offset:616
	scratch_store_b32 off, v183, off offset:672
	scratch_store_b32 off, v58, off offset:584
	scratch_store_b32 off, v57, off offset:556
	scratch_store_b32 off, v56, off offset:552
	scratch_store_b32 off, v55, off offset:472
	scratch_store_b32 off, v54, off offset:468
	scratch_store_b32 off, v53, off offset:460
	scratch_store_b32 off, v52, off offset:456
	scratch_store_b32 off, v51, off offset:436
	scratch_store_b32 off, v50, off offset:424
	scratch_store_b32 off, v49, off offset:420
	scratch_store_b32 off, v48, off offset:416
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v182, off offset:696
	scratch_store_b32 off, v180, off offset:248
	scratch_store_b32 off, v47, off offset:400
	scratch_store_b32 off, v106, off offset:196
	scratch_store_b32 off, v46, off offset:396
	scratch_store_b32 off, v45, off offset:384
	scratch_store_b32 off, v44, off offset:352
	scratch_store_b32 off, v37, off offset:348
	scratch_store_b32 off, v36, off offset:344
	scratch_store_b32 off, v35, off offset:340
	scratch_store_b32 off, v34, off offset:336
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 28, v147
	v_add3_u32 v4, 0, v131, v148
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v74, s45, v129
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v200, s1, 1
	s_and_b32 s9, s9, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v6, v74, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add_nc_u32_e32 v73, v4, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v245, s1, 1
	v_add_lshl_u32 v4, v199, s1, 1
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_mov_b32 v214, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v91, 0, v130
	v_mov_b32_e32 v216, 0
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v0, s47, v0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v201, 0
	v_mov_b32_e32 v9, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v153, 0
	v_mov_b32_e32 v126, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v176, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v75, v1, s[8:11], 0 offen
	buffer_load_u16 v249, v3, s[8:11], 0 offen
	buffer_load_u16 v217, v4, s[8:11], 0 offen
	buffer_load_u16 v1, v5, s[8:11], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v3, 0, 1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v73, v2 offset:36864
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s47, v33
	v_mov_b32_e32 v33, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s1, 1, v3
	v_mov_b32_e32 v3, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:852 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v6, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[36:39], v91 offset:36864
	ds_load_b128 v[28:31], v91 offset:36880
	ds_load_b128 v[120:123], v91 offset:37376
	ds_load_b128 v[208:211], v91 offset:37392
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v73, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[56:59], v0
	ds_load_b128 v[44:47], v0 offset:512
	ds_load_b128 v[20:23], v0 offset:1024
	ds_load_b128 v[16:19], v0 offset:1536
	ds_load_b128 v[60:63], v2
	ds_load_b128 v[48:51], v2 offset:512
	ds_load_b128 v[24:27], v2 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[12:15], v2 offset:1536
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
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
	v_add_nc_u32_e32 v0, s46, v238
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v106, s19 :: v_dual_mov_b32 v101, s14
	v_mov_b32_e32 v105, s18
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[8:11], v0
	ds_load_b128 v[32:35], v0 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v103, s16 :: v_dual_add_nc_u32 v52, s46, v240
	v_dual_mov_b32 v104, s17 :: v_dual_mov_b32 v99, s12
	v_dual_mov_b32 v102, s15 :: v_dual_mov_b32 v53, v203
	v_dual_mov_b32 v100, s13 :: v_dual_mov_b32 v87, v200
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[40:43], v52
	v_mov_b32_e32 v86, v199
	v_mov_b32_e32 v54, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[8:11], v[56:59], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[8:11], v[44:47], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[8:11], v[20:23], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[8:11], v[16:19], v[99:106] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[8:11], v52 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[32:35], v[56:59], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[32:35], v[44:47], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[32:35], v[20:23], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[32:35], v[16:19], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[40:43], v[60:63], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[40:43], v[48:51], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[40:43], v[24:27], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[40:43], v[12:15], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v94, v126
	v_cvt_f32_i32_e32 v95, v127
	v_cvt_f32_i32_e32 v165, v128
	v_cvt_f32_i32_e32 v93, v129
	v_cvt_f32_i32_e32 v79, v167
	v_cvt_f32_i32_e32 v80, v168
	v_cvt_f32_i32_e32 v77, v169
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[8:11], v[60:63], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[8:11], v[48:51], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[8:11], v[24:27], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[8:11], v[12:15], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v78, v170
	v_cvt_f32_i32_e32 v90, v147
	v_cvt_f32_i32_e32 v92, v148
	v_cvt_f32_i32_e32 v88, v149
	v_cvt_f32_i32_e32 v89, v150
	v_cvt_f32_i32_e32 v183, v151
	v_cvt_f32_i32_e32 v84, v152
	v_cvt_f32_i32_e32 v81, v153
	v_cvt_f32_i32_e32 v83, v154
	v_cvt_f32_i32_e32 v72, v171
	v_cvt_f32_i32_e32 v76, v172
	v_cvt_f32_i32_e32 v167, v173
	v_cvt_f32_i32_e32 v168, v174
	v_cvt_f32_i32_e32 v70, v175
	v_cvt_f32_i32_e32 v71, v176
	v_cvt_f32_i32_e32 v68, v177
	v_cvt_f32_i32_e32 v69, v178
	v_cvt_f32_i32_e32 v64, v179
	v_cvt_f32_i32_e32 v67, v180
	v_cvt_f32_i32_e32 v52, v181
	v_cvt_f32_i32_e32 v55, v182
	v_cvt_f32_i32_e32 v152, v197
	v_cvt_f32_i32_e32 v43, v198
	v_cvt_f32_i32_e32 v148, v199
	v_cvt_f32_i32_e32 v151, v200
	v_mov_b32_e32 v200, v87
	v_cvt_f32_i32_e32 v41, v201
	v_cvt_f32_i32_e32 v42, v202
	v_cvt_f32_i32_e32 v149, v203
	v_mov_b32_e32 v203, v53
	v_mov_b32_e32 v199, v86
	v_cvt_f32_i32_e32 v150, v204
	v_mov_b32_e32 v204, v54
	v_cvt_f32_i32_e32 v40, v108
	v_cvt_f32_i32_e32 v35, v109
	v_cvt_f32_i32_e32 v34, v110
	v_cvt_f32_i32_e32 v33, v111
	v_cvt_f32_i32_e32 v32, v112
	v_cvt_f32_i32_e32 v129, v113
	v_cvt_f32_i32_e32 v11, v114
	v_cvt_f32_i32_e32 v10, v115
	v_cvt_f32_i32_e32 v202, v0
	v_cvt_f32_i32_e32 v201, v1
	v_cvt_f32_i32_e32 v9, v2
	v_cvt_f32_i32_e32 v8, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v0, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v176, v99
	v_cvt_f32_i32_e32 v175, v100
	v_cvt_f32_i32_e32 v170, v101
	v_cvt_f32_i32_e32 v172, v102
	v_cvt_f32_i32_e32 v169, v103
	v_cvt_f32_i32_e32 v154, v104
	v_cvt_f32_i32_e32 v126, v105
	v_cvt_f32_i32_e32 v153, v106
	v_cvt_f32_i32_e32 v177, v130
	v_cvt_f32_i32_e32 v179, v131
	v_cvt_f32_i32_e32 v214, v124
	v_cvt_f32_i32_e32 v216, v125
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v95, off offset:880
	scratch_store_b32 off, v94, off offset:876
	scratch_store_b32 off, v93, off offset:872
	scratch_store_b32 off, v92, off offset:864
	scratch_store_b32 off, v90, off offset:860
	scratch_store_b32 off, v89, off offset:848
	scratch_store_b32 off, v88, off offset:844
	scratch_store_b32 off, v84, off offset:840
	scratch_store_b32 off, v83, off offset:832
	scratch_store_b32 off, v81, off offset:828
	scratch_store_b32 off, v80, off offset:824
	scratch_store_b32 off, v79, off offset:820
	scratch_store_b32 off, v78, off offset:816
	scratch_store_b32 off, v77, off offset:812
	scratch_store_b32 off, v76, off offset:808
	scratch_store_b32 off, v72, off offset:804
	scratch_store_b32 off, v71, off offset:800
	scratch_store_b32 off, v70, off offset:796
	scratch_store_b32 off, v69, off offset:788
	scratch_store_b32 off, v68, off offset:784
	scratch_store_b32 off, v67, off offset:780
	scratch_store_b32 off, v64, off offset:776
	scratch_store_b32 off, v55, off offset:772
	scratch_store_b32 off, v52, off offset:768
	scratch_store_b32 off, v43, off offset:764
	scratch_store_b32 off, v42, off offset:760
	scratch_store_b32 off, v41, off offset:756
	scratch_store_b32 off, v40, off offset:752
	scratch_store_b32 off, v35, off offset:748
	scratch_store_b32 off, v34, off offset:744
	scratch_store_b32 off, v33, off offset:740
	scratch_store_b32 off, v32, off offset:736
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v119, off offset:836
	scratch_store_b32 off, v11, off offset:484
	scratch_store_b32 off, v10, off offset:480
	scratch_store_b32 off, v9, off offset:476
	scratch_store_b32 off, v8, off offset:464
	scratch_store_b32 off, v3, off offset:452
	scratch_store_b32 off, v2, off offset:448
	scratch_store_b32 off, v1, off offset:432
	scratch_store_b32 off, v0, off offset:428
	ds_load_b128 v[52:55], v91 offset:36864
	ds_load_b128 v[40:43], v91 offset:36880
	ds_load_b128 v[32:35], v91 offset:37376
	ds_load_b128 v[8:11], v91 offset:37392
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v198, v66 :: v_dual_mov_b32 v197, v65
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v84, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v113, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v83, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v65, v126 :: v_dual_add_nc_u32 v0, s44, v240
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	ds_load_b128 v[67:70], v0 offset:4096
	ds_load_b128 v[76:79], v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v0, s44, v238
	v_dual_mov_b32 v110, v129 :: v_dual_mov_b32 v131, s19
	ds_load_b128 v[84:87], v0 offset:4096
	ds_load_b128 v[99:102], v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v130, s18 :: v_dual_mov_b32 v127, s15
	v_dual_mov_b32 v129, s17 :: v_dual_mov_b32 v128, s16
	v_dual_mov_b32 v125, s13 :: v_dual_mov_b32 v126, s14
	v_dual_mov_b32 v71, v149 :: v_dual_mov_b32 v124, s12
	v_dual_mov_b32 v89, v151 :: v_dual_mov_b32 v64, v153
	v_mov_b32_e32 v81, v170
	v_dual_mov_b32 v66, v154 :: v_dual_mov_b32 v83, v172
	v_dual_mov_b32 v72, v150 :: v_dual_mov_b32 v103, v168
	v_dual_mov_b32 v88, v148 :: v_dual_mov_b32 v93, v175
	v_dual_mov_b32 v90, v152 :: v_dual_mov_b32 v107, v179
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[99:102], v[56:59], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[84:87], v[56:59], v[124:131] neg_lo:[1,1,0]
	v_dual_mov_b32 v80, v169 :: v_dual_mov_b32 v95, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[76:79], v[60:63], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[67:70], v[60:63], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[99:102], v[44:47], v[124:131] neg_lo:[1,1,0]
	v_mov_b32_e32 v96, v167
	v_wmma_i32_16x16x16_iu8 v[167:174], v[84:87], v[44:47], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[76:79], v[48:51], v[56:63] neg_lo:[1,1,0]
	v_mov_b32_e32 v106, v177
	v_wmma_i32_16x16x16_iu8 v[175:182], v[84:87], v[20:23], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[67:70], v[48:51], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[99:102], v[20:23], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[175:182], v[67:70], v[24:27], v[175:182] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v118, v1
	v_cvt_f32_i32_e32 v109, v4
	v_wmma_i32_16x16x16_iu8 v[44:51], v[76:79], v[24:27], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[99:102], v[16:19], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[84:87], v[16:19], v[124:131] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v85, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v50
	v_wmma_i32_16x16x16_iu8 v[20:27], v[76:79], v[12:15], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v2
	v_wmma_i32_16x16x16_iu8 v[124:131], v[67:70], v[12:15], v[124:131] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v116, v3
	v_cvt_f32_i32_e32 v112, v5
	v_cvt_f32_i32_e32 v105, v6
	v_cvt_f32_i32_e32 v108, v7
	v_cvt_f32_i32_e32 v4, v129
	v_cvt_f32_i32_e32 v102, v147
	v_cvt_f32_i32_e32 v104, v148
	v_mov_b32_e32 v148, v88
	v_cvt_f32_i32_e32 v100, v149
	v_mov_b32_e32 v149, v71
	v_cvt_f32_i32_e32 v101, v150
	v_mov_b32_e32 v150, v72
	v_cvt_f32_i32_e32 v94, v151
	v_mov_b32_e32 v151, v89
	v_cvt_f32_i32_e32 v97, v152
	v_mov_b32_e32 v152, v90
	v_cvt_f32_i32_e32 v90, v153
	v_mov_b32_e32 v153, v64
	v_cvt_f32_i32_e32 v92, v154
	v_mov_b32_e32 v154, v66
	v_cvt_f32_i32_e32 v86, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v77, v58
	v_cvt_f32_i32_e32 v84, v59
	v_cvt_f32_i32_e32 v72, v60
	v_cvt_f32_i32_e32 v76, v61
	v_cvt_f32_i32_e32 v70, v62
	v_cvt_f32_i32_e32 v71, v63
	v_cvt_f32_i32_e32 v68, v167
	v_mov_b32_e32 v167, v96
	v_cvt_f32_i32_e32 v69, v168
	v_mov_b32_e32 v168, v103
	v_cvt_f32_i32_e32 v2, v169
	v_mov_b32_e32 v169, v80
	v_cvt_f32_i32_e32 v3, v170
	v_mov_b32_e32 v170, v81
	v_cvt_f32_i32_e32 v64, v171
	v_cvt_f32_i32_e32 v0, v172
	v_dual_mov_b32 v172, v83 :: v_dual_mov_b32 v129, v110
	v_cvt_f32_i32_e32 v87, v173
	v_cvt_f32_i32_e32 v88, v174
	v_cvt_f32_i32_e32 v80, v44
	v_cvt_f32_i32_e32 v81, v45
	v_cvt_f32_i32_e32 v255, v46
	v_cvt_f32_i32_e32 v79, v47
	v_cvt_f32_i32_e32 v252, v48
	v_cvt_f32_i32_e32 v78, v49
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v51
	v_cvt_f32_i32_e32 v173, v175
	v_mov_b32_e32 v175, v93
	v_cvt_f32_i32_e32 v174, v176
	v_mov_b32_e32 v176, v95
	v_cvt_f32_i32_e32 v147, v177
	v_mov_b32_e32 v177, v106
	v_cvt_f32_i32_e32 v171, v178
	v_cvt_f32_i32_e32 v115, v179
	v_mov_b32_e32 v179, v107
	v_cvt_f32_i32_e32 v119, v180
	v_cvt_f32_i32_e32 v111, v181
	v_cvt_f32_i32_e32 v178, v182
	v_cvt_f32_i32_e32 v106, v20
	v_cvt_f32_i32_e32 v107, v21
	v_cvt_f32_i32_e32 v99, v22
	v_cvt_f32_i32_e32 v103, v23
	v_cvt_f32_i32_e32 v95, v24
	v_cvt_f32_i32_e32 v96, v25
	v_cvt_f32_i32_e32 v67, v26
	v_cvt_f32_i32_e32 v93, v27
	v_cvt_f32_i32_e32 v7, v124
	v_cvt_f32_i32_e32 v66, v125
	v_cvt_f32_i32_e32 v5, v126
	v_mov_b32_e32 v126, v65
	v_cvt_f32_i32_e32 v6, v127
	v_cvt_f32_i32_e32 v113, v128
	v_cvt_f32_i32_e32 v65, v130
	v_cvt_f32_i32_e32 v83, v131
	v_mov_b32_e32 v131, v4
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s36, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s36, s1
	scratch_store_b32 off, v113, off offset:792 ; 4-byte Folded Spill
	s_ashr_i32 s1, s1, 7
	v_mov_b32_e32 v130, v67
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s34
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v244, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	v_mov_b32_e32 v238, v5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v5, off, off offset:536 ; 4-byte Folded Reload
	v_dual_mov_b32 v125, v7 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v7, v199, s1, 1
	v_mov_b32_e32 v240, v6
	v_add_lshl_u32 v6, v245, s1, 1
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v12, v200, s1, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_mov_b16_e64 v245.h, v75.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x1
	buffer_load_u16 v67, v7, s[8:11], 0 offen
	buffer_load_u16 v244, v12, s[8:11], 0 offen
	v_mov_b16_e64 v245.l, v110.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, v5, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v128, 16, v67
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v73, v5 offset:36864
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v5, v74, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v91 offset:36864
	ds_load_b128 v[44:47], v91 offset:36880
	ds_load_b128 v[20:23], v91 offset:37376
	ds_load_b128 v[12:15], v91 offset:37392
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v113, 16, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v73, v5 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v91 offset:36864
	ds_load_b128 v[48:51], v91 offset:36880
	v_mul_f32_e32 v5, v53, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v82, v196
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v196, v5, s2
	scratch_load_b32 v196, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v4, v61, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v118, v5
	v_mov_b32_e32 v118, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v4, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v7
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	v_rcp_f32_e32 v16, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v7, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v7, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v7, -v7, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v16, v18
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v52, v245
	v_mul_f32_e32 v17, v60, v113
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v229, v194
	v_mov_b32_e32 v229, v106
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v7, v5, v4
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v54, v245
	v_mul_f32_e32 v5, v62, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v194, v16, s2
	scratch_load_b32 v194, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v250, v187
	v_fma_f32 v17, v17, v85, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v187, v4, s2
	v_cndmask_b32_e64 v16, v16, v17, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v114, v4
	v_dual_mov_b32 v114, v103 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v17, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v24, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v24, v19
	v_div_scale_f32 v24, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v25, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v18, v25, v24
	v_fmac_f32_e32 v25, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v18, v25, v24
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v63, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v19, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v55, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v253, v195
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v195, v19, s2
	scratch_load_b32 v195, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v24, v116, v19
	v_mov_b32_e32 v116, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v24, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v103, v18, v17, v16
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v41, v245
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v17, v49, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v24, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v243, v251
	v_mov_b32_e32 v243, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v251, v16, s2
	scratch_load_b32 v251, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v112, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v25, v26, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v17, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v19, v24, v19
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v65, v27, v26
	v_fma_f32 v66, -v25, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v26
	v_fma_f32 v25, -v25, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v65
	v_div_fixup_f32 v111, v25, v24, v19
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v40, v245
	v_mul_f32_e32 v24, v48, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v242, v248
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v248, v19, s2
	scratch_load_b32 v248, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v24, v109, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v24, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v7
	v_fma_f32 v27, -v7, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v4, v5, v4
	v_mul_f32_e32 v65, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v7, v65, v27
	v_fmac_f32_e32 v65, v66, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v65, v27
	v_div_fmas_f32 v7, v7, v26, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v26, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v18, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v27, v26
	v_fma_f32 v66, -v18, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v26
	v_fma_f32 v18, -v18, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v26, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v7, v5, v4
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v43, v245
	v_mul_f32_e32 v5, v51, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v241, v247
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v247, v4, s2
	scratch_load_b32 v247, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v108, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v108, v18, v17, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v42, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_mul_f32 v17, v50, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v237, v185
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v24, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v4
	v_mov_b32_e32 v237, v147
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v185, v16, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v25
	scratch_load_b32 v185, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v105, v16
	v_mov_b32_e32 v105, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v19, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v27, v26
	v_fma_f32 v66, -v25, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v26
	v_fma_f32 v25, -v25, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v65
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v147, v25, v24, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	v_rcp_f32_e32 v26, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v7, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v27, v26
	v_fma_f32 v66, -v7, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v26
	v_fma_f32 v7, -v7, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v26, v65
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v16, v17, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v7, v5, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v65
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v32, v245
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v234, v159
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v159, v4, s2
	scratch_load_b32 v159, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v66, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v65, v66, v65
	v_mul_f32_e32 v26, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v16, v26, v18
	v_fmac_f32_e32 v26, v27, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v26, v18
	v_div_fmas_f32 v73, v16, v17, v26
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v33, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v235, v160
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v160, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[24:27], v91 offset:37376
	ds_load_b128 v[16:19], v91 offset:37392
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v160, off, off offset:856
	scratch_load_b32 v187, off, off offset:296
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v5, v24, v113
	v_mul_f32_e32 v75, v25, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v102, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v102, v73, v66, v65
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v35, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v104, v74
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v27, v113
	v_mov_b32_e32 v104, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v232, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v75, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v239, v65, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v101, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v66, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v75, 0xbfb8aa3b, v74 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v74
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v75, v75, v82
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v75, 1.0, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v75, v75, v74
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v74, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v85, v83
	v_fma_f32 v93, -v82, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v83
	v_fma_f32 v82, -v82, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v239, v82, v75, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v34, v245
	v_mul_f32_e32 v75, v26, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v231, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v236, v74, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v100, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v75, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v7
	v_fma_f32 v85, -v7, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v4, v5, v4
	v_mul_f32_e32 v91, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v7, v91, v85
	v_fmac_f32_e32 v91, v93, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v91, v85
	v_div_fmas_f32 v7, v7, v83, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v236, v7, v5, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v9, v245
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v17, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v230, v233
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v233, v4, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v97, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v66, v66, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v66, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v73
	v_fma_f32 v85, -v73, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v65, v66, v65
	v_mul_f32_e32 v91, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v73, v91, v85
	v_fmac_f32_e32 v91, v93, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v91, v85
	v_div_fmas_f32 v73, v73, v83, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v233, v73, v66, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v8, v245
	v_dual_mul_f32 v66, v16, v113 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v228, v226
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v226, v65, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v94, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v75, v75, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v66, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v75, 1.0, v75 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v65
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v75, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v85, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v74, v75, v74
	v_mul_f32_e32 v91, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v82, v91, v85
	v_fmac_f32_e32 v91, v93, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v91, v85
	v_div_fmas_f32 v82, v82, v83, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v226, v82, v75, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v11, v245
	v_mul_f32_e32 v75, v19, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v227, v223
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v223, v74, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v92, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v5, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v75, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	v_rcp_f32_e32 v83, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v7, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v85, v83
	v_fma_f32 v93, -v7, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v83
	v_fma_f32 v7, -v7, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v83, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v223, v7, v5, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v10, v245
	v_mul_f32_e32 v5, v18, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v225, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v220, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v90, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v66, v66, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v66, v66, v65
	v_rcp_f32_e32 v83, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v73, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v65, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v85, v83
	v_fma_f32 v93, -v73, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v83
	v_fma_f32 v73, -v73, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v83, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v220, v73, v66, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v74
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v75, v75, v82
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v75, 1.0, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v75, v75, v74
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v74, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v85, v83
	v_fma_f32 v92, -v82, v91, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v92, v83
	v_mov_b32_e32 v92, v96
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v96.h, v249.l
	v_mov_b16_e32 v96.l, v110.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v82, -v82, v91, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v53, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v82, v83, v91
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v224, v215
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v215, v65, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v65, 16, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v215, v82, v75, v74
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v52, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v6, v61, v65
	v_mul_f32_e32 v75, v60, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v222, v212
	v_fma_f32 v6, v6, v89, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v212, v74, s2
	v_cndmask_b32_e64 v6, v66, v6, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v5, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v86, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v66, 0xbfb8aa3b, v6 :: v_dual_add_f32 v5, 1.0, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v75, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v83, v7
	v_fma_f32 v85, -v7, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v4, v5, v4
	v_mul_f32_e32 v90, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v7, v90, v85
	v_fmac_f32_e32 v90, v91, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v90, v85
	v_div_fmas_f32 v7, v7, v83, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v212, v7, v5, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v55, v96
	v_dual_mul_f32 v5, v63, v65 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v254, v207
	scratch_load_b32 v254, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v207, v4, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v84, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v66, v66, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v66, v66, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v73
	v_fma_f32 v85, -v73, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v6, v66, v6
	v_mul_f32_e32 v89, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v73, v89, v85
	v_fmac_f32_e32 v89, v90, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v89, v85
	v_div_fmas_f32 v73, v73, v83, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v207, v73, v66, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v54, v96
	v_dual_mul_f32 v66, v62, v65 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v6, v6, v219, v204
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v204, v6, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v77, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v75, v75, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v66, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v75, 1.0, v75 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v75, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v85, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v74, v75, v74
	v_mul_f32_e32 v86, v85, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v82, v86, v85
	v_fmac_f32_e32 v86, v89, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v86, v85
	v_div_fmas_f32 v82, v82, v83, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v204, v82, v75, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v41, v96
	v_mul_f32_e32 v75, v49, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v218, v203
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v203, v74, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v5, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v75, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	v_rcp_f32_e32 v83, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v7, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v7, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v85, v86, v83 :: v_dual_mov_b32 v86, v107
	v_fma_f32 v7, -v7, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v83, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v203, v7, v5, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v40, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v5, v48, v65 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v213, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v246, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v72, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v66, v66, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v66, v66, v6
	v_rcp_f32_e32 v77, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v73, v77, 1.0
	v_fmac_f32_e32 v77, v83, v77
	v_div_scale_f32 v83, vcc_lo, v6, v66, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v77
	v_fma_f32 v85, -v73, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v84, v85, v77 :: v_dual_mov_b32 v85, v99
	v_fma_f32 v73, -v73, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v77, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v200, v73, v66, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v43, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v66, v51, v65 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v74
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v166, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v75, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v254, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v71, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v75, v75, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v66, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v75, 1.0, v75 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v75, v75, v74
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v76, v77, 1.0
	v_fmac_f32_e32 v77, v82, v77
	v_div_scale_f32 v82, vcc_lo, v74, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v77
	v_fma_f32 v84, -v76, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v83, v84, v77 :: v_dual_mov_b32 v84, v95
	v_fma_f32 v76, -v76, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v77, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v199, v76, v75, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	v_rcp_f32_e32 v72, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v7, v72, 1.0
	v_fmac_f32_e32 v72, v77, v72
	v_div_scale_f32 v77, vcc_lo, v4, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v77, v72
	v_fma_f32 v83, -v7, v82, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v83, v72
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v83.h, v217.l
	v_mov_b16_e32 v83.l, v110.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v7, v82, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v72, v82
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v66, v66, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v6, v66, v6
	v_mul_f32_e32 v77, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v71, v77, v73
	v_dual_fmac_f32 v77, v82, v72 :: v_dual_mov_b32 v82, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v77, v73
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v50, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v72, v77
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v42, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v72, v72, v161, v196
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v196, v72, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v196, v7, v5, v4
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v33, v96
	v_mul_f32_e32 v5, v25, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v73, v70, v72
	v_fma_f32 v4, v4, v142, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v72, v70, s3
	v_cndmask_b32_e64 v4, v195, v4, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v195, v71, v66, v6
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v32, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v24, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v69, v4
	v_fma_f32 v6, v6, v98, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, v194, v6, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v68, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v66, 0xbfb8aa3b, v6
	v_ldexp_f32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v72, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v75, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v70, v72, v70
	v_mul_f32_e32 v76, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v73, v76, v75
	v_fmac_f32_e32 v76, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v76, v75
	v_div_fmas_f32 v73, v73, v74, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v194, v73, v72, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v70, v27, v65 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v7
	v_fma_f32 v74, -v7, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v74, v69
	v_div_scale_f32 v74, vcc_lo, v4, v5, v4
	v_mul_f32_e32 v75, v74, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v7, v75, v74
	v_fmac_f32_e32 v75, v76, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v75, v74
	v_div_fmas_f32 v7, v7, v69, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v6
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v68
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v66, v66, v6
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, vcc_lo, v6, v66, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v71, v69
	v_fma_f32 v75, -v68, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v69
	v_fma_f32 v68, -v68, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v69, v74
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v35, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v115, v68, v66, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v206, v187
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v187, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v187, v7, v5, v4
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v34, v96
	v_mul_f32_e32 v5, v26, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v70, v3, v69
	v_fma_f32 v4, v4, v134, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v69, v3, s3
	v_cndmask_b32_e64 v4, v251, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v5, v2, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v4, v2, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v4, 0xbfb8aa3b, v2 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v3
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v3
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v3, v69, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v71
	v_fma_f32 v74, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v71
	v_fma_f32 v70, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v182, v70, v69, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v3, v9, v96 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v205, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v248, v3, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v4, v5
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v17, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v4, v4, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v6, v0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v3, v0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v0
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v5, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v71, v7
	v_div_scale_f32 v71, vcc_lo, v2, v4, v2
	v_mul_f32_e32 v72, v71, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v5, v72, v71
	v_fmac_f32_e32 v72, v73, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v72, v71
	v_div_fmas_f32 v5, v5, v7, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v0
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v3, v3, v6
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, null, v3, v3, v0
	v_rcp_f32_e32 v7, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v66, v7
	v_div_scale_f32 v66, vcc_lo, v0, v3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v66, v7
	v_fma_f32 v69, -v6, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v7
	v_fma_f32 v6, -v6, v68, v66
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v16, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v7, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v8, v96
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v7, v7, v133, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v158, v7, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v158, v6, v3, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v53, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v66, v64, v7
	v_fma_f32 v0, v0, v156, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v64, s3
	v_cndmask_b32_e64 v0, v247, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v7
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v64, v64, v7
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v7, v64, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v66, -v66, v70, v69
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v19, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v66, v66, v68, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v11, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v181, v66, v64, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v132, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v157, v68, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v88, v68
	v_mov_b32_e32 v88, v173
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v71
	v_fma_f32 v74, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v71
	v_fma_f32 v70, -v70, v73, v72
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v18, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v10, v96
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v117, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v117, v5, v4, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v61, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v146, v71, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v146, v70, v69, v68
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v81, v0
	v_mov_b32_e32 v81, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, v72, v87, v71
	v_mov_b32_e32 v87, v171
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v71, v71, v72, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v71
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v72, v72, v71
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v77, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v73, v76, v75
	v_div_fmas_f32 v73, v73, v74, v76
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v157, v73, v72, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v3, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v5, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v6, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v3, v6, v5
	v_fmac_f32_e32 v6, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v3, v6, v5
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v60, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v3, v4, v6
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v52, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v3, v2, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v155, v189
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v40, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v189, v4, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v193, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v5, v5, v80, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v159, v3, s2
	v_mov_b32_e32 v80, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, v4, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, null, v5, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v7, v6
	v_fma_f32 v64, -v6, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v64, v7
	v_div_scale_f32 v64, vcc_lo, v4, v5, v4
	v_mul_f32_e32 v66, v64, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v6, v66, v64
	v_fmac_f32_e32 v66, v67, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v66, v64
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v63, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v7, v66
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v55, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v7, v7, v141, v188
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v141, v6, v5, v4
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v48, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v188, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v4, v252, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v64, v64, v79, v7
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v79, v24, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v3, v4, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v7, v7, v64, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v7
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v64, v64, v7
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v7, v64, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v62, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v54, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v66, v64, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v136, v185
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:876
	scratch_load_b32 v66, off, off offset:880
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v185, v67, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v255, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v68, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v67, v68, v67
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v69, v72, v71
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v49, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v41, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v127, v69, v68, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v135, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v160, v70, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v78, v70
	scratch_load_b32 v78, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v71, v71, v70
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v76, v73
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v32, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v119, 1.0, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v3, null, v119, v119, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v5, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v99, v119, v99
	v_mul_f32_e32 v6, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v3, v6, v5
	v_dual_fmac_f32 v6, v7, v4 :: v_dual_mul_f32 v7, v58, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v3, -v3, v6, v5
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v5, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v124, v3, v4, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v36, v245
	v_mul_f32_e32 v6, v56, v113
	v_mul_f32_e32 v3, v37, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v190, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v138, v3, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v76, v76, v78, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v144, v76, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v79, v79, v88, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v4, v5, v164
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v57, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v164, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v216, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, v6, v214, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v93, v3, v5, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v39, v245
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v4, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v4, off, off offset:900 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v161, v3, v4, v198
	scratch_load_b32 v4, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v38, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v198, v161, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v142, v3, v4, v197
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v3, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v93, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v197, v142, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v64, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v59, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v4.h
	v_mov_b16_e32 v66.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v4, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v64, s3
	v_cndmask_b32_e64 v5, v6, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v67, off, off offset:280
	scratch_load_b32 v7, off, off offset:868
	scratch_load_b32 v64, off, off offset:724
	scratch_load_b32 v68, off, off offset:284
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v110.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v188.h, 0x7fff, v66.h, vcc_lo
	v_mov_b16_e32 v66.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v4, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v110.h, v3.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v95, v103
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v55, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v41, v110
	v_mul_f32_e32 v54, v54, v110
	v_mul_f32_e32 v40, v40, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v32, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v3, v6, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v5, v109
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v28, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v188.l, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v7, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v29, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v67, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v64, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v4.h
	v_mov_b16_e32 v64.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v67, v45, v113 :: v_dual_and_b32 v64, 1, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v4, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v68, v7, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v44, v113
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v189.h, 0x7fff, v64.h, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v165, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:4
	scratch_load_b32 v6, off, off offset:728
	s_waitcnt vmcnt(2)
	v_fma_f32 v67, v67, v68, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v3.h
	v_mov_b16_e32 v68.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v3, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v4, v67, s3
	v_cndmask_b32_e64 v4, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off
	scratch_load_b32 v7, off, off offset:732
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v30, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v189.l, 0x7fff, v68.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v108 :: v_dual_mul_f32 v4, v4, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v5, v5, v6, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v31, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_mov_b16_e32 v66.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v4, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v185.l, 0x7fff, v66.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v6, v7, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v3.h
	v_mov_b16_e32 v7.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v3, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v64, v6, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v46, v113
	v_mul_f32_e32 v64, v47, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v185.h, 0x7fff, v7.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v20, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v177, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v64, v64, v179, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:708
	scratch_load_b32 v68, off, off offset:276
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:256
	scratch_load_b32 v64, off, off offset:712
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v120, v245
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v4, v102 :: v_dual_mul_f32 v3, v3, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v6, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v121, v245
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v6, v6, v64, v67
	v_mov_b32_e32 v64, v68
	scratch_load_b32 v68, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v67, v6, s2
	v_cndmask_b32_e64 v5, v64, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v21, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v3.h
	v_mov_b16_e32 v66.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:696
	scratch_load_b32 v7, off, off offset:700
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v3, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v6, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:252
	scratch_load_b32 v64, off, off offset:704
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v110.l
	v_cndmask_b16 v179.h, 0x7fff, v66.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v239
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v72, v71, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v5, v236 :: v_dual_mul_f32 v5, v122, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v179.l, 0x7fff, v6.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:244
	scratch_load_b32 v6, off, off offset:680
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v5, v5, v7, v138
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v123, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v138, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v7, v7, v64, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v3.h
	v_mov_b16_e32 v64.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v3, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v67, v7, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v22, v113
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v180.h, 0x7fff, v64.h, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v13, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v7, v7, v67, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v23, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v68, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v4.h
	v_mov_b16_e32 v68.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v233 :: v_dual_and_b32 v68, 1, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v4, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:248
	scratch_load_b32 v7, off, off offset:684
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v208, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v180.l, 0x7fff, v68.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v6, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v209, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v7, v164
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v3.h
	v_mov_b16_e32 v7.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v3, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v164, v6, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v12, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v177.h, 0x7fff, v7.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v4.h
	v_mov_b16_e32 v66.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v183, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v14, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:240
	scratch_load_b32 v64, off, off offset:676
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v223 :: v_dual_and_b32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v4, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:236
	scratch_load_b32 v6, off, off offset:836
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v210, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v177.l, 0x7fff, v66.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:832
	scratch_load_b32 v68, off, off offset:824
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v6, v164
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v211, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v164, v5, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v64, v165
	scratch_load_b32 v64, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v165, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v15, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v3.h
	v_mov_b16_e32 v66.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:228
	scratch_load_b32 v7, off, off offset:664
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v3, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v6, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:232
	scratch_load_b32 v64, off, off offset:668
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v110.l
	v_cndmask_b16 v173.h, 0x7fff, v66.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v215
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:816 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	v_cmp_o_f32_e64 s4, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v5, v212
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v36, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v173.l, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v5, v5, v7, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v37, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v7, v64, v164
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v3.h
	v_mov_b16_e32 v64.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v3, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v164, v7, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v56, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:404
	scratch_load_b32 v6, off, off offset:656
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v174.h, 0x7fff, v64.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v67, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v57, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v68, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v4.h
	v_mov_b16_e32 v68.h, v110.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v67, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v67, v47, v65 :: v_dual_and_b32 v68, 1, v68
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v207
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v4, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:224
	scratch_load_b32 v7, off, off offset:660
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v38, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v174.l, 0x7fff, v68.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v204
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.h, v110.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v6, v164
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v39, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v164, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v6, v6, v7, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v3.h
	v_mov_b16_e32 v7.h, v110.l
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v7, v3, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v64, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v58, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v171.h, 0x7fff, v7.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v44, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v6, v6, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v59, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v4.h
	v_mov_b16_e32 v66.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:220
	scratch_load_b32 v64, off, off offset:644
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v203 :: v_dual_and_b32 v66, 1, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v4, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:216
	scratch_load_b32 v6, off, off offset:640
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v28, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v171.l, 0x7fff, v66.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:808 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v5, v6, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v29, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v64, v164
	scratch_load_b32 v64, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v164, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v45, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v3.h
	v_mov_b16_e32 v66.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:208
	scratch_load_b32 v7, off, off offset:632
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v3, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v6, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:212
	scratch_load_b32 v64, off, off offset:636
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v199 :: v_dual_and_b32 v6, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v5, v196
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v30, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v4, v4
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v4, v68, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v7, v164
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v31, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v164, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v7, v7, v64, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v3.h
	v_mov_b16_e32 v64.h, v110.l
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v3, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v165, v7, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v46, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v168, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v7, v7, v167, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v167.l, 0x7fff, v6.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:200
	scratch_load_b32 v6, off, off offset:624
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v168.h, 0x7fff, v64.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:204
	scratch_load_b32 v7, off, off offset:628
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v167.h, 0x7fff, v66.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v67, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v120, v96
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v194
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:196
	scratch_load_b32 v67, off, off offset:616
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v168.l, 0x7fff, v68.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v195
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_fma_f32 v5, v5, v6, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v121, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v6, v6, v7, v164
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v3.h
	v_mov_b16_e32 v7.h, v110.l
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v3, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v164, v6, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v20, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v164.h, 0x7fff, v7.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v22, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v21, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v64, v64, v66, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v4.h
	v_mov_b16_e32 v66.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v64, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v187 :: v_dual_and_b32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v4, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:192
	scratch_load_b32 v6, off, off offset:672
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v122, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v164.l, 0x7fff, v66.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v5, v6, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v123, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v64, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:784 ; 4-byte Folded Reload
	v_fma_f32 v6, v6, v67, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v183, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v23, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v7, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v3.h
	v_mov_b16_e32 v66.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:576
	scratch_load_b32 v67, off, off offset:264
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v3, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v6, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:580
	scratch_load_b32 v68, off, off offset:268
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v110.l
	v_cndmask_b16 v159.h, 0x7fff, v66.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	v_cmp_o_f32_e64 s4, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v5, v117 :: v_dual_mul_f32 v5, v208, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v159.l, 0x7fff, v6.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:184
	scratch_load_b32 v6, off, off offset:568
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v5, v5, v7, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v209, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v67, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v7, v7, v64, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v3.h
	v_mov_b16_e32 v64.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v3, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v68, v7, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v12, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v160.h, 0x7fff, v64.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v67, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v13, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v67, v67, v68, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v4.h
	v_mov_b16_e32 v68.h, v110.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v67, s3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v67, 1, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v158 :: v_dual_and_b32 v68, 1, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v4, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:188
	scratch_load_b32 v7, off, off offset:572
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v210, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v160.l, 0x7fff, v68.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v6, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v211, v96
	v_mul_f32_e32 v96, v15, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v7, v183
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v3.h
	v_mov_b16_e32 v7.h, v110.l
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v3, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v183, v6, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v14, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v155.h, 0x7fff, v7.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v56, v128
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v64, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v15, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v65, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v4.h
	v_mov_b16_e32 v65.h, v110.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:180
	scratch_load_b32 v64, off, off offset:564
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v65
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v146
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v65, v4, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:176
	scratch_load_b32 v6, off, off offset:560
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v36, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_cndmask_b16 v155.l, 0x7fff, v65.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v5, v6, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v37, v83
	v_mul_f32_e32 v37, v37, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v165, v5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v64, v138
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v57, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v152, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v138, v6, s2
	v_cndmask_b32_e64 v5, v5, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v3.h
	v_mov_b16_e32 v65.h, v110.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v65, v3, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v6, v64, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:172
	scratch_load_b32 v7, off, off offset:548
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v2 :: v_dual_mul_f32 v3, v38, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v38, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v2, v2
	v_add3_u32 v6, v4, v6, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v5, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:168
	scratch_load_b32 v5, off, off offset:544
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v5, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v39, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v165, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v7, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v2.h
	v_mov_b16_e32 v7.h, v110.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:152
	scratch_load_b32 v66, off, off offset:716
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v2, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v64, v5, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v59, v128
	v_mul_f32_e32 v64, v58, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v152.h, 0x7fff, v7.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v151, v2
	v_fma_f32 v64, v64, v148, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v151.h, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v151.l, 0x7fff, v6.h, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:164
	scratch_load_b32 v6, off, off offset:720
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v5, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v5.h, v110.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v64, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v148, 16, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v2, v0 :: v_dual_and_b32 v5, 1, v5
	v_mul_f32_e32 v2, v3, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v5, v4, v5, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:156
	scratch_load_b32 v4, off, off offset:528
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v62, v62, v148 :: v_dual_and_b32 v3, 1, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v56, v148
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v152.l, 0x7fff, v5.h, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:160
	scratch_load_b32 v5, off, off offset:532
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v48, v148
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v0, v28, v83 :: v_dual_mul_f32 v63, v63, v148
	v_mul_f32_e32 v57, v57, v148
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v24, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v147.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v49, v49, v148
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v15, v148
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v4, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v29, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v64, v0, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v4, v5, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v64, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v43, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v65, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v6, v7
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v42, v83
	v_mul_f32_e32 v42, v42, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v7, v5, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v51, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v6, v6, v66, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, v7, v1, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v165, v6, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v50, v128
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v5, v1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v45, v128
	v_mul_f32_e32 v45, v45, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v7, v64, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v5, v65, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v65, 0xbfb8aa3b, v1 :: v_dual_and_b32 v66, 1, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v2, v66, 0x7fff
	v_mov_b16_e32 v2.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v4, v107
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v147.l, 0x7fff, v66.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v44, v128
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v30, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v44, v44, v148 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v3, v2, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:148
	scratch_load_b32 v3, off, off offset:524
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v4, v65, v4
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v5, v65
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v31, v83
	v_mul_f32_e32 v31, v31, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v4, v4, v1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v69, v68
	v_div_scale_f32 v70, null, v5, v5, v6
	v_div_scale_f32 v78, s5, v6, v5, v6
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v64, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v64, s27, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v124, v119, v99
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v143, s27, 5, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v110.l
	v_mov_b16_e32 v7.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v7, 1, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v65, v3, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:144
	scratch_load_b32 v65, off, off offset:520
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v0, v7, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v71, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v68, v69, 1.0
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v3, v69
	v_div_scale_f32 v3, s4, v1, v4, v1
	v_mul_f32_e32 v75, v3, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v66, v65, v165
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v47, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v165, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v46, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v66, v150, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v65, v149, v72
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v33, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v71, v66, v71
	v_fma_f32 v66, -v68, v75, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v149.h, 0x7fff, v2.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v77, v145
	v_mov_b32_e32 v77, v145
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v75, v66, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v74, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v149.l, 0x7fff, v7.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v121, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v77, v65, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v77, v25, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v68, v75, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v76, v79, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v33, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v77, v77, v80, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v80, v78, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v3, v69, v75
	s_mov_b32 vcc_lo, s5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v65, v77, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[64:65]
	v_add3_u32 v66, s33, s26, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v70, v80, v78
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v3, v4, v1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v72, v73, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v77
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v80, v67, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v0, v1 :: v_dual_mul_f32 v73, v34, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v70, v80, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v68
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:132
	scratch_load_b32 v74, off, off offset:652
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v78, v26, v128
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, s6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v71, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v1, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v25, v148
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v77
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v69, v5, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v110.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v145, s27, 4, v64
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v67
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e32 v4.h, v110.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v144, 0x80, v66
	s_mov_b32 s27, 0x31027000
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v2.h
	v_cmp_o_f32_e64 s1, v2, v2
	v_and_b32_e32 v4, 1, v4
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v67, v5
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v120, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v0, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v6, 1, v6
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v150.h, 0x7fff, v4.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:140
	scratch_load_b32 v4, off, off offset:516
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v2, v6, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v3, v3, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v150.l, 0x7fff, v6.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v0, v0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v110.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v5, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v1, v70, v1 :: v_dual_mul_f32 v70, v35, v83
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v70, v74, v76
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v20, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v76, v70, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, s4, v68, v0, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v7, v4, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:136
	scratch_load_b32 v7, off, off offset:512
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v71, v4, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v77, v3, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v71, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v67, v7, v165
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v67, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v165, v7, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v21, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v69, v67, 1.0
	v_fmac_f32_e32 v67, v72, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:128
	scratch_load_b32 v72, off, off offset:648
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v80, v76, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v73, v72, v165
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v27, v128
	v_mul_f32_e32 v27, v27, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v165, v72, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v87, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, v78, v237, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v73, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v73, off, off offset:748 ; 4-byte Folded Reload
	v_fma_f32 v74, v74, v79, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v5, v75, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v78, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v78, 0xbfb8aa3b, v70 :: v_dual_fmac_f32 v75, v79, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v78
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v78, v16, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v5, v75, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v1, v5, v1, v75
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v1, v3, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v4, v74, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:120
	scratch_load_b32 v75, off, off offset:620
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v8, v83
	v_mul_f32_e32 v8, v8, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v7, v7, v73, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v69, v80, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v80, v73, v67 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v2, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v69, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v67, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v71
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, s6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v5, v0, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v72
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v3, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v67, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v1.h
	v_mov_b16_e32 v4.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v2, v7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v123, v83
	v_mul_f32_e32 v67, v122, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v0.h
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v6, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v1, v4, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v2, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v3, v3, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v0, v6, 0x7fff
	v_cndmask_b16 v137.h, 0x7fff, v4.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:124
	scratch_load_b32 v4, off, off offset:508
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v2
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v2, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v137.l, 0x7fff, v6.h, s1
	v_mov_b16_e32 v6.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v1, v1, v72
	v_fma_f32 v69, -v5, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v2, v69, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v9, v83
	v_mul_f32_e32 v9, v9, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v69, v69, v75, v77
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v22, v128
	v_mul_f32_e32 v22, v22, v148
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v77, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, s4, v72, v1, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v7, v4, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:372
	scratch_load_b32 v7, off, off offset:504
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v71, v4, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v70, v3, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v71, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v67, v7, v165
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v67, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v165, v7, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v23, v128
	v_mul_f32_e32 v23, v23, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v68, v67, 1.0
	v_fmac_f32_e32 v67, v73, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:116
	scratch_load_b32 v73, off, off offset:584
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v80, v77, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v74, v73, v165
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v17, v128
	v_mul_f32_e32 v17, v17, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v165, v73, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v81, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, v78, v82, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v74, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v74, off, off offset:740 ; 4-byte Folded Reload
	v_fma_f32 v75, v75, v79, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v5, v76, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v78, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v79, v2
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v78
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v78, v18, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v5, v76, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v2, v5, v2, v76
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v2, v3, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v4, v75, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:108
	scratch_load_b32 v75, off, off offset:556
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v7, v7, v74, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v68, v80, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v80, v74, v67 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v73
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v10, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v2
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v68, v80, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v67, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v71
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, s6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v5, v1, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v73
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v67, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e32 v4.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v2, v7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v209, v83
	v_mul_f32_e32 v67, v208, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v1.h
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v6, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v0, v4, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v2, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v3, v3, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v4.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:368
	scratch_load_b32 v4, off, off offset:500
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v2
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v2, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v133.l, 0x7fff, v6.h, s1
	v_mov_b16_e32 v6.h, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v0, v0, v73
	v_div_scale_f32 v77, s4, v73, v0, v73
	v_fma_f32 v70, -v5, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v2, v70, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v11, v83
	v_mul_f32_e32 v11, v11, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v70, v75, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v12, v128
	v_mul_f32_e32 v12, v12, v148
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v183, v70, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v7, v4, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:112
	scratch_load_b32 v7, off, off offset:496
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v71, v4, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v69, v3, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v71, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v67, v7, v165
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v67, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v165, v7, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v13, v128
	v_mul_f32_e32 v13, v13, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v75, v79, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v68, v67, 1.0
	v_fma_f32 v79, -v5, v76, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v129, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v72, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:104
	scratch_load_b32 v72, off, off offset:552
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v79, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v80, v77, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v76, v71
	v_div_fmas_f32 v2, v5, v2, v76
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v2, v3, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v4, v75, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v74, v72, v165
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v19, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v165, v72, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v178, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, v78, v243, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v70, v74, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v68, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v72, v81, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v80, v70, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v68, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v7
	v_cndmask_b32_e64 v70, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v67, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, s6
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v78
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v5, v0, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v79
	v_exp_f32_e32 v67, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v3, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v2, v7
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v60, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v67, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v1.h
	v_mov_b16_e32 v4.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v80, 1.0, v3 :: v_dual_and_b32 v3, 1, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 1, v6
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v81, 1.0, v2 :: v_dual_mul_f32 v2, v210, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v80, v80, v78
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v211, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v81, v81, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v82, v0, v4, 0x7fff
	v_cndmask_b16 v129.h, 0x7fff, v3.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:100
	scratch_load_b32 v3, off, off offset:492
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v91, v83
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:92
	scratch_load_b32 v4, off, off offset:472
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v87, v88
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v53, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, s4, v79, v81, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v129.l, 0x7fff, v82.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v1, v1, v3, v183
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:96
	scratch_load_b32 v3, off, off offset:488
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v4, v138
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v14, v128
	v_mul_f32_e32 v14, v14, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v183, v1, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v1, vcc_lo, v78, v80, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v138, v0, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v2, v3, v165
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v88, v87, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v93, v165, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v2, -v83, v91, 1.0
	v_fmac_f32_e32 v87, v3, v87
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v52, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v91, v2, v91
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:84
	scratch_load_b32 v2, off, off offset:468
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v5, v1, v87
	v_mul_f32_e32 v53, v6, v91
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v3, v2, v183
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v61, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v183, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v86, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v7, v7, v229, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v3, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v3, off, off offset:480 ; 4-byte Folded Reload
	v_fma_f32 v4, v4, v52, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v88, v5, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v7, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v93, v4, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v5, v52, v87
	v_fma_f32 v52, -v83, v53, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v1, -v88, v5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v53, v52, v91 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v1, v1, v87, v5
	v_fma_f32 v5, -v83, v53, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v1, v80, v78
	v_div_fmas_f32 v5, v5, v91, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v6, 0, 0x42800000, s6
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v36, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v81, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v7, v52
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v4.h
	v_mov_b16_e32 v52.h, v110.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_and_b32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v4, v52, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v96, v3, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v95, v3, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v3, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v110.l
	v_mov_b16_e32 v6.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v5, v5, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v1, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v3, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v6.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:76
	scratch_load_b32 v6, off, off offset:444
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v1, v1, v2
	v_fma_f32 v61, -v7, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v3, v61, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v37, v6, v165
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:72
	scratch_load_b32 v37, off, off offset:440
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v165, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v201, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v57, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v53, v37, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v53, v60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v138, v37, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:68
	scratch_load_b32 v61, off, off offset:460
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v202, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v60, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v67, v53
	v_div_scale_f32 v67, s1, v2, v1, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v55, v61, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, vcc_lo, v0, v5, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v138, v55, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:60
	scratch_load_b32 v69, off, off offset:456
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v68, v61, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v63, v63, v114, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v63, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v7, v68, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v68, v63, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v7, v68, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v3, v7, v3, v68
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v3, v5, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v37, v56, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v39, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v6, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v110.l
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v54, v54, v69, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v69, v67, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v138, v54, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v60, v69, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v62, v85, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v69, v63, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v62, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v60, v69, v67
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, 0xbfb8aa3b, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v7, v53, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v7, v1, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v52.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v60, v62
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:48
	scratch_load_b32 v62, off, off offset:424
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s5
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v0.h
	v_mov_b16_e32 v3.h, v110.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v60, v5
	v_exp_f32_e32 v2, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:56
	scratch_load_b32 v52, off, off offset:412
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v2, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v4, v4, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v7, v5
	v_div_scale_f32 v39, null, v2, v2, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v5, v7, 1.0
	v_fmac_f32_e32 v7, v53, v7
	v_div_scale_f32 v53, vcc_lo, v55, v4, v55
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v40, v40, v62, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v61, v40, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v84, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v37, v52, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:356
	scratch_load_b32 v52, off, off offset:408
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v48, s3
	v_cndmask_b32_e64 v0, v57, v37, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v59, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:52
	scratch_load_b32 v60, off, off offset:436
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v57, v57, v62, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v57, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v38, v38, v52, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v56, v38, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v58, v148
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v58, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v41, v41, v60, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v39, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v59, v41, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s4, v54, v2, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v49, v49, v92, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v56, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v49, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v38, v58, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v53, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v37, v38, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v5, v58, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.h, 0x7fff, v3.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v59, v7
	v_fma_f32 v59, -v39, v60, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.l, 0x7fff, v6.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v28, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v5, v58, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v59, v52
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v43, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v7, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v39, v60, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v5, v4, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v7, v52, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:36
	scratch_load_b32 v53, off, off offset:420
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v7, v2, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v0.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v38, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v110.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v38.l, v2.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v5, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v0, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v38
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v2, v7, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v1, v1, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.h, 0x7fff, v4.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v29, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:44
	scratch_load_b32 v29, off, off offset:392
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v5, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v5, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, null, v3, v3, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v43, v7
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v28, v28, v53, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v48, v28, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, vcc_lo, v41, v1, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v4, v29, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:40
	scratch_load_b32 v29, off, off offset:388
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v52, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v29, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v39, v5, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v49, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v5, v29, v5
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v29, v51, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:32
	scratch_load_b32 v51, off, off offset:416
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v7, v43, 1.0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v29, v29, v105, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s1, v40, v3, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v29, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v53, v49, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v51, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v48, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v52, v42, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v50, v148
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v130, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v29, v42, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v29, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v44, v44, v52, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v39, v51, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v44, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v51, v52, v5 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v45, v29, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v7, v53, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v29, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v45, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v39, v51, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v7, v53, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v29, v5, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v7, v43, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v5, v1, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v7, v3, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v110.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v4, v1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v39, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.l, 0x7fff, v0.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v6, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v43, v5
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:24
	scratch_load_b32 v41, off, off offset:376
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v1.h
	v_mov_b16_e32 v6.h, v110.l
	v_mov_b16_e32 v7.l, v3.h
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v29
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 1, v6
	v_and_b32_e32 v6, 1, v7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v30, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v2, v2, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v1, v0, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v4, v4, v42
	v_rcp_f32_e32 v29, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v3, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v39
	v_fma_f32 v40, -v5, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v29, v40, v29
	v_div_scale_f32 v40, vcc_lo, v28, v2, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v41, v43
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:28
	scratch_load_b32 v41, off, off offset:380
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v43, v7, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v46, v148
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v41, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v39, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v44, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v47, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:20
	scratch_load_b32 v48, off, off offset:400
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v31, v40, v29 :: v_dual_fmac_f32 v30, v41, v30
	v_div_scale_f32 v41, s4, v42, v4, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v5, v31, v40
	v_mul_f32_e32 v46, v41, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v45, v29
	v_fma_f32 v45, -v39, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v5, v31, v40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v21, v148
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v45, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v5, v29, v31
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v31, -v39, v46, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:16
	scratch_load_b32 v29, off, off offset:396
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v5, v2, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v33, v33, v48, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v48, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v47, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v118, v33
	s_waitcnt vmcnt(1)
	v_fma_f32 v32, v32, v29, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v33, v25, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v31, v30, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v39, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v25, v4, v42
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v34, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v24, v125, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v0.h, s1
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b16_e32 v3.h, v110.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v30, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v43, v48, v7
	scratch_load_b32 v48, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v43, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v7, v4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v4, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v30.h
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v4, v5
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v35, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:12
	scratch_load_b32 v6, off, off offset:364
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v30, v3, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v4, null, v32, v32, v29
	v_rcp_f32_e32 v33, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v4, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v44, v44, v48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v44, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v1, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, s4
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v1, v121, v110 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v1, v1, v6, v35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:332
	scratch_load_b32 v6, off, off offset:360
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v0, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v120, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v35, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v40, v175, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v0, v0, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v39, v34, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v6, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:8
	scratch_load_b32 v3, off, off offset:384
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v7, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v7, vcc_lo, v29, v32, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v20, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v1, v42, v1, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v176, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v184, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, v35, v2, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v5, v3, v6
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v6, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v5, v5, v31
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v26, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v27, v240, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v27, v7, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v3, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v6, v6, v238, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v41, v0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v4, v27, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v6, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, s5, v31, v5, v31
	v_dual_fmac_f32 v27, v40, v33 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v21, v3, 1.0
	v_fma_f32 v4, -v4, v27, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v3, v26, v3 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v33, v27
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:324
	scratch_load_b32 v35, off, off offset:80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v6, v3
	v_div_fixup_f32 v4, v4, v32, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v21, v41, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v34, v4
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:328
	scratch_load_b32 v34, off, off offset:88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v20
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v1 :: v_dual_fmac_f32 v41, v39, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v6, -v21, v41, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s6
	v_ldexp_f32 v7, v20, v40
	v_exp_f32_e32 v20, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v6, v3, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v26.h, v110.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v3, v5, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.l, 0x7fff, v25.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v122, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v6, v20, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v7, v7, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v4.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v6, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v110.l
	v_mov_b16_e32 v26.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v3, null, v5, v5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 1, v21
	v_and_b32_e32 v25, 1, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v123, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v3
	v_fma_f32 v29, -v20, v6, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v4, v21, 0x7fff
	v_add3_u32 v25, v2, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v6, v29, v6
	v_div_scale_f32 v29, vcc_lo, v0, v7, v0
	v_fma_f32 v30, -v3, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v30, v27
	v_div_scale_f32 v30, s1, v1, v5, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v31, v33, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v35, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v26, v26, v32, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v32, v29, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v170, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v34, v26, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v20, v32, v29
	v_mul_f32_e32 v34, v30, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v31, v22, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v31, v28, v38, s0
	v_cndmask_b32_e64 v28, v38, v28, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v33, v6
	v_fma_f32 v33, -v3, v34, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v172, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v20, v32, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v29, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v33, v27
	v_div_fmas_f32 v6, v20, v6, v32
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v3, -v3, v34, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v26, v23, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v6, v7, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v3, v3, v27, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v34, 0x7632
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cndmask_b16 v7.l, 0x7fff, v25.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v20, v0
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v3, v5, v1
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v3, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v7.h, 0x7fff, v21.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v16, v148
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v16, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v22, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v9, v9, v29, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v163, v9, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v131, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v9, v17, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v110.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v6, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v4
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v9, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v6, v6, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v20, v17
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v11, v9, v140
	scratch_load_b32 v11, off, off offset:336 ; 4-byte Folded Reload
	v_fma_f32 v3, v8, v3, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v110.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v140, v9, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, v162, v3, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v16, v3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v18, v148
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v208, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v5, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v10, v110
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v209, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v3
	v_exp_f32_e32 v8, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v11, v139
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v19, v148
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v139, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v11, v11, v104, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v8, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v116, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v11, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:64
	scratch_load_b32 v11, off, off offset:316
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v20, v19, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v8, v8, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v22, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v19, v22, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v22, v29, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v10, v11, v21
	scratch_load_b32 v11, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, s5, v4, v6, v4
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v154, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v23, v21, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v13, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v17, v23, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v27, v20
	v_fma_f32 v17, -v17, v23, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v20, v23
	v_div_fixup_f32 v4, v17, v6, v4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v210, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v10, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v110.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v18, v11, v192
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v192, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v169, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s1, v3, v8, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v12, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v211, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v21, v25, v22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v19, v21, v25
	v_fmac_f32_e32 v21, v20, v22
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v20, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v16, v16, v9
	v_fma_f32 v19, -v19, v21, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v25, v129, v137, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v22, v21
	v_div_scale_f32 v27, null, v18, v18, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v19, v8, v3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v19, v160, v151, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v6, -v26, v29, 1.0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v11, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v6, v29
	v_div_scale_f32 v6, s4, v9, v16, v9
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v13, -v27, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v13, v30
	v_div_scale_f32 v13, s5, v0, v18, v0
	v_mul_f32_e32 v23, v13, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v27, v23, v13
	v_fmac_f32_e32 v23, v22, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v22, v150, v147, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v27, v23, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v36, v133, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v20, v186
	scratch_load_b32 v20, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v186, v17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v14, v126, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v17, v8, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v17, v159, v155, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v20, v191
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v20, v6, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v191, v12, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v26, v20, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v15, v153, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v20, v21, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v15, v167, v164, s0
	v_cndmask_b32_e64 v21, v152, v149, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v12, v14, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v26, v20, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v26, v137, v129, s0
	v_cndmask_b32_e64 v12, v168, v171, s0
	v_cndmask_b32_e64 v14, v164, v167, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v29, v20
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v29, v133, v36, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v30, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v23, v147, v150, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v16, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v9.h, v110.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v13, v18, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v13, v171, v168, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v11, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v110.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v8, v0 :: v_dual_and_b32 v9, 1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v4.h
	v_mov_b16_e32 v8.h, v110.l
	v_mov_b16_e32 v10.l, v6.h
	v_cmp_o_f32_e64 s3, v6, v6
	v_mov_b16_e32 v11.l, v0.h
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v3, v9, 0x7fff
	v_and_b32_e32 v9, 1, v11
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v8, v4, v8, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b32_e64 v11, v177, v174, s0
	v_add3_u32 v3, v0, v9, 0x7fff
	v_add3_u32 v4, v6, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e64 v6, v189, v179, s0
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s4
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_cndmask_b32_e64 v3, v188, v185, s0
	v_cndmask_b32_e64 v32, v0, v7, s0
	v_cndmask_b32_e64 v0, v7, v0, s0
	v_mov_b32_e32 v7, 0x5410
	v_cndmask_b32_e64 v33, v1, v5, s0
	v_cndmask_b32_e64 v1, v5, v1, s0
	v_cndmask_b32_e64 v9, v180, v173, s0
	v_cndmask_b32_e64 v30, v24, v37, s0
	v_cndmask_b32_e64 v5, 0x1054, v7, s0
	v_cndmask_b32_e64 v7, 0x3276, v34, s0
	v_cndmask_b32_e64 v24, v37, v24, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v2, v185, v188, s0
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_or_b32 v7, v7, 8, v7
	v_cndmask_b32_e64 v4, v179, v189, s0
	v_cndmask_b32_e64 v8, v173, v180, s0
	v_cndmask_b32_e64 v10, v174, v177, s0
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v7, 0x760076, v7
	v_cndmask_b32_e64 v16, v155, v159, s0
	v_cndmask_b32_e64 v18, v151, v160, s0
	v_cndmask_b32_e64 v20, v149, v152, s0
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v7, v7, 4, v7
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v35, 0x5040504, v5
	v_and_b32_e32 v36, 0x7060706, v7
	v_permlanex16_b32 v28, v28, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v35
	v_perm_b32 v1, v3, v2, v36
	v_perm_b32 v2, v6, v4, v35
	v_perm_b32 v3, v6, v4, v36
	v_perm_b32 v4, v9, v8, v35
	v_perm_b32 v5, v9, v8, v36
	v_perm_b32 v6, v11, v10, v35
	v_perm_b32 v7, v11, v10, v36
	v_perm_b32 v8, v13, v12, v35
	v_perm_b32 v9, v13, v12, v36
	v_perm_b32 v10, v15, v14, v35
	v_perm_b32 v11, v15, v14, v36
	v_perm_b32 v12, v17, v16, v35
	v_perm_b32 v13, v17, v16, v36
	v_perm_b32 v14, v19, v18, v35
	v_perm_b32 v15, v19, v18, v36
	v_perm_b32 v16, v21, v20, v35
	v_perm_b32 v17, v21, v20, v36
	v_perm_b32 v18, v23, v22, v35
	v_perm_b32 v19, v23, v22, v36
	v_perm_b32 v20, v26, v25, v35
	v_perm_b32 v21, v26, v25, v36
	v_perm_b32 v22, v29, v27, v35
	v_perm_b32 v23, v29, v27, v36
	v_perm_b32 v26, v28, v31, v35
	v_perm_b32 v27, v28, v31, v36
	v_perm_b32 v28, v37, v32, v35
	v_perm_b32 v29, v37, v32, v36
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v66, v64, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v24, v34, v30, v35
	v_perm_b32 v25, v34, v30, v36
	v_add_lshl_u32 v34, v66, v145, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v32, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v144, v145, 1
	v_add_lshl_u32 v1, v66, v143, 1
	v_add_lshl_u32 v2, v144, v143, 1
	v_add_lshl_u32 v3, v66, v65, 1
	v_perm_b32 v30, v38, v33, v35
	v_perm_b32 v31, v38, v33, v36
	v_add_lshl_u32 v4, v144, v65, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 916
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 916
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 38032
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 916
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 916
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 401
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
