	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v8, 3, v0
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v75, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v2, 56, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s13, v3
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
	v_and_b32_e32 v1, 48, v10
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[5:6], null, s13, v4, v[1:2]
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s16, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s16
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v6, s13, 6, v5
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
	s_sub_i32 s20, s16, s15
	s_cmp_ge_u32 s16, s15
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s16, s20, s16
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s16, s15
	s_cselect_b32 s12, s19, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
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
	s_lshl_b32 s33, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s12, 7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s33, s13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s18, s3
.Ltmp21:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v7, v2, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s2, s22, s23
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s3, s22, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s12, s2, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s3, s3, s26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s12, s12, s26
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s26, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, s3, v5
	v_add_nc_u32_e32 v12, s3, v6
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v5, s12, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s26, 64
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s12, v6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s36, v7
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v11, s2
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, 64, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v14, 0x80000000, v12, s2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v12, 64, v12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v15, 0x80000000, v5, s2
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v5, 64, v5
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v16, 0x80000000, v6, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, 64, v6
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	buffer_load_b64 v[50:51], v9, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v9, 0x80000000, v11, s3
	v_cndmask_b32_e64 v11, 0x80000000, v12, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[18:21], v13, s[28:31], 0 offen
	buffer_load_b128 v[22:25], v14, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v15, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v16, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[52:53], v7, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[34:37], v9, s[28:31], 0 offen
	buffer_load_b128 v[38:41], v11, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v5, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v6, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0xe0, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v13, 16, v75
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v12, 1, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v11, 48, v11
	s_mov_b32 s12, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v9, v8, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v6, 1, v12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v10, v10, v11
	v_and_b32_e32 v6, 48, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, 0, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v14, 2, v7
	v_or_b32_e32 v15, 4, v7
	v_or_b32_e32 v16, 6, v7
	v_or_b32_e32 v17, 8, v7
	v_or_b32_e32 v8, 10, v7
	v_or_b32_e32 v11, 12, v7
	v_or_b32_e32 v12, 14, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v55, 0, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v54, v[50:51] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v55, v[18:21]
	s_waitcnt vmcnt(7)
	ds_store_b128 v55, v[22:25] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v55, v[26:29] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v55, v[30:33] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v54, v[52:53] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v55, v[34:37] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v55, v[38:41] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v55, v[42:45] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v55, v[46:49] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v93, v75, 6, v6
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v100, v5, 5, v93
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v99, 16, v93
	v_xor_b32_e32 v94, 32, v93
	v_xor_b32_e32 v96, 48, v93
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v102, 16, v100
	v_xor_b32_e32 v101, 32, v100
	v_xor_b32_e32 v103, 48, v100
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr103
.LBB0_3:                                ; %Flow324
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v18, s33, v75
	v_or_b32_e32 v13, s33, v13
	s_ashr_i32 s1, s17, 8
	v_or_b32_e32 v90, s22, v7
	v_or_b32_e32 v89, s22, v14
	v_mul_lo_u32 v91, v18, s1
	v_mul_lo_u32 v92, v13, s1
	v_or_b32_e32 v87, s22, v15
	v_or_b32_e32 v85, s22, v16
	v_or_b32_e32 v48, s22, v17
	v_or_b32_e32 v49, s22, v8
	v_or_b32_e32 v50, s22, v11
	v_or_b32_e32 v51, s22, v12
	v_add_nc_u32_e32 v83, s23, v7
	v_add_nc_u32_e32 v82, s23, v14
	v_add_nc_u32_e32 v81, s23, v15
	v_add_nc_u32_e32 v79, s23, v16
	v_add_nc_u32_e32 v78, s23, v17
	v_add_nc_u32_e32 v80, s23, v8
	v_add_nc_u32_e32 v45, s23, v11
	v_add_nc_u32_e32 v46, s23, v12
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s34, s23, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s10, s15, 7
	v_lshl_or_b32 v93, v75, 6, v6
	v_add3_u32 v6, s23, s10, v4
	v_or_b32_e32 v4, s10, v4
	s_lshl_b32 s11, s14, 7
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s16, 6
	v_lshl_or_b32 v100, v5, 5, v93
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v5, s11, v6
	v_subrev_nc_u32_e32 v4, s11, v4
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v6, 64, v5
	v_or_b32_e32 v7, 64, v4
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v3, s33, v3
	v_mul_lo_u32 v6, s13, v6
	v_mul_lo_u32 v5, s13, v5
	v_mul_lo_u32 v7, s13, v7
	v_mul_lo_u32 v4, s13, v4
	v_mul_lo_u32 v3, s13, v3
	s_mov_b32 s13, s12
	v_xor_b32_e32 v99, 16, v93
	v_xor_b32_e32 v94, 32, v93
	v_add3_u32 v11, v6, v1, 0x80
	v_add3_u32 v12, v5, v1, 0x80
	v_add3_u32 v13, v7, v1, 0x80
	v_add3_u32 v14, v4, v1, 0x80
	v_add3_u32 v15, v3, v2, 0x80
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_xor_b32_e32 v96, 48, v93
	v_xor_b32_e32 v102, 16, v100
	v_xor_b32_e32 v101, 32, v100
	v_xor_b32_e32 v103, 48, v100
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v66, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s11, s0, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8800
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
	s_mov_b32 s27, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s26, 31
	s_mov_b32 s13, s26
	s_lshr_b32 s14, s14, 24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v16, s13, v15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s26, s14
	s_mov_b32 s16, s10
	s_ashr_i32 s14, s14, 8
	s_mov_b32 s10, s35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[76:77], v16, s[4:7], 0 offen
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v16, v91, s14, 1
	v_add_lshl_u32 v17, v92, s14, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s14, s14, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v90, s14, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s15, s14, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v89, s14, 1
	v_add_lshl_u32 v20, v87, s14, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v32, v45, s15, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v21, v85, s14, 1
	v_add_lshl_u32 v22, v48, s14, 1
	v_add_lshl_u32 v23, v49, s14, 1
	v_add_lshl_u32 v24, v50, s14, 1
	v_add_lshl_u32 v25, v51, s14, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v26, v83, s15, 1
	v_add_lshl_u32 v27, v82, s15, 1
	v_add_lshl_u32 v28, v81, s15, 1
	v_add_lshl_u32 v29, v79, s15, 1
	v_add_lshl_u32 v30, v78, s15, 1
	v_add_lshl_u32 v31, v80, s15, 1
	v_add_lshl_u32 v71, v46, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v84, v16, s[36:39], 0 offen
	buffer_load_u16 v86, v17, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v88, v18, s[40:43], 0 offen
	buffer_load_u16 v95, v19, s[40:43], 0 offen
	buffer_load_u16 v97, v20, s[40:43], 0 offen
	buffer_load_u16 v98, v21, s[40:43], 0 offen
	buffer_load_u16 v188, v22, s[40:43], 0 offen
	buffer_load_u16 v189, v23, s[40:43], 0 offen
	buffer_load_u16 v190, v24, s[40:43], 0 offen
	buffer_load_u16 v191, v25, s[40:43], 0 offen
	buffer_load_u16 v192, v26, s[40:43], 0 offen
	buffer_load_u16 v193, v27, s[40:43], 0 offen
	buffer_load_u16 v194, v28, s[40:43], 0 offen
	buffer_load_u16 v195, v29, s[40:43], 0 offen
	buffer_load_u16 v196, v30, s[40:43], 0 offen
	buffer_load_u16 v197, v31, s[40:43], 0 offen
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	buffer_load_u16 v198, v71, s[40:43], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v16, s13, v14
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v17, s13, v13
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v18, s13, v12
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v19, s13, v11
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[71:74], v16, s[28:31], 0 offen
	buffer_load_b128 v[120:123], v17, s[28:31], 0 offen
	buffer_load_b128 v[124:127], v18, s[28:31], 0 offen
	buffer_load_b128 v[128:131], v19, s[28:31], 0 offen
	s_mov_b32 s14, s0
	s_mov_b32 s15, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v16, s14, v93
	v_add_nc_u32_e32 v17, s14, v99
	v_add_nc_u32_e32 v18, s14, v94
	v_add_nc_u32_e32 v19, s14, v96
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v20, s15, v100
	v_add_nc_u32_e32 v21, s15, v102
	v_add_nc_u32_e32 v22, s15, v101
	v_add_nc_u32_e32 v23, s15, v103
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v24, s16, v100
	v_add_nc_u32_e32 v25, s16, v102
	v_add_nc_u32_e32 v26, s16, v101
	v_add_nc_u32_e32 v27, s16, v103
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[132:135], v16
	ds_load_b128 v[112:115], v16 offset:1024
	ds_load_b128 v[136:139], v17
	ds_load_b128 v[140:143], v17 offset:1024
	ds_load_b128 v[144:147], v18
	ds_load_b128 v[148:151], v18 offset:1024
	ds_load_b128 v[152:155], v19
	ds_load_b128 v[156:159], v19 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[104:107], v20
	ds_load_b128 v[160:163], v21
	ds_load_b128 v[164:167], v22
	ds_load_b128 v[168:171], v23
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[172:175], v24
	ds_load_b128 v[176:179], v25
	ds_load_b128 v[180:183], v26
	ds_load_b128 v[184:187], v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s27, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, s14, 0
	s_mov_b32 s12, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s14, s27, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s15, s27, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s14, s14, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s44, s15, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, -1
	s_mov_b32 s0, s45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[16:23], v[104:107], v[132:135], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[104:107], v[112:115], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[104:111], v[172:175], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[16:23], v[160:163], v[136:139], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[160:163], v[140:143], v[24:31] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[112:119], v[172:175], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[176:179], v[140:143], v[104:111] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[16:23], v[164:167], v[144:147], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[164:167], v[148:151], v[24:31] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[112:119], v[176:179], v[136:139], v[112:119] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s26, s26, 64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[104:111], v[180:183], v[148:151], v[104:111] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[16:23], v[168:171], v[152:155], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[168:171], v[156:159], v[24:31] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[112:119], v[180:183], v[144:147], v[112:119] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s45, s14, 0x8000
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[104:111], v[184:187], v[156:159], v[104:111] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[112:119], v[184:187], v[152:155], v[112:119] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s35, s44, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v132, 16, v190
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v199, s14, v9
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v136, 16, v194
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v199, v[76:77] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v77, 16, v86
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v138, 16, v196
	v_lshlrev_b32_e32 v137, 16, v195
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v76, 16, v84
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v200, s44, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v151, v76, v137 :: v_dual_lshlrev_b32 v140, 16, v198
	v_dual_mul_f32 v137, v77, v137 :: v_dual_lshlrev_b32 v86, 16, v95
	v_mul_f32_e32 v155, v76, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v152, v76, v136 :: v_dual_fmac_f32 v59, v151, v115
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v63, v137, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v77, v86
	v_mul_f32_e32 v86, v76, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v58, v152, v114
	v_fmac_f32_e32 v38, v155, v119
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v200, v[71:74]
	s_waitcnt vmcnt(2)
	ds_store_b128 v200, v[120:123] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v200, v[124:127] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v200, v[128:131] offset:20480
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v65, v86, v17 :: v_dual_mul_f32 v148, v77, v132
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v132, v76, v132
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v134, 16, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v35, v148, v30 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v139, 16, v197
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v84, 16, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v33, v132, v22 :: v_dual_lshlrev_b32 v88, 16, v97
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v150, v76, v134 :: v_dual_lshlrev_b32 v97, 16, v188
	v_dual_mul_f32 v134, v77, v134 :: v_dual_lshlrev_b32 v133, 16, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v153, v76, v139 :: v_dual_mul_f32 v146, v77, v97
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v97, v76, v97 :: v_dual_mul_f32 v142, v77, v84
	v_dual_mul_f32 v84, v76, v84 :: v_dual_mul_f32 v147, v77, v133
	v_mul_f32_e32 v133, v76, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v41, v97, v20
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v136, v77, v136 :: v_dual_lshlrev_b32 v95, 16, v98
	v_mul_f32_e32 v139, v77, v139
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v144, v77, v88
	v_dual_mul_f32 v88, v76, v88 :: v_dual_mul_f32 v143, v77, v95
	v_dual_mul_f32 v95, v76, v95 :: v_dual_lshlrev_b32 v98, 16, v189
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v67, v142, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v140, v77, v140 :: v_dual_fmac_f32 v61, v143, v27
	v_dual_mul_f32 v154, v76, v138 :: v_dual_lshlrev_b32 v135, 16, v193
	v_dual_mul_f32 v138, v77, v138 :: v_dual_fmac_f32 v57, v95, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v145, v77, v98
	v_mul_f32_e32 v98, v76, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v149, v76, v135
	v_dual_mul_f32 v135, v77, v135 :: v_dual_mul_f32 v76, v76, v32
	v_mul_f32_e32 v32, v77, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v64, v84, v16 :: v_dual_fmac_f32 v53, v153, v117
	v_dual_fmac_f32 v56, v88, v18 :: v_dual_fmac_f32 v43, v146, v28
	v_fmac_f32_e32 v42, v98, v21
	v_dual_fmac_f32 v34, v133, v23 :: v_dual_fmac_f32 v47, v150, v112
	v_dual_fmac_f32 v68, v141, v25 :: v_dual_fmac_f32 v69, v134, v104
	v_dual_fmac_f32 v60, v144, v26 :: v_dual_fmac_f32 v55, v139, v109
	v_fmac_f32_e32 v36, v147, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v66, v149, v113
	v_dual_fmac_f32 v52, v154, v116 :: v_dual_fmac_f32 v37, v76, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v44, v145, v29 :: v_dual_fmac_f32 v39, v32, v110
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v70, v135, v105
	v_fmac_f32_e32 v62, v136, v106
	v_fmac_f32_e32 v54, v138, v108
	v_fmac_f32_e32 v40, v140, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s36, s13, 0x80
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8800
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v17, s0, v94
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v1, s0, v93
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v5, s0, v99
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v18, s0, v96
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v17
	ds_load_b128 v[21:24], v17 offset:1024
	ds_load_b128 v[25:28], v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[17:20], v18 offset:1024
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[1:4], v1 offset:1024
	ds_load_b128 v[9:12], v5
	ds_load_b128 v[5:8], v5 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v71, 0, 1, s2
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v115, 0
	v_mov_b32_e32 v114, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v123, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v71
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s48, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v71, s12, v100
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v111, s55 :: v_dual_add_nc_u32 v76, s12, v102
	v_mov_b32_e32 v110, s54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[71:74], v71
	ds_load_b128 v[112:115], v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v108, s52 :: v_dual_add_nc_u32 v77, s12, v101
	v_dual_mov_b32 v109, s53 :: v_dual_add_nc_u32 v76, s12, v103
	v_dual_mov_b32 v107, s51 :: v_dual_mov_b32 v106, s50
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[127:130], v77
	ds_load_b128 v[131:134], v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v105, s49 :: v_dual_mov_b32 v104, s48
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[71:74], v[13:16], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[71:74], v[1:4], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[112:115], v[9:12], v[119:126] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[112:115], v[5:8], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[127:130], v[29:32], v[119:126] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[127:130], v[21:24], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[131:134], v[25:28], v[119:126] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[131:134], v[17:20], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v122
	v_cvt_f32_i32_e32 v84, v123
	v_cvt_f32_i32_e32 v86, v124
	v_cvt_f32_i32_e32 v71, v125
	v_cvt_f32_i32_e32 v72, v126
	v_cvt_f32_i32_e32 v123, v104
	v_cvt_f32_i32_e32 v124, v105
	v_cvt_f32_i32_e32 v121, v106
	v_cvt_f32_i32_e32 v122, v107
	v_cvt_f32_i32_e32 v116, v108
	v_cvt_f32_i32_e32 v117, v109
	v_cvt_f32_i32_e32 v73, v110
	v_cvt_f32_i32_e32 v74, v111
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v95, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v111, s19 :: v_dual_add_nc_u32 v76, s10, v100
	v_dual_mov_b32 v110, s18 :: v_dual_add_nc_u32 v77, s10, v102
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	ds_load_b128 v[125:128], v76
	ds_load_b128 v[129:132], v77
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v108, s16 :: v_dual_add_nc_u32 v77, s10, v101
	v_dual_mov_b32 v109, s17 :: v_dual_add_nc_u32 v76, s10, v103
	v_dual_mov_b32 v107, s15 :: v_dual_mov_b32 v106, s14
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[144:147], v77
	ds_load_b128 v[148:151], v76
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v105, s13 :: v_dual_mov_b32 v104, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[125:128], v[13:16], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[125:128], v[1:4], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[129:132], v[9:12], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[129:132], v[5:8], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[144:147], v[29:32], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[144:147], v[21:24], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[148:151], v[25:28], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[148:151], v[17:20], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v127, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v128, v139
	v_cvt_f32_i32_e32 v125, v140
	v_cvt_f32_i32_e32 v126, v141
	v_cvt_f32_i32_e32 v76, v142
	v_cvt_f32_i32_e32 v77, v143
	v_cvt_f32_i32_e32 v134, v104
	v_cvt_f32_i32_e32 v135, v105
	v_cvt_f32_i32_e32 v132, v106
	v_cvt_f32_i32_e32 v133, v107
	v_cvt_f32_i32_e32 v129, v108
	v_cvt_f32_i32_e32 v130, v109
	v_cvt_f32_i32_e32 v88, v110
	v_cvt_f32_i32_e32 v95, v111
	v_cvt_f32_i32_e32 v118, v136
	v_cvt_f32_i32_e32 v131, v137
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v1, v91, s0, 1
	v_add_lshl_u32 v2, v92, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v90, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v89, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v164, v1, s[8:11], 0 offen
	buffer_load_u16 v165, v2, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v87, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v3 :: v_dual_cndmask_b32 v3, 0x80000000, v4
	v_add_lshl_u32 v4, v85, s0, 1
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v5, v48, s0, 1
	v_add_lshl_u32 v6, v49, s0, 1
	v_add_lshl_u32 v7, v50, s0, 1
	v_add_lshl_u32 v8, v51, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, s0, v83, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v10, s0, v82, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v11, s0, v81, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_clause 0x7
	buffer_load_u16 v167, v2, s[24:27], 0 offen
	buffer_load_u16 v166, v3, s[24:27], 0 offen
	buffer_load_u16 v161, v1, s[24:27], 0 offen
	buffer_load_u16 v160, v4, s[24:27], 0 offen
	buffer_load_u16 v146, v5, s[24:27], 0 offen
	buffer_load_u16 v145, v6, s[24:27], 0 offen
	buffer_load_u16 v97, v7, s[24:27], 0 offen
	buffer_load_u16 v98, v8, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v79, 1
	v_add_lshl_u32 v5, s0, v78, 1
	v_dual_cndmask_b32 v1, 0x80000000, v9 :: v_dual_cndmask_b32 v2, 0x80000000, v10
	v_add_lshl_u32 v6, s0, v80, 1
	v_add_lshl_u32 v7, s0, v45, 1
	v_add_lshl_u32 v8, s0, v46, 1
	v_dual_cndmask_b32 v3, 0x80000000, v11 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_clause 0x7
	buffer_load_u16 v169, v1, s[24:27], 0 offen
	buffer_load_u16 v168, v2, s[24:27], 0 offen
	buffer_load_u16 v163, v3, s[24:27], 0 offen
	buffer_load_u16 v162, v4, s[24:27], 0 offen
	buffer_load_u16 v159, v5, s[24:27], 0 offen
	buffer_load_u16 v158, v6, s[24:27], 0 offen
	buffer_load_u16 v104, v7, s[24:27], 0 offen
	buffer_load_u16 v105, v8, s[24:27], 0 offen
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v17, s45, v94
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v1, s45, v93
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v5, s45, v99
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v18, s45, v96
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v17
	ds_load_b128 v[21:24], v17 offset:1024
	ds_load_b128 v[25:28], v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[17:20], v18 offset:1024
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[1:4], v1 offset:1024
	ds_load_b128 v[9:12], v5
	ds_load_b128 v[5:8], v5 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v93, 0, 1, s3
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v94, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v93
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v99, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v154, s19 :: v_dual_add_nc_u32 v93, s44, v100
	v_dual_mov_b32 v153, s18 :: v_dual_add_nc_u32 v94, s44, v102
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[137:140], v93
	ds_load_b128 v[141:144], v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v151, s16 :: v_dual_add_nc_u32 v94, s44, v101
	v_dual_mov_b32 v152, s17 :: v_dual_add_nc_u32 v93, s44, v103
	v_dual_mov_b32 v150, s15 :: v_dual_mov_b32 v149, s14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[170:173], v94
	ds_load_b128 v[174:177], v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v148, s13 :: v_dual_mov_b32 v147, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[137:140], v[13:16], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[137:140], v[1:4], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[141:144], v[9:12], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[141:144], v[5:8], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[170:173], v[29:32], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[170:173], v[21:24], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[25:28], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[174:177], v[17:20], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v137, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v138, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v93, v112
	v_cvt_f32_i32_e32 v94, v113
	v_cvt_f32_i32_e32 v141, v147
	v_cvt_f32_i32_e32 v142, v148
	v_cvt_f32_i32_e32 v143, v149
	v_cvt_f32_i32_e32 v144, v150
	v_cvt_f32_i32_e32 v110, v151
	v_cvt_f32_i32_e32 v111, v152
	v_cvt_f32_i32_e32 v99, v153
	v_cvt_f32_i32_e32 v96, v154
	v_cvt_f32_i32_e32 v139, v106
	v_cvt_f32_i32_e32 v140, v107
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v113, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v177, s19 :: v_dual_add_nc_u32 v100, s35, v100
	v_dual_mov_b32 v175, s17 :: v_dual_add_nc_u32 v102, s35, v102
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[178:181], v100
	ds_load_b128 v[182:185], v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v171, s13 :: v_dual_add_nc_u32 v100, s35, v101
	v_dual_mov_b32 v173, s15 :: v_dual_add_nc_u32 v106, s35, v103
	v_mov_b32_e32 v176, s18
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[100:103], v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v174, s16
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[186:189], v106
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v172, s14
	v_mov_b32_e32 v170, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[178:181], v[13:16], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[178:181], v[1:4], v[170:177] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[182:185], v[9:12], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[182:185], v[5:8], v[170:177] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[100:103], v[29:32], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[100:103], v[21:24], v[170:177] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[186:189], v[25:28], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[186:189], v[17:20], v[170:177] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v136, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v147, v152
	v_cvt_f32_i32_e32 v148, v153
	v_cvt_f32_i32_e32 v106, v154
	v_cvt_f32_i32_e32 v107, v155
	v_cvt_f32_i32_e32 v154, v170
	v_cvt_f32_i32_e32 v155, v171
	v_cvt_f32_i32_e32 v156, v172
	v_cvt_f32_i32_e32 v157, v173
	v_cvt_f32_i32_e32 v152, v174
	v_cvt_f32_i32_e32 v153, v175
	v_cvt_f32_i32_e32 v112, v176
	v_cvt_f32_i32_e32 v113, v177
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s36, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s36, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6) lgkmcnt(4)
	v_mov_b16_e64 v20.h, v168.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v21.h, v167.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v1, v91, s0, 1
	v_add_lshl_u32 v2, v92, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v90, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v6, v89, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v87, s1, 1
	v_add_lshl_u32 v8, v85, s1, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v4, v1, s[8:11], 0 offen
	buffer_load_u16 v5, v2, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v6 :: v_dual_cndmask_b32 v2, 0x80000000, v7
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s1, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v7, s0, v83, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x3
	buffer_load_u16 v8, v3, s[24:27], 0 offen
	buffer_load_u16 v9, v1, s[24:27], 0 offen
	buffer_load_u16 v10, v2, s[24:27], 0 offen
	buffer_load_u16 v11, v6, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v2, s0, v82, 1
	v_add_lshl_u32 v3, s0, v81, 1
	v_add_lshl_u32 v6, s0, v79, 1
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	v_add_lshl_u32 v7, s0, v78, 1
	v_add_lshl_u32 v12, s0, v80, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_cndmask_b32_e32 v17, 0x80000000, v12, vcc_lo
	s_clause 0x5
	buffer_load_u16 v12, v1, s[24:27], 0 offen
	buffer_load_u16 v13, v2, s[24:27], 0 offen
	buffer_load_u16 v14, v3, s[24:27], 0 offen
	buffer_load_u16 v15, v6, s[24:27], 0 offen
	buffer_load_u16 v16, v7, s[24:27], 0 offen
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s23, v75
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v165.l
	v_mov_b16_e64 v2.h, v164.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v7.h, v169.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v25.h, v161.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v7.l, v1.l
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v6, 0x78, v6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v21.l, v1.l
	v_mov_b16_e32 v25.l, v1.l
	v_add_lshl_u32 v48, v48, s1, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s4, s33, s23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v19.h, v145.l
	v_mov_b16_e32 v19.l, v1.l
	v_add_lshl_u32 v49, v49, s1, 1
	v_add_lshl_u32 v50, v50, s1, 1
	v_add_lshl_u32 v51, v51, s1, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s4, s4, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v22.h, v166.l
	v_mov_b16_e64 v26.h, v160.l
	v_mov_b16_e32 v22.l, v1.l
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v81, v1, v20
	v_mul_f32_e32 v82, v1, v7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v1, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v7, v2, v7 :: v_dual_mul_f32 v90, v1, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v1, v25
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v3, s4, v6, v3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v6, 0x80000000, v48 :: v_dual_mul_f32 v101, v1, v19
	v_dual_cndmask_b32 v48, 0x80000000, v49 :: v_dual_cndmask_b32 v49, 0x80000000, v50
	v_cndmask_b32_e32 v50, 0x80000000, v51, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v24.h, v162.l
	v_mov_b16_e32 v24.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v83, v1, v22
	v_mul_f32_e32 v22, v2, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v82, v134, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v85, v123, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v85, v7, v118, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x3
	buffer_load_u16 v103, v6, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v7, v49, s[24:27], 0 offen
	buffer_load_u16 v6, v50, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(19)
	v_mov_b16_e64 v27.h, v159.l
	v_mov_b16_e32 v27.l, v1.l
	v_mov_b16_e64 v23.h, v163.l
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v28.h, v158.l
	v_mov_b16_e32 v23.l, v1.l
	v_mov_b16_e32 v28.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v2, v20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v25, v2, v25 :: v_dual_mul_f32 v100, v1, v27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v45, s0, v45, 1
	v_add_lshl_u32 v46, s0, v46, 1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v2, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v18.h, v146.l
	v_mov_b16_e32 v18.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v21, v2, v21 :: v_dual_mul_f32 v92, v1, v28
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v87, v1, v24 :: v_dual_mul_f32 v26, v2, v26
	v_dual_mul_f32 v89, v1, v23 :: v_dual_mul_f32 v28, v2, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v23, v2, v23 :: v_dual_mul_f32 v102, v1, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v131, v66
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v125, v52
	v_fma_f32 v23, v23, v127, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v115, v57
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v126, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v20, s2
	v_cndmask_b32_e64 v27, v52, v27, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v114, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v69, v51, s2
	v_cndmask_b32_e64 v23, v58, v23, s2
	v_cndmask_b32_e64 v26, v57, v26, s2
	v_cndmask_b32_e64 v28, v53, v28, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v2, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v83, v124, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v56, v25, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v81, v81, v135, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v119, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v89, v89, v132, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v68, v83, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v90, v122, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v24, v128, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v70, v81, s2
	v_cndmask_b32_e64 v47, v47, v85, s2
	v_cndmask_b32_e64 v21, v64, v21, s2
	v_cndmask_b32_e64 v62, v62, v89, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v120, v65
	v_fma_f32 v91, v91, v121, v60
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v100, v100, v129, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v61, v90, s2
	v_cndmask_b32_e64 v24, v59, v24, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v92, v92, v130, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v82, s2
	v_cndmask_b32_e64 v22, v65, v22, s2
	v_cndmask_b32_e64 v60, v60, v91, s2
	v_cndmask_b32_e64 v54, v54, v100, s2
	v_cndmask_b32_e64 v55, v55, v92, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v87, v87, v133, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v101, v101, v117, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.h, v1.l
	v_mov_b16_e32 v80.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v102, v102, v116, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v87, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v1.l
	v_mov_b16_e32 v32.h, v1.l
	v_mov_b16_e32 v30.h, v1.l
	v_mov_b16_e32 v78.h, v1.l
	v_mov_b16_e32 v29.h, v1.l
	v_mov_b16_e32 v75.h, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v2, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s12, s23, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v18, v84, v41
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v2, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v41, v18, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v86, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v42, v19, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1
	buffer_load_u16 v20, v45, s[24:27], 0 offen
	buffer_load_u16 v45, v46, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v9, 16, v9
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v5, v8
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v8, v4, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	v_mul_f32_e32 v46, v5, v9
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v9, v4, v9 :: v_dual_lshlrev_b32 v10, 16, v10
	v_mul_f32_e32 v53, v5, v11
	v_mul_f32_e32 v11, v4, v11
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v58, v5, v12 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v56, v5, v10 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v138, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v58, v58, v154, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v57, v5, v13 :: v_dual_lshlrev_b32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v4, v13 :: v_dual_mul_f32 v68, v5, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v26, v11, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, v50, v58, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v16, v4, v16 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v4, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v4, v12
	v_mul_f32_e32 v64, v5, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v147, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v59, v5, v15
	v_mul_f32_e32 v15, v4, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v137, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v57, v57, v155, v49
	v_fma_f32 v12, v12, v136, v47
	v_fma_f32 v64, v64, v156, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v27, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v139, v21
	v_fma_f32 v53, v53, v144, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v13, v149, v66
	v_fma_f32 v15, v15, v151, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v25, v10, s3
	v_cndmask_b32_e64 v25, v49, v57, s3
	v_cndmask_b32_e64 v12, v47, v12, s3
	v_cndmask_b32_e64 v49, v62, v64, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v14, v4, v14 :: v_dual_mul_f32 v65, v5, v17
	v_mul_f32_e32 v17, v4, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v52, v141, v67
	v_fma_f32 v46, v46, v142, v51
	v_fma_f32 v9, v9, v140, v22
	v_fma_f32 v56, v56, v143, v60
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v152, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v21, v8, s3
	v_cndmask_b32_e64 v21, v61, v53, s3
	v_cndmask_b32_e64 v13, v66, v13, s3
	v_cndmask_b32_e64 v15, v24, v15, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v14, v150, v23
	v_fma_f32 v65, v65, v153, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v51, v46, s3
	v_cndmask_b32_e64 v51, v67, v52, s3
	v_cndmask_b32_e64 v9, v22, v9, s3
	v_cndmask_b32_e64 v22, v60, v56, s3
	v_cndmask_b32_e64 v24, v54, v68, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v13
	v_dual_mul_f32 v56, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v148, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v23, v14, s3
	v_cndmask_b32_e64 v23, v55, v65, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v52
	v_cndmask_b32_e64 v53, 0, 0x42800000, s6
	v_exp_f32_e32 v27, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v28, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v28, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v58, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v50
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v27, v27, v62
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v57
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v59, v59, v157, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s4
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s6
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	v_dual_mul_f32 v60, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v57, 0, 0x42800000, s10
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v63, v59, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s1
	v_ldexp_f32 v53, v53, v66
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v12
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v24
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v52, v52, v63
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v27, v27, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v91, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v56
	v_ldexp_f32 v28, v28, v61
	v_ldexp_f32 v55, v55, v68
	v_ldexp_f32 v50, v50, v64
	v_dual_mul_f32 v54, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_add_f32 v55, 1.0, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v121, -v63, v91, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v87, null, v55, v55, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v121, v91
	v_div_scale_f32 v68, s4, v12, v50, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v117, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s5
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v58
	v_exp_f32_e32 v56, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v53, v53, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v58, 0, 0x42800000, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v118, s8, v14, v55, v14
	v_fma_f32 v127, -v87, v117, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v115, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v56, v56, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v50, v50, v12
	v_fmac_f32_e32 v117, v127, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v54
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v100, v67
	v_div_scale_f32 v61, null, v28, v28, v25
	v_mul_f32_e32 v127, v118, v117
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v58, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v125, -v81, v115, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v90, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v54, v54, v65
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v123, -v67, v100, 1.0
	v_div_scale_f32 v64, s0, v26, v27, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_fmac_f32 v115, v125, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v52, v52, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v100, v123, v100
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v58, v58, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v121, v64, v91
	v_div_scale_f32 v69, null, v54, v54, v47
	v_rcp_f32_e32 v92, v65
	v_fma_f32 v120, -v61, v90, 1.0
	v_mul_f32_e32 v123, v68, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v114, v69
	v_div_scale_f32 v82, s6, v49, v53, v49
	v_div_scale_f32 v62, vcc_lo, v25, v28, v25
	v_fma_f32 v131, -v67, v123, v68
	v_fmac_f32_e32 v90, v120, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v56, 1.0, v56 :: v_dual_mul_f32 v125, v82, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v65, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v123, v131, v100 :: v_dual_mul_f32 v120, v62, v90
	v_fma_f32 v124, -v69, v114, 1.0
	v_div_scale_f32 v66, s1, v13, v52, v13
	v_fma_f32 v133, -v81, v125, v82
	v_fmac_f32_e32 v92, v122, v92
	v_fma_f32 v128, -v61, v120, v62
	v_div_scale_f32 v70, s5, v47, v54, v47
	v_fma_f32 v135, -v87, v127, v118
	v_dual_fmac_f32 v114, v124, v114 :: v_dual_fmac_f32 v125, v133, v115
	v_mul_f32_e32 v122, v66, v92
	v_fmac_f32_e32 v120, v128, v90
	v_fma_f32 v129, -v63, v121, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v127, v135, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v124, v70, v114
	v_fma_f32 v130, -v65, v122, v66
	v_div_scale_f32 v83, null, v56, v56, v15
	v_fma_f32 v61, -v61, v120, v62
	v_fmac_f32_e32 v121, v129, v91
	v_div_scale_f32 v89, null, v58, v58, v23
	v_fma_f32 v132, -v69, v124, v70
	v_fmac_f32_e32 v122, v130, v92
	v_rcp_f32_e32 v116, v83
	v_div_fmas_f32 v61, v61, v90, v120
	v_fma_f32 v62, -v63, v121, v64
	v_rcp_f32_e32 v119, v89
	v_fmac_f32_e32 v124, v132, v114
	v_fma_f32 v63, -v65, v122, v66
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v64, -v67, v123, v68
	v_div_fixup_f32 v25, v61, v28, v25
	v_div_fmas_f32 v62, v62, v91, v121
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v69, v124, v70
	v_div_fmas_f32 v63, v63, v92, v122
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v126, -v83, v116, 1.0
	v_fma_f32 v66, -v81, v125, v82
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v46, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v64, v100, v123
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v26, v62, v27, v26
	v_div_fmas_f32 v27, v65, v114, v124
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v85, s7, v15, v56, v15
	v_div_fixup_f32 v13, v63, v52, v13
	v_fmac_f32_e32 v116, v126, v116
	v_div_fmas_f32 v46, v66, v115, v125
	v_fma_f32 v68, -v87, v127, v118
	s_mov_b32 vcc_lo, s7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v28, v50, v12
	v_div_fixup_f32 v46, v46, v53, v49
	v_mul_f32_e32 v126, v85, v116
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v25.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v51, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v27, v54, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v134, -v83, v126, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v60
	v_exp_f32_e32 v57, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v126, v134, v116
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s11
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v83, v126, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v67, v116, v126
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v13, v68, v117, v127
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v55, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v31, 16, v48
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v8, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v28, v56, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v10, v13 :: v_dual_mul_f32 v47, v5, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v12.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v8
	v_mul_f32_e32 v15, v21, v27
	v_dual_mul_f32 v21, v22, v46 :: v_dual_and_b32 v22, 1, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v78.l, v10.h
	v_add3_u32 v13, v25, v14, 0x7fff
	v_and_b32_e32 v14, 1, v30
	v_mov_b16_e32 v75.l, v11.h
	v_cmp_o_f32_e64 s0, v26, v26
	v_add3_u32 v22, v26, v22, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v31, v4, v31 :: v_dual_and_b32 v26, 1, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v12, v12
	v_and_b32_e32 v8, 1, v29
	v_add3_u32 v12, v12, v14, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v75
	v_mov_b16_e32 v80.l, v21.h
	v_cmp_o_f32_e64 s8, v10, v10
	v_add3_u32 v10, v10, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v5, v29
	v_mul_f32_e32 v29, v4, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v11, v14, 0x7fff
	v_add3_u32 v9, v9, v8, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v13.h, vcc_lo
	v_and_b32_e32 v13, 1, v80
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v13, v21, v13, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v60
	v_ldexp_f32 v10, v57, v10
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v22.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v89, v119, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s11
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v15.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v119, v22, v119
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v10, v10, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, vcc_lo, v23, v58, v23
	v_rcp_f32_e32 v28, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v15, v15, v25, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v26, v27, v119
	v_div_scale_f32 v30, null, v21, v21, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v44, v101, s2
	v_cndmask_b32_e64 v25, v43, v102, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v89, v26, v27
	v_fma_f32 v43, -v22, v28, 1.0
	v_rcp_f32_e32 v44, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v32, v119
	v_fmac_f32_e32 v28, v43, v28
	v_div_scale_f32 v32, s0, v24, v10, v24
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v89, v26, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v49, v32, v28
	v_fma_f32 v50, -v30, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v27, v119, v26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v22, v49, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s1, v17, v21, v17
	v_fmac_f32_e32 v49, v27, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v27, v50, v44
	v_fma_f32 v22, -v22, v49, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v30, v27, v50
	v_div_fmas_f32 v22, v22, v28, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v29, v108, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v32, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v28, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v30, v27, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v31, v109, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v29, v44, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v30, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v27, v21, v17
	v_div_fixup_f32 v21, v26, v58, v23
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v19, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v14, v14, v16
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v19.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v13.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v19.h, v105.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v22, v10, v24
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v24.l, v1.l
	v_mov_b16_e32 v24.h, v104.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v13, v17, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v46, v43, 1.0
	v_fmac_f32_e32 v43, v51, v43
	v_div_scale_f32 v51, s4, v16, v14, v16
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v52, v51, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v46, v52, v51
	v_fmac_f32_e32 v52, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v46, v52, v51
	v_div_fmas_f32 v29, v31, v43, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v47, v111, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v31, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v15, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v29, v14, v16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v48, v110, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v21.l, v13.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v25, v16, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v1.l
	v_mov_b16_e32 v25.h, v98.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v1.l
	v_mov_b16_e32 v18.l, v14.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v16, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v1, v19
	v_mul_f32_e32 v19, v2, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v16, v95, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v77, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v14, v18, 0x7fff
	v_and_b32_e32 v14, 1, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v40, v15, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v5, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v38, v19, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v4, v16
	v_mul_f32_e32 v23, v1, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 1, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v113, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v107, v19
	v_fma_f32 v18, v23, v88, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v13, v21, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v22, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v19, v16, s3
	v_cndmask_b32_e64 v13, v39, v18, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.h, v97.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v2, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v5, v20
	v_mul_f32_e32 v20, v4, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v24, v76, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v112, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v37, v24, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v5, v7
	v_mul_f32_e32 v5, v5, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v22, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v2, v25 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v16
	v_dual_mul_f32 v2, v2, v23 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v74, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v20, v106, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v71, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v36, v22, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v1, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v25, v72, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v24, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v4, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v73, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v34, v23, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v35, v27, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v33, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v94, v23
	v_fma_f32 v5, v5, v96, v22
	v_fma_f32 v37, v37, v99, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v28, v28, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v93, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v23, v6, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v10, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v22, v5, s3
	v_cndmask_b32_e64 v2, v2, v4, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s1, v16, v28, v16
	v_mul_f32_e32 v25, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v36, v25, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v25, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v18, v18, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, vcc_lo, v15, v18, v15
	v_rcp_f32_e32 v26, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v24, v24, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v20, v26, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v30, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v30, null, v24, v24, v13
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v31, v32, v26
	v_rcp_f32_e32 v35, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v41, null, v29, v29, v19
	v_fma_f32 v38, -v20, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v38, v26
	v_fma_f32 v39, -v30, v35, 1.0
	v_div_scale_f32 v38, s0, v13, v24, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v31, v32
	v_fmac_f32_e32 v35, v39, v35
	v_rcp_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v26, v31
	v_mul_f32_e32 v32, v38, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v30, v32, v38
	v_fma_f32 v31, -v41, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v26, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v31, v39
	v_div_scale_f32 v31, s4, v19, v29, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v30, v32, v38
	v_mul_f32_e32 v26, v31, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v30, v35, v32
	v_fma_f32 v30, -v36, v25, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v26, v31
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v7, v24, v13
	v_div_fmas_f32 v25, v30, v40, v25
	v_fmac_f32_e32 v26, v38, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v1.l
	v_and_b32_e32 v0, 0x5040504, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v25, v28, v16
	v_fma_f32 v31, -v41, v26, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v31, v39, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v27, v37, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v26, v29, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v14.h, vcc_lo
	v_mov_b16_e32 v14.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v20, v18, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.h, v1.l
	v_mov_b16_e32 v15.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v5, v4 :: v_dual_mul_f32 v5, v10, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v13
	v_and_b32_e32 v10, 1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v4.h
	v_mov_b16_e32 v14.l, v5.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v6, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v6, v2, v10, 0x7fff
	v_and_b32_e32 v10, 1, v13
	v_and_b32_e32 v7, 1, v14
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v5, v7, 0x7fff
	v_add3_u32 v7, v4, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b32_e64 v5, v17, v9, s0
	v_cndmask_b16 v6.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v4, 0x3276, v10, s0
	v_cndmask_b32_e64 v7, v1, v11, s0
	v_cndmask_b32_e64 v1, v11, v1, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v11, v6, v12, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v9, v17, s0
	v_cndmask_b32_e64 v9, v21, v8, s0
	v_cndmask_b32_e64 v8, v8, v21, s0
	v_cndmask_b32_e64 v6, v12, v6, s0
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v10, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_perm_b32 v4, v10, v5, v0
	v_perm_b32 v6, v1, v7, v0
	v_perm_b32 v8, v12, v9, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x7060706, v2
	v_perm_b32 v5, v10, v5, v2
	v_perm_b32 v7, v1, v7, v2
	v_perm_b32 v10, v13, v11, v0
	v_lshlrev_b32_e32 v0, 1, v3
	v_perm_b32 v9, v12, v9, v2
	v_perm_b32 v11, v13, v11, v2
	v_add_lshl_u32 v1, v3, s12, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v1, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 201
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11256
; TotalNumSgprs: 58
; NumVgprs: 201
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 58
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     201
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
