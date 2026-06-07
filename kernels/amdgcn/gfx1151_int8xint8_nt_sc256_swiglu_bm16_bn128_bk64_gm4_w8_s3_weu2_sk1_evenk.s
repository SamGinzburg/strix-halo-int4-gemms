	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 2, v4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v8, s14, v3
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s19, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s13, s2
	s_abs_i32 s17, s19
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s15, s17
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v10
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s15, s15, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s14, v5, v[1:2]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s15, s15
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s31, s7
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s15
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s14, 6, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s12, s15, s18
	s_mov_b64 s[24:25], s[10:11]
	s_add_i32 s15, s15, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s13, s15
	s_xor_b32 s15, s2, s19
	s_mul_i32 s18, s12, s17
	s_ashr_i32 s15, s15, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s20, s13, s17
	s_cmp_ge_u32 s13, s17
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s20, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s17
	s_cselect_b32 s12, s18, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s18, s12, s15
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s14, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s18, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s12, s19
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s19, s14, 0xff
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s19, 31
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s16, s2, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s12, 7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s16, s14
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s19, s19, s3
.Ltmp21:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v8, v8, v2, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s2, s22, s23
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s12, s22, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 63
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s2, s2, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s12, s12, s26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s2, s2, s26
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s26, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, s12, v6
	v_add_nc_u32_e32 v12, s12, v7
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s2, v6
	v_add_nc_u32_e32 v7, s2, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s13, s26, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s13, v8
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v11, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, 64, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v14, 0x80000000, v12, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v12, 64, v12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v15, 0x80000000, v6, s3
	.loc	1 356 39 is_stmt 0              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, 64, v6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v16, 0x80000000, v7, s3
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, 64, v7
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_b32 v50, v9, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v9, 0x80000000, v11, s2
	v_cndmask_b32_e64 v11, 0x80000000, v12, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[18:21], v13, s[28:31], 0 offen
	buffer_load_b128 v[22:25], v14, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v15, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v16, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v51, v8, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[34:37], v9, s[28:31], 0 offen
	buffer_load_b128 v[38:41], v11, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v6, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v7, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v6, 0xe0, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v7, 1, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v11, 2, v0
	s_mov_b32 s12, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v9, 1, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v12, 48, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v13, 48, v8
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v8, v3, 1, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v9, v11, v12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v10, v10, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v14, 2, v8
	v_or_b32_e32 v15, 4, v8
	v_or_b32_e32 v16, 6, v8
	v_or_b32_e32 v17, 8, v8
	v_or_b32_e32 v11, 10, v8
	v_or_b32_e32 v12, 12, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, 0, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v13, 14, v8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v53, 0, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v52, v50 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v53, v[18:21]
	s_waitcnt vmcnt(7)
	ds_store_b128 v53, v[22:25] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v53, v[26:29] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v53, v[30:33] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v52, v51 offset:33792
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v53, v[34:37] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v53, v[38:41] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v53, v[42:45] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v53, v[46:49] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v18, 48, v7
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v4, 6, v18
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v51, v6, 5, v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v56, 16, v55
	v_xor_b32_e32 v57, 32, v55
	v_xor_b32_e32 v58, 48, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v52, 16, v51
	v_xor_b32_e32 v53, 32, v51
	v_xor_b32_e32 v54, 48, v51
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
.LBB0_3:                                ; %Flow164
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v33, s16, v4
	s_ashr_i32 s1, s19, 8
	v_or_b32_e32 v48, s22, v8
	v_or_b32_e32 v49, s22, v14
	v_or_b32_e32 v47, s22, v15
	v_mul_lo_u32 v50, v33, s1
	v_or_b32_e32 v46, s22, v16
	v_or_b32_e32 v45, s22, v17
	v_or_b32_e32 v44, s22, v11
	v_or_b32_e32 v43, s22, v12
	v_or_b32_e32 v42, s22, v13
	v_add_nc_u32_e32 v41, s23, v8
	v_add_nc_u32_e32 v40, s23, v14
	v_add_nc_u32_e32 v39, s23, v15
	v_add_nc_u32_e32 v37, s23, v16
	v_add_nc_u32_e32 v35, s23, v17
	v_add_nc_u32_e32 v38, s23, v11
	v_add_nc_u32_e32 v36, s23, v12
	v_add_nc_u32_e32 v34, s23, v13
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s33, s23, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s18, 7
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s17, 6
	s_mov_b32 s13, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v3, s16, v3
	s_mov_b32 s16, s12
	v_and_b32_e32 v7, 48, v7
	v_add3_u32 v8, s23, s0, v5
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_mul_lo_u32 v3, s14, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v55, v4, 6, v7
	v_or_b32_e32 v4, s0, v5
	s_lshl_b32 s0, s15, 7
	v_mov_b32_e32 v17, 0
	v_subrev_nc_u32_e32 v5, s0, v8
	v_lshl_or_b32 v51, v6, 5, v55
	v_subrev_nc_u32_e32 v4, s0, v4
	s_mov_b32 s15, s12
	v_add3_u32 v15, v3, v2, 0x80
	v_add_nc_u32_e32 v6, 64, v5
	v_mul_lo_u32 v5, s14, v5
	v_or_b32_e32 v7, 64, v4
	v_mul_lo_u32 v4, s14, v4
	v_xor_b32_e32 v56, 16, v55
	v_mul_lo_u32 v6, s14, v6
	v_xor_b32_e32 v57, 32, v55
	v_mul_lo_u32 v7, s14, v7
	s_mov_b32 s14, s12
	v_add3_u32 v12, v5, v1, 0x80
	v_xor_b32_e32 v58, 48, v55
	v_add3_u32 v14, v4, v1, 0x80
	v_xor_b32_e32 v52, 16, v51
	v_add3_u32 v11, v6, v1, 0x80
	v_xor_b32_e32 v53, 32, v51
	v_add3_u32 v13, v7, v1, 0x80
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_xor_b32_e32 v54, 48, v51
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s11, s10, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s44, 0, 0x8400
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s34, 0, 0x6000
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
	s_mov_b32 s10, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v59, v50, s14, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s14, s14, s33
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v60, v48, s14, 1
	v_add_lshl_u32 v61, v49, s14, 1
	v_add_lshl_u32 v62, v47, s14, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s15, s14, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v63, v46, s14, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v16, v16, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v64, v45, s14, 1
	v_add_lshl_u32 v65, v44, s14, 1
	v_add_lshl_u32 v66, v43, s14, 1
	v_add_lshl_u32 v67, v42, s14, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v68, v41, s15, 1
	v_add_lshl_u32 v69, v40, s15, 1
	v_add_lshl_u32 v70, v39, s15, 1
	v_add_lshl_u32 v71, v37, s15, 1
	v_add_lshl_u32 v72, v35, s15, 1
	v_add_lshl_u32 v73, v38, s15, 1
	v_add_lshl_u32 v74, v36, s15, 1
	v_add_lshl_u32 v75, v34, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_cndmask_b32 v64, 0x80000000, v64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v72, 0x80000000, v72
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v135, v59, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v136, v60, s[40:43], 0 offen
	buffer_load_u16 v137, v61, s[40:43], 0 offen
	buffer_load_u16 v138, v62, s[40:43], 0 offen
	buffer_load_u16 v139, v63, s[40:43], 0 offen
	buffer_load_u16 v140, v64, s[40:43], 0 offen
	buffer_load_u16 v141, v65, s[40:43], 0 offen
	buffer_load_u16 v142, v66, s[40:43], 0 offen
	buffer_load_u16 v143, v67, s[40:43], 0 offen
	buffer_load_u16 v144, v68, s[40:43], 0 offen
	buffer_load_u16 v145, v69, s[40:43], 0 offen
	buffer_load_u16 v146, v70, s[40:43], 0 offen
	buffer_load_u16 v147, v71, s[40:43], 0 offen
	buffer_load_u16 v148, v72, s[40:43], 0 offen
	buffer_load_u16 v149, v73, s[40:43], 0 offen
	buffer_load_u16 v150, v74, s[40:43], 0 offen
	buffer_load_u16 v151, v75, s[40:43], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v59, s13, v14
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v60, s13, v13
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v61, s13, v12
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v62, s13, v11
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[75:78], v59, s[28:31], 0 offen
	buffer_load_b128 v[79:82], v60, s[28:31], 0 offen
	buffer_load_b128 v[83:86], v61, s[28:31], 0 offen
	buffer_load_b128 v[87:90], v62, s[28:31], 0 offen
	s_mov_b32 s14, s0
	s_mov_b32 s15, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v59, s14, v55
	v_add_nc_u32_e32 v60, s14, v56
	v_add_nc_u32_e32 v61, s14, v57
	v_add_nc_u32_e32 v62, s14, v58
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v63, s15, v51
	v_add_nc_u32_e32 v64, s15, v52
	v_add_nc_u32_e32 v65, s15, v53
	v_add_nc_u32_e32 v66, s15, v54
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v71, s16, v51
	v_add_nc_u32_e32 v72, s16, v52
	v_add_nc_u32_e32 v73, s16, v53
	v_add_nc_u32_e32 v74, s16, v54
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[91:94], v59
	ds_load_b128 v[95:98], v60
	ds_load_b128 v[99:102], v61
	ds_load_b128 v[103:106], v62
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[67:70], v63
	ds_load_b128 v[107:110], v64
	ds_load_b128 v[111:114], v65
	ds_load_b128 v[115:118], v66
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[119:122], v71
	ds_load_b128 v[123:126], v72
	ds_load_b128 v[127:130], v73
	ds_load_b128 v[131:134], v74
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
	s_mov_b32 s12, s35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s14, s27, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s15, s27, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s14, s14, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s35, s15, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, -1
	s_mov_b32 s0, s44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[67:70], v[91:94], v[1:8] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s26, s26, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s44, s14, 0x8000
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[67:74], v[119:122], v[91:94], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[107:110], v[95:98], v[59:66] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s34, s35, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s11, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[67:74], v[123:126], v[95:98], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[111:114], v[99:102], v[59:66] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[67:74], v[127:130], v[99:102], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[115:118], v[103:106], v[59:66] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[67:74], v[131:134], v[103:106], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v152, s14, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(21)
	ds_store_b32 v152, v16 offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v16, 16, v135
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v92, 16, v137
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v93, 16, v138
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v97, 16, v142
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v97, v16, v97 :: v_dual_lshlrev_b32 v102, 16, v147
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v104, 16, v149
	v_lshlrev_b32_e32 v103, 16, v148
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v19, v97, v65 :: v_dual_lshlrev_b32 v106, 16, v151
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v93, v16, v93
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v104, v16, v104
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v98, 16, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v106, v16, v106
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v100, 16, v145
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v26, v93, v61 :: v_dual_lshlrev_b32 v91, 16, v136
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v102, v16, v102
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v21, v106, v74 :: v_dual_mul_f32 v100, v16, v100
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v101, 16, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v29, v102, v70 :: v_dual_lshlrev_b32 v94, 16, v139
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v103, v16, v103
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v32, v100, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v101, v16, v101
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v99, 16, v144
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v24, v103, v71 :: v_dual_lshlrev_b32 v105, 16, v150
	v_fmac_f32_e32 v25, v104, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v98, v16, v98 :: v_dual_lshlrev_b32 v95, 16, v140
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v28, v101, v69 :: v_dual_mul_f32 v99, v16, v99
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v96, 16, v141
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v92, v16, v92 :: v_dual_add_nc_u32 v153, s35, v10
	v_mul_f32_e32 v91, v16, v91
	v_mul_f32_e32 v94, v16, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v18, v98, v66 :: v_dual_mul_f32 v95, v16, v95
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v17, v99, v67 :: v_dual_mul_f32 v96, v16, v96
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v16, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v30, v91, v59 :: v_dual_fmac_f32 v31, v92, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v27, v94, v62 :: v_dual_fmac_f32 v22, v95, v63
	v_fmac_f32_e32 v23, v96, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v20, v16, v73
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v153, v[75:78]
	s_waitcnt vmcnt(2)
	ds_store_b128 v153, v[79:82] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v153, v[83:86] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v153, v[87:90] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_addk_i32 s13, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v17, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s44, 0, 0x8400
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s34, 0, 0x6000
.LBB0_8:                                ; %Flow165
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v1, s0, v55
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v2, s0, v56
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v3, s0, v57
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, s0, v58
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_cndmask_b32_e64 v59, 0, 1, s3
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v91, 0xf0, v0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v61, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v59
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v59, s12, v51
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v63, s12, v52
	v_add_nc_u32_e32 v64, s12, v54
	v_add_nc_u32_e32 v67, s12, v53
	ds_load_b128 v[59:62], v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v68, v66
	v_mov_b32_e32 v70, v66
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[74:77], v63
	ds_load_b128 v[78:81], v64
	ds_load_b128 v[82:85], v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v69, v66
	v_mov_b32_e32 v71, v66
	v_mov_b32_e32 v72, v66
	v_mov_b32_e32 v73, v66
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[59:62], v[13:16], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[9:12], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[5:8], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[1:4], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v63, v68
	v_cvt_f32_i32_e32 v64, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v70
	v_cvt_f32_i32_e32 v60, v71
	v_cvt_f32_i32_e32 v61, v72
	v_cvt_f32_i32_e32 v62, v73
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v70, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v65, s10, v51
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v72, s10, v52
	v_add_nc_u32_e32 v73, s10, v53
	ds_load_b128 v[68:71], v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v76, v74 :: v_dual_add_nc_u32 v65, s10, v54
	v_mov_b32_e32 v75, v74
	v_mov_b32_e32 v78, v74
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[82:85], v72
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[92:95], v73
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v77, v74
	v_mov_b32_e32 v79, v74
	v_mov_b32_e32 v80, v74
	v_mov_b32_e32 v81, v74
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[68:71], v[13:16], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[9:12], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[92:95], v[5:8], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[86:89], v[1:4], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v72, v76
	v_cvt_f32_i32_e32 v73, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v69, v79
	v_cvt_f32_i32_e32 v70, v80
	v_cvt_f32_i32_e32 v71, v81
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v74, v75
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
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v50, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v48, s0, 1
	v_add_lshl_u32 v3, v49, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v47, s0, 1
	v_add_lshl_u32 v5, v45, s0, 1
	v_add_lshl_u32 v6, v44, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v100, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v3, v46, s0, 1
	v_add_lshl_u32 v7, v43, s0, 1
	v_add_lshl_u32 v8, v42, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, s0, v41, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v10, s0, v40, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v11, s0, v39, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v102, v1, s[24:27], 0 offen
	buffer_load_u16 v101, v2, s[24:27], 0 offen
	buffer_load_u16 v97, v4, s[24:27], 0 offen
	buffer_load_u16 v96, v3, s[24:27], 0 offen
	buffer_load_u16 v93, v5, s[24:27], 0 offen
	buffer_load_u16 v92, v6, s[24:27], 0 offen
	buffer_load_u16 v88, v7, s[24:27], 0 offen
	buffer_load_u16 v87, v8, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v37, 1
	v_add_lshl_u32 v5, s0, v35, 1
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v6, s0, v38, 1
	v_add_lshl_u32 v7, s0, v36, 1
	v_add_lshl_u32 v8, s0, v34, 1
	v_dual_cndmask_b32 v2, 0x80000000, v10 :: v_dual_cndmask_b32 v3, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_mov_b32_e32 v78, 0
	s_clause 0x7
	buffer_load_u16 v104, v1, s[24:27], 0 offen
	buffer_load_u16 v103, v2, s[24:27], 0 offen
	buffer_load_u16 v99, v3, s[24:27], 0 offen
	buffer_load_u16 v98, v4, s[24:27], 0 offen
	buffer_load_u16 v95, v5, s[24:27], 0 offen
	buffer_load_u16 v94, v6, s[24:27], 0 offen
	buffer_load_u16 v90, v7, s[24:27], 0 offen
	buffer_load_u16 v89, v8, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s44, v55
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v2, s44, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v56, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s44, v57
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v4, s44, v58
	v_mov_b32_e32 v58, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v56
	v_mov_b32_e32 v56, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v77, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v57, s35, v52
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v56, s35, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v83, v78 :: v_dual_add_nc_u32 v58, s35, v53
	v_mov_b32_e32 v79, v78
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[105:108], v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v81, v78 :: v_dual_add_nc_u32 v56, s35, v54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[109:112], v57
	ds_load_b128 v[113:116], v56
	ds_load_b128 v[117:120], v58
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v80, v78
	v_mov_b32_e32 v82, v78
	v_mov_b32_e32 v84, v78
	v_mov_b32_e32 v85, v78
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[105:108], v[13:16], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[109:112], v[9:12], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[117:120], v[5:8], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[113:116], v[1:4], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v58, v80
	v_cvt_f32_i32_e32 v75, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v82
	v_cvt_f32_i32_e32 v57, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v86, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v52, s34, v52
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v51, s34, v51
	v_add_nc_u32_e32 v55, s34, v54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v107, v105 :: v_dual_add_nc_u32 v84, s34, v53
	v_mov_b32_e32 v106, v105
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[80:83], v51
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v108, v105
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[51:54], v52
	ds_load_b128 v[113:116], v55
	ds_load_b128 v[117:120], v84
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v109, v105
	v_mov_b32_e32 v110, v105
	v_mov_b32_e32 v111, v105
	v_mov_b32_e32 v112, v105
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[80:83], v[13:16], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[51:54], v[9:12], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[117:120], v[5:8], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[113:116], v[1:4], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v55, v105
	v_cvt_f32_i32_e32 v80, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v107
	v_cvt_f32_i32_e32 v84, v108
	v_cvt_f32_i32_e32 v81, v109
	v_cvt_f32_i32_e32 v82, v110
	v_cvt_f32_i32_e32 v85, v111
	v_cvt_f32_i32_e32 v86, v112
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s13, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s13, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v52.h, v87.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.h, v88.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v50, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v48, s0, 1
	v_add_lshl_u32 v3, v49, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v47, s0, 1
	v_add_lshl_u32 v5, v46, s0, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v3, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v4, v45, s0, 1
	v_add_lshl_u32 v7, v44, s0, 1
	v_add_lshl_u32 v8, v43, s0, 1
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v5, v42, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v10, 0x80000000, v4, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v14, s0, v41, 1
	v_add_lshl_u32 v15, s0, v40, 1
	v_add_lshl_u32 v16, s0, v39, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v11, 0x80000000, v7 :: v_dual_cndmask_b32 v12, 0x80000000, v8
	v_cndmask_b32_e32 v13, 0x80000000, v5, vcc_lo
	s_clause 0x7
	buffer_load_u16 v4, v2, s[24:27], 0 offen
	buffer_load_u16 v5, v6, s[24:27], 0 offen
	buffer_load_u16 v6, v1, s[24:27], 0 offen
	buffer_load_u16 v7, v9, s[24:27], 0 offen
	buffer_load_u16 v8, v10, s[24:27], 0 offen
	buffer_load_u16 v9, v11, s[24:27], 0 offen
	buffer_load_u16 v10, v12, s[24:27], 0 offen
	buffer_load_u16 v11, v13, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v13, s0, v37, 1
	v_dual_cndmask_b32 v1, 0x80000000, v14 :: v_dual_cndmask_b32 v12, 0x80000000, v16
	v_cndmask_b32_e32 v2, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v14, s0, v35, 1
	v_add_lshl_u32 v15, s0, v38, 1
	v_add_lshl_u32 v16, s0, v36, 1
	v_add_lshl_u32 v34, s0, v34, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v37.h, v100.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x7
	buffer_load_u16 v35, v1, s[24:27], 0 offen
	buffer_load_u16 v36, v2, s[24:27], 0 offen
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(21)
	v_mov_b16_e32 v42.h, v98.l
	v_mov_b16_e32 v42.l, v37.l
	v_mov_b16_e32 v38.h, v103.l
	v_mov_b16_e32 v38.l, v37.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v52.l, v37.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(19)
	v_mov_b16_e32 v46.h, v94.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v37, v42
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v46.l, v37.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v37, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v37, v52
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v41.h, v99.l
	v_mov_b16_e32 v45.h, v95.l
	v_mov_b16_e32 v41.l, v37.l
	v_mov_b16_e32 v45.l, v37.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v37, v46
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, v33, s23
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v33.h, v104.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v39.h, v102.l
	v_mov_b16_e32 v40.h, v101.l
	v_mov_b16_e32 v43.h, v97.l
	v_mov_b16_e32 v44.h, v96.l
	v_mov_b16_e32 v47.h, v93.l
	v_mov_b16_e32 v48.h, v92.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v49.h, v90.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v50.h, v89.l
	v_mov_b16_e32 v33.l, v37.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v39.l, v37.l
	v_mov_b16_e32 v40.l, v37.l
	v_mov_b16_e32 v43.l, v37.l
	v_mov_b16_e32 v44.l, v37.l
	v_mov_b16_e32 v47.l, v37.l
	v_mov_b16_e32 v48.l, v37.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v49.l, v37.l
	v_mov_b16_e32 v50.l, v37.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.l, v37.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v37, v41
	v_mul_f32_e32 v45, v37, v45
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v54, 0x7632 :: v_dual_mul_f32 v39, v37, v39
	v_mov_b16_e32 v87.h, v37.l
	v_mov_b16_e32 v88.h, v37.l
	v_mov_b16_e32 v89.h, v37.l
	v_mov_b16_e32 v90.h, v37.l
	v_mov_b16_e32 v91.h, v37.l
	v_mov_b16_e32 v92.h, v37.l
	v_mov_b16_e32 v93.h, v37.l
	v_mov_b16_e32 v94.h, v37.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v37, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v37, v40
	v_mul_f32_e32 v44, v37, v44
	v_mul_f32_e32 v43, v37, v43
	v_mul_f32_e32 v48, v37, v48
	v_mul_f32_e32 v47, v37, v47
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v50, v37, v50
	v_mul_f32_e32 v49, v37, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v37, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v65, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v66, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v33, s3
	v_cndmask_b32_e64 v30, v30, v39, s3
	s_mov_b32 s23, 0x31027000
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v38, v74, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v38, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v72, v28
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v73, v29
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v68, v24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v69, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v42, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v3, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v45, s3
	v_cndmask_b32_e64 v28, v28, v41, s3
	v_cndmask_b32_e64 v25, v25, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v67, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v43, v63, v26
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v60, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v3, v12
	v_mul_f32_e32 v13, v3, v13
	v_mul_f32_e32 v14, v3, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v49, v49, v70, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v61, v19
	v_fma_f32 v51, v52, v62, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v13, v84, v29
	v_fma_f32 v14, v14, v81, v24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v64, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v29, v13, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v3, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v59, v22
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v35, 16, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v50, v50, v71, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v3, v7 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v82, v25
	v_fma_f32 v12, v12, v83, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v24, v14, s2
	v_cndmask_b32_e64 v31, v31, v40, s3
	v_cndmask_b32_e64 v27, v27, v44, s3
	v_cndmask_b32_e64 v15, v25, v15, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v43, s3
	v_cndmask_b32_e64 v23, v23, v48, s3
	v_cndmask_b32_e64 v22, v22, v47, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v50, s3
	v_cndmask_b32_e64 v20, v20, v49, s3
	v_cndmask_b32_e64 v18, v18, v51, s3
	v_cndmask_b32_e64 v19, v19, v37, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v5, v3, v5 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v28, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v3, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v3, v6
	v_mul_f32_e32 v9, v3, v9
	v_mul_f32_e32 v8, v3, v8
	v_mul_f32_e32 v11, v3, v11
	v_mul_f32_e32 v10, v3, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v3, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v86, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v3, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v33, v55, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v77, v18
	v_fma_f32 v4, v4, v78, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v85, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	v_cndmask_b32_e64 v17, v21, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v76, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v18, v11, s2
	v_cndmask_b32_e64 v3, v20, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v79, v31
	v_fma_f32 v7, v7, v75, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v19, v10, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v58, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v31, v5, s2
	v_cndmask_b32_e64 v4, v30, v4, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v26, v6, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v35, v80, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v27, v7, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v32, v33, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v57, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v23, v9, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v56, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v22, v8, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v13
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v12
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v13
	v_ldexp_f32 v20, v20, v27
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v3
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v19, v19, v28
	v_exp_f32_e32 v22, v22
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_ldexp_f32 v24, v24, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v30
	v_ldexp_f32 v23, v23, v32
	v_ldexp_f32 v22, v22, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v21, 1.0, v21
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v19, v19, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_add_f32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v27, v42, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v22, v22, v13
	v_div_scale_f32 v33, null, v21, v21, v12
	v_div_scale_f32 v35, null, v24, v24, v15
	v_rcp_f32_e32 v43, v29
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v41, null, v25, v25, v3
	v_div_scale_f32 v37, null, v23, v23, v14
	v_div_scale_f32 v39, null, v26, v26, v17
	v_rcp_f32_e32 v44, v31
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v49, v41
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v48, v39
	v_fma_f32 v52, -v29, v43, 1.0
	v_div_scale_f32 v28, vcc_lo, v18, v20, v18
	v_div_scale_f32 v30, s0, v16, v19, v16
	v_fma_f32 v55, -v31, v44, 1.0
	v_fma_f32 v56, -v33, v45, 1.0
	v_fma_f32 v57, -v35, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v41, v49, 1.0
	v_dual_fmac_f32 v43, v52, v43 :: v_dual_fmac_f32 v44, v55, v44
	v_div_scale_f32 v32, s1, v13, v22, v13
	v_fma_f32 v58, -v37, v47, 1.0
	v_fma_f32 v59, -v39, v48, 1.0
	v_div_scale_f32 v34, s2, v12, v21, v12
	v_dual_fmac_f32 v45, v56, v45 :: v_dual_fmac_f32 v46, v57, v46
	v_mul_f32_e32 v51, v28, v42
	v_dual_fmac_f32 v49, v60, v49 :: v_dual_mul_f32 v52, v30, v43
	v_div_scale_f32 v36, s3, v15, v24, v15
	v_div_scale_f32 v38, s4, v14, v23, v14
	v_dual_fmac_f32 v47, v58, v47 :: v_dual_fmac_f32 v48, v59, v48
	v_dual_mul_f32 v55, v32, v44 :: v_dual_mul_f32 v56, v34, v45
	v_fma_f32 v61, -v27, v51, v28
	v_div_scale_f32 v40, s5, v17, v26, v17
	v_fma_f32 v62, -v29, v52, v30
	v_div_scale_f32 v50, s6, v3, v25, v3
	v_dual_mul_f32 v57, v36, v46 :: v_dual_mul_f32 v58, v38, v47
	v_fma_f32 v63, -v31, v55, v32
	v_fma_f32 v64, -v33, v56, v34
	v_fmac_f32_e32 v51, v61, v42
	v_dual_mul_f32 v59, v40, v48 :: v_dual_fmac_f32 v52, v62, v43
	v_mul_f32_e32 v60, v50, v49
	v_fma_f32 v65, -v35, v57, v36
	v_fma_f32 v66, -v37, v58, v38
	v_dual_fmac_f32 v55, v63, v44 :: v_dual_fmac_f32 v56, v64, v45
	v_fma_f32 v27, -v27, v51, v28
	v_fma_f32 v28, -v29, v52, v30
	v_fma_f32 v68, -v41, v60, v50
	v_dual_fmac_f32 v57, v65, v46 :: v_dual_fmac_f32 v58, v66, v47
	v_fma_f32 v29, -v31, v55, v32
	v_div_fmas_f32 v27, v27, v42, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v33, v56, v34
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v60, v68, v49
	v_fma_f32 v31, -v35, v57, v36
	v_div_fmas_f32 v29, v29, v44, v55
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v32, -v37, v58, v38
	v_div_fixup_f32 v18, v27, v20, v18
	v_div_fmas_f32 v20, v30, v45, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v28, v19, v16
	v_div_fmas_f32 v19, v31, v46, v57
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v32, v47, v58
	v_fma_f32 v67, -v39, v59, v40
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v15, v19, v24, v15
	v_fma_f32 v34, -v41, v60, v50
	v_div_fixup_f32 v14, v18, v23, v14
	v_fmac_f32_e32 v59, v67, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v15
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v29, v22, v13
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v8, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v39, v59, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v88
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v16, v33, v48, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v14, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v12, v20, v21, v12
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v7, v7, v13 :: v_dual_and_b32 v14, 1, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v34, v49, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v5.h
	v_cmp_o_f32_e64 s4, v8, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v8, v14, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v13, v25, v3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v16, v26, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s4
	v_and_b32_e32 v13, 1, v87
	v_mov_b16_e32 v89.l, v7.h
	v_mov_b16_e32 v90.l, v6.h
	v_mov_b16_e32 v91.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v10, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v5, v13, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v11, v12 :: v_dual_and_b32 v12, 1, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v94.l, v3.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v91
	v_cmp_o_f32_e64 s1, v7, v7
	v_cmp_o_f32_e64 s3, v9, v9
	v_mov_b16_e32 v93.l, v11.h
	v_add3_u32 v7, v7, v12, 0x7fff
	v_add3_u32 v0, v6, v10, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v54, vcc_lo
	v_add3_u32 v9, v9, v13, 0x7fff
	v_and_b32_e32 v12, 1, v94
	v_cmp_o_f32_e64 s2, v6, v6
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s0
	v_cmp_o_f32_e64 s0, v3, v3
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s3
	v_and_b32_e32 v6, 1, v93
	v_cndmask_b32_e32 v9, 0x1054, v53, vcc_lo
	v_add3_u32 v3, v3, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_cndmask_b32_e32 v3, v5, v4, vcc_lo
	v_add3_u32 v6, v11, v6, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v0.h, s2
	v_cndmask_b32_e32 v8, v4, v5, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v6, 4, v6
	v_cndmask_b32_e32 v6, v7, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v5, v9, 4, v9
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v7, s22, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 0x5040504, v4
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x7060706, v5
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v2, v3, v8, v4
	v_perm_b32 v4, v6, v0, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v3, v3, v8, v5
	v_perm_b32 v5, v6, v0, v5
	v_add_lshl_u32 v0, v7, v1, 1
	buffer_store_b128 v[2:5], v0, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 154
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7600
; TotalNumSgprs: 47
; NumVgprs: 154
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     154
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
