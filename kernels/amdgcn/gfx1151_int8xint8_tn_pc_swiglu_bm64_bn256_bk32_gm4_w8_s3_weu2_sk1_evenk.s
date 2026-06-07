	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v163, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_mov_b32 s39, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v165, 3, v163
	v_and_b32_e32 v2, 56, v165
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v1, 4, v163
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v164, 15, v163
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, 0, v165
	v_or_b32_e32 v39, 0x3f0, v163
	v_or_b32_e32 v144, 0x7f0, v163
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, v37, v165
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v0, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v0, 3, v163
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v0, s14, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s6
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s33, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s33, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s10, 31
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 5
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v166, v164, 4, v1
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s33, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v40, v0, v2, s29
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v204, s15, 5, v166
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s28, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s7, s14, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s9, s15, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v0, s7, v40
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s4, v166
	v_add_nc_u32_e32 v2, s4, v204
	s_add_i32 s4, s4, s9
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s8, s14, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s4, v166
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_add3_u32 v3, s7, s8, v40
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s15, v1
	v_add_nc_u32_e32 v10, s15, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v204
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v18, s15, v11
	v_add3_u32 v17, s4, s15, v204
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[33:34], v0, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v13, 0x80000000, v10, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v19, 0x80000000, v11, s2
	v_cndmask_b32_e64 v21, 0x80000000, v12, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v25, 0x80000000, v18, s2
	v_cndmask_b32_e64 v29, 0x80000000, v17, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v4, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[35:36], v0, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[17:20], v19, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	v_lshrrev_b32_e32 v0, 1, v163
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v37, v[33:34] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v38, v[1:4]
	s_waitcnt vmcnt(7)
	ds_store_b128 v38, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v38, v[9:12] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v38, v[13:16] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v37, v[35:36] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[17:20] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v38, v[21:24] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[25:28] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[29:32] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v167, 0x70, v0, v164
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v101, 0x3f0, v163
	v_or_b32_e32 v100, 0x7f0, v163
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, 0x100, v167
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x200, v167
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v167
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x400, v167
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x500, v167
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x600, v167
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x700, v167
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x800, v167
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x900, v167
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa00, v167
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb00, v167
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc00, v167
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd00, v167
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe00, v167
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf00, v167
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1000, v167
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1100, v167
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1200, v167
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1300, v167
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1400, v167
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1500, v167
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1600, v167
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v167
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v167
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v167
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v167
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v167
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v167
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v167
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v167
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v167
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x80, v167
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x180, v167
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x280, v167
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x380, v167
	scratch_store_b32 off, v1, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x480, v167
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x580, v167
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x680, v167
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x780, v167
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x880, v167
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x980, v167
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa80, v167
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb80, v167
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc80, v167
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd80, v167
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe80, v167
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf80, v167
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1080, v167
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1180, v167
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1280, v167
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1380, v167
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1480, v167
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1580, v167
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1680, v167
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v167
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v167
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v167
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v167
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b80, v167
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c80, v167
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v167
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v167
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v167
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr167
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
.LBB0_3:                                ; %Flow577
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v167, 0x70, v0, v164
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v0, 0x100, v167
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v167
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v167
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v167
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v167
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v167
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v167
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v167
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v167
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v228, 0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v167
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v167
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v167
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v167
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v167
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v167
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v167
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v167
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v167
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v167
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v167
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v167
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v167
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v167
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v167
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v167
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v167
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v167
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v167
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v167
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v167
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v167
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v167
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s35, s5, 5
	s_add_i32 s0, s6, 64
	s_mov_b32 s34, 1
	s_add_i32 s40, 0, 0x8000
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v167
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s37, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v167
	s_add_i32 s35, s35, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v167
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v167
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s39, s4
	s_mov_b32 s36, s4
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v167
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b32 off, v39, off offset:144
	scratch_store_b32 off, v166, off offset:148
	scratch_store_b64 off, v[40:41], off offset:152
	scratch_store_b32 off, v165, off offset:160
	scratch_store_b32 off, v0, off offset:308
	v_or_b32_e32 v0, 0x680, v167
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v167
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v167
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v167
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v167
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v167
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v167
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v167
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v167
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v167
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v167
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v167
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v167
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v167
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v167
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v167
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v167
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v167
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v167
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v167
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v167
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v167
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v167
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v167
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v167
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v167
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s38, s36, 5
	s_clause 0x10                           ; 136-byte Folded Spill
	scratch_store_b64 off, v[75:76], off offset:120
	scratch_store_b64 off, v[73:74], off offset:112
	scratch_store_b64 off, v[31:32], off offset:104
	scratch_store_b64 off, v[29:30], off offset:96
	scratch_store_b64 off, v[59:60], off offset:88
	scratch_store_b64 off, v[57:58], off offset:80
	scratch_store_b64 off, v[27:28], off offset:72
	scratch_store_b64 off, v[25:26], off offset:64
	scratch_store_b64 off, v[15:16], off offset:56
	scratch_store_b64 off, v[13:14], off offset:48
	scratch_store_b64 off, v[11:12], off offset:40
	scratch_store_b64 off, v[9:10], off offset:32
	scratch_store_b64 off, v[7:8], off offset:24
	scratch_store_b64 off, v[5:6], off offset:16
	scratch_store_b64 off, v[3:4], off offset:8
	scratch_store_b64 off, v[1:2], off
	scratch_store_b64 off, v[201:202], off offset:128
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s38, s0, s38
	v_dual_mov_b32 v202, v164 :: v_dual_add_nc_u32 v141, s40, v164
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[0:1], null, s38, s14, v[40:41]
	v_dual_mov_b32 v203, v167 :: v_dual_mov_b32 v136, s11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v135, s10 :: v_dual_mov_b32 v134, s9
	v_dual_mov_b32 v133, s8 :: v_dual_mov_b32 v132, s7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[0:1], v0, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v131, s6 :: v_dual_mov_b32 v130, s5
	v_mov_b32_e32 v129, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s34, s34, 1
	v_mov_b32_e32 v201, v200
	v_dual_mov_b32 v200, v199 :: v_dual_mov_b32 v199, v198
	v_dual_mov_b32 v198, v197 :: v_dual_mov_b32 v197, v196
	v_dual_mov_b32 v196, v195 :: v_dual_mov_b32 v195, v194
	v_dual_mov_b32 v194, v193 :: v_dual_mov_b32 v193, v192
	v_dual_mov_b32 v192, v191 :: v_dual_mov_b32 v191, v190
	v_dual_mov_b32 v190, v189 :: v_dual_mov_b32 v189, v188
	v_dual_mov_b32 v188, v187 :: v_dual_mov_b32 v187, v186
	v_dual_mov_b32 v186, v185 :: v_dual_mov_b32 v185, v184
	v_dual_mov_b32 v184, v183 :: v_dual_mov_b32 v183, v182
	v_dual_mov_b32 v182, v181 :: v_dual_mov_b32 v181, v180
	v_dual_mov_b32 v180, v179 :: v_dual_mov_b32 v179, v178
	v_dual_mov_b32 v178, v177 :: v_dual_mov_b32 v177, v176
	v_dual_mov_b32 v176, v175 :: v_dual_add_nc_u32 v255, s37, v167
	v_mov_b32_e32 v175, v163
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s37, s38, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s37, s37, s28
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s38, s37, s15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s34, 2
	s_cselect_b32 s34, s34, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:136 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v141 offset:832
	ds_load_u8 v1, v141 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v141 offset:960
	ds_load_u8 v2, v141 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v141 offset:576
	ds_load_u8 v3, v141 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v141 offset:704
	ds_load_u8 v4, v141 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v4, v1, 16, v0
	ds_load_u8 v0, v141 offset:320
	ds_load_u8 v1, v141 offset:256
	v_lshl_or_b32 v3, v3, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v141 offset:448
	ds_load_u8 v2, v141 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v1, 16, v0
	ds_load_u8 v0, v141 offset:64
	ds_load_u8 v1, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v141 offset:192
	ds_load_u8 v5, v141 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s39, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v0 offset:3328
	ds_load_u8 v6, v0 offset:3072
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s39, s34, 11
	s_add_i32 s41, s39, 0
	s_mov_b32 s39, s30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s30, s34, 13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s30, s30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:3840
	ds_load_u8 v7, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v0 offset:2304
	ds_load_u8 v8, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v0 offset:2816
	ds_load_u8 v9, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v0 offset:1280
	ds_load_u8 v6, v0 offset:1024
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:1792
	ds_load_u8 v9, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v0 offset:256
	ds_load_u8 v9, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v0 offset:768
	ds_load_u8 v10, v0 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v0 offset:3456
	ds_load_u8 v10, v0 offset:3200
	v_wmma_i32_16x16x16_iu8 v[121:128], v[5:8], v[1:4], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v0 offset:3968
	ds_load_u8 v11, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v0 offset:2432
	ds_load_u8 v12, v0 offset:2176
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v0 offset:1408
	ds_load_u8 v10, v0 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v0 offset:2944
	ds_load_u8 v13, v0 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v0 offset:1920
	ds_load_u8 v11, v0 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v0 offset:384
	ds_load_u8 v10, v0 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v0 offset:896
	ds_load_u8 v11, v0 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	ds_load_u8 v9, v141 offset:848
	ds_load_u8 v10, v141 offset:784
	v_wmma_i32_16x16x16_iu8 v[105:112], v[17:20], v[1:4], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v141 offset:976
	ds_load_u8 v11, v141 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v141 offset:592
	ds_load_u8 v12, v141 offset:528
	v_lshl_or_b32 v24, v10, 16, v9
	ds_load_u8 v9, v141 offset:336
	ds_load_u8 v10, v141 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v141 offset:720
	ds_load_u8 v13, v141 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v12, 16, v11
	ds_load_u8 v10, v141 offset:464
	ds_load_u8 v11, v141 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v141 offset:16
	ds_load_u8 v10, v141 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v141 offset:208
	ds_load_u8 v11, v141 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v10, 16, v9
	ds_load_u8 v9, v141 offset:864
	ds_load_u8 v10, v141 offset:800
	v_wmma_i32_16x16x16_iu8 v[89:96], v[5:8], v[21:24], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v141 offset:992
	ds_load_u8 v11, v141 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v141 offset:608
	ds_load_u8 v12, v141 offset:544
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v141 offset:352
	ds_load_u8 v10, v141 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v141 offset:736
	ds_load_u8 v13, v141 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	ds_load_u8 v10, v141 offset:480
	ds_load_u8 v11, v141 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v141 offset:32
	ds_load_u8 v10, v141 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v141 offset:224
	ds_load_u8 v11, v141 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v10, 16, v9
	ds_load_u8 v9, v141 offset:880
	ds_load_u8 v10, v141 offset:816
	v_wmma_i32_16x16x16_iu8 v[57:64], v[5:8], v[137:140], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v10, s40, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v11, v141 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v141 offset:624
	ds_load_u8 v12, v141 offset:560
	v_lshl_or_b32 v166, v10, 16, v9
	ds_load_u8 v9, v141 offset:368
	ds_load_u8 v10, v141 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v141 offset:752
	ds_load_u8 v13, v141 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v12, 16, v11
	ds_load_u8 v10, v141 offset:496
	ds_load_u8 v11, v141 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v141 offset:48
	ds_load_u8 v10, v141 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v141 offset:240
	ds_load_u8 v11, v141 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v10, 16, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v255 offset:3328
	ds_load_u8 v10, v255 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[5:8], v[163:166], v[129:136] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v255 offset:3840
	ds_load_u8 v11, v255 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v255 offset:2304
	ds_load_u8 v12, v255 offset:2048
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v255 offset:1280
	ds_load_u8 v10, v255 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v255 offset:2816
	ds_load_u8 v13, v255 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v12, 16, v11
	ds_load_u8 v10, v255 offset:1792
	ds_load_u8 v11, v255 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v168, v10, 16, v9
	ds_load_u8 v9, v255 offset:256
	ds_load_u8 v10, v255
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v255 offset:768
	ds_load_u8 v11, v255 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v255 offset:3456
	ds_load_u8 v10, v255 offset:3200
	v_wmma_i32_16x16x16_iu8 v[113:120], v[167:170], v[1:4], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v255 offset:3968
	ds_load_u8 v11, v255 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v255 offset:2432
	ds_load_u8 v12, v255 offset:2176
	v_lshl_or_b32 v174, v10, 16, v9
	ds_load_u8 v9, v255 offset:1408
	ds_load_u8 v10, v255 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v255 offset:2944
	ds_load_u8 v13, v255 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	ds_load_u8 v10, v255 offset:1920
	ds_load_u8 v11, v255 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v255 offset:384
	ds_load_u8 v10, v255 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v255 offset:896
	ds_load_u8 v11, v255 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[97:104], v[171:174], v[1:4], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[171:174], v[21:24], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[171:174], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[171:174], v[163:166], v[129:136] neg_lo:[1,1,0]
	v_mov_b32_e32 v172, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[17:20], v[21:24], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[17:20], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[163:166], v[129:136] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[81:88], v[167:170], v[21:24], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[167:170], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[167:170], v[163:166], v[129:136] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v129, v141 offset:1856
	ds_load_u8 v130, v141 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v141 offset:1984
	ds_load_u8 v131, v141 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v141 offset:1600
	ds_load_u8 v132, v141 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v141 offset:1728
	ds_load_u8 v133, v141 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v141 offset:1344
	ds_load_u8 v130, v141 offset:1280
	v_lshl_or_b32 v131, v133, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v141 offset:1472
	ds_load_u8 v133, v141 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v133, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v141 offset:1088
	ds_load_u8 v133, v141 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v133, v129, 0xc0c0004
	ds_load_u8 v133, v141 offset:1216
	ds_load_u8 v134, v141 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v133, 16, v129
	ds_load_u8 v133, v0 offset:7424
	ds_load_u8 v134, v0 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v0 offset:7936
	ds_load_u8 v135, v0 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v0 offset:6400
	ds_load_u8 v136, v0 offset:6144
	v_lshl_or_b32 v166, v134, 16, v133
	ds_load_u8 v133, v0 offset:5376
	ds_load_u8 v134, v0 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v0 offset:6912
	ds_load_u8 v137, v0 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v136, 16, v135
	ds_load_u8 v134, v0 offset:5888
	ds_load_u8 v135, v0 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_lshl_or_b32 v164, v134, 16, v133
	ds_load_u8 v133, v0 offset:4352
	ds_load_u8 v134, v0 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v0 offset:4864
	ds_load_u8 v135, v0 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v134, 16, v133
	ds_load_u8 v133, v141 offset:1872
	ds_load_u8 v134, v141 offset:1808
	v_wmma_i32_16x16x16_iu8 v[121:128], v[163:166], v[129:132], v[121:128] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v156, v156, v126 :: v_dual_add_f32 v159, v159, v123
	v_add_f32_e32 v162, v162, v122
	v_add_f32_e32 v160, v160, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v141 offset:2000
	ds_load_u8 v135, v141 offset:1936
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v152, v152, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v141 offset:1616
	ds_load_u8 v136, v141 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v141 offset:1744
	ds_load_u8 v137, v141 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v141 offset:1360
	ds_load_u8 v134, v141 offset:1296
	v_lshl_or_b32 v135, v137, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v141 offset:1488
	ds_load_u8 v137, v141 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v137, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v141 offset:1104
	ds_load_u8 v137, v141 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v137, v133, 0xc0c0004
	ds_load_u8 v137, v141 offset:1232
	ds_load_u8 v138, v141 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v137, 16, v133
	ds_load_u8 v137, v141 offset:1888
	ds_load_u8 v138, v141 offset:1824
	v_wmma_i32_16x16x16_iu8 v[89:96], v[163:166], v[133:136], v[89:96] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v90, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v238, v238, v90 :: v_dual_add_f32 v233, v233, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v234, v234, v92
	v_add_f32_e32 v228, v228, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v141 offset:2016
	ds_load_u8 v139, v141 offset:1952
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v224, v224, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v141 offset:1632
	ds_load_u8 v140, v141 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v141 offset:1760
	ds_load_u8 v142, v141 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v142, v140, 0xc0c0004
	v_lshl_or_b32 v140, v138, 16, v137
	ds_load_u8 v137, v141 offset:1376
	ds_load_u8 v138, v141 offset:1312
	v_lshl_or_b32 v139, v142, 16, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v141 offset:1504
	ds_load_u8 v142, v141 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v142, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v141 offset:1120
	ds_load_u8 v142, v141 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v142, v137, 0xc0c0004
	ds_load_u8 v142, v141 offset:1248
	ds_load_u8 v143, v141 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v142, 16, v137
	ds_load_u8 v142, v141 offset:1904
	ds_load_u8 v143, v141 offset:1840
	v_wmma_i32_16x16x16_iu8 v[57:64], v[163:166], v[137:140], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v143, s40, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v141 offset:1968
	s_mov_b32 s40, s31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s31, s41, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v143, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v141 offset:1648
	ds_load_u8 v167, v141 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v167, v144, 0xc0c0004
	ds_load_u8 v144, v141 offset:1776
	ds_load_u8 v168, v141 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v144, 0xc0c0004
	v_lshl_or_b32 v144, v143, 16, v142
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v143, v168, 16, v167
	ds_load_u8 v142, v141 offset:1392
	ds_load_u8 v167, v141 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v167, v142, 0xc0c0004
	ds_load_u8 v167, v141 offset:1520
	ds_load_u8 v168, v141 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v167, 16, v142
	ds_load_u8 v167, v141 offset:1136
	ds_load_u8 v168, v141 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v141 offset:1264
	ds_load_u8 v141, v141 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v141, 16, v167
	v_wmma_i32_16x16x16_iu8 v[25:32], v[163:166], v[141:144], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v163, v0 offset:7552
	ds_load_u8 v164, v0 offset:7296
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v0 offset:8064
	ds_load_u8 v165, v0 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v0 offset:6528
	ds_load_u8 v166, v0 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v0 offset:7040
	ds_load_u8 v167, v0 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v167, v166, 0xc0c0004
	v_lshl_or_b32 v166, v164, 16, v163
	ds_load_u8 v163, v0 offset:5504
	ds_load_u8 v164, v0 offset:5248
	v_lshl_or_b32 v165, v167, 16, v165
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v0 offset:6016
	ds_load_u8 v167, v0 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v167, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v164, 16, v163
	ds_load_u8 v163, v0 offset:4480
	ds_load_u8 v167, v0 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v167, v163, 0xc0c0004
	ds_load_u8 v167, v0 offset:4992
	ds_load_u8 v0, v0 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v0, 16, v163
	v_wmma_i32_16x16x16_iu8 v[105:112], v[163:166], v[129:132], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[163:166], v[133:136], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[163:166], v[137:140], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[163:166], v[141:144], v[9:16] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v255 offset:7424
	ds_load_u8 v163, v255 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v227, v227, v93 :: v_dual_add_f32 v220, v220, v74
	v_dual_add_f32 v223, v223, v95 :: v_dual_add_f32 v218, v218, v76
	v_dual_add_f32 v219, v219, v73 :: v_dual_add_f32 v212, v212, v78
	v_dual_add_f32 v217, v217, v75 :: v_dual_add_f32 v210, v210, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v163, v0, 0xc0c0004
	ds_load_u8 v163, v255 offset:7936
	ds_load_u8 v164, v255 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v155, v155, v125 :: v_dual_add_f32 v250, v250, v106
	v_dual_add_f32 v151, v151, v127 :: v_dual_add_f32 v148, v148, v108
	v_dual_add_f32 v147, v147, v107 :: v_dual_add_f32 v146, v146, v112
	v_add_f32_e32 v248, v248, v110
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v255 offset:6400
	ds_load_u8 v165, v255 offset:6144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v247, v247, v109
	v_add_f32_e32 v145, v145, v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v255 offset:6912
	ds_load_u8 v166, v255 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_lshl_or_b32 v166, v163, 16, v0
	ds_load_u8 v0, v255 offset:5376
	ds_load_u8 v163, v255 offset:5120
	v_lshl_or_b32 v165, v165, 16, v164
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v163, v0, 0xc0c0004
	ds_load_u8 v163, v255 offset:5888
	ds_load_u8 v164, v255 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v163, 16, v0
	ds_load_u8 v0, v255 offset:4352
	ds_load_u8 v163, v255 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v163, v0, 0xc0c0004
	ds_load_u8 v163, v255 offset:4864
	ds_load_u8 v167, v255 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v167, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v163, 16, v0
	ds_load_u8 v0, v255 offset:7552
	ds_load_u8 v167, v255 offset:7296
	v_wmma_i32_16x16x16_iu8 v[113:120], v[163:166], v[129:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[163:166], v[133:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[163:166], v[137:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[163:166], v[141:144], v[17:24] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v166, off, off offset:148
	scratch_load_b32 v165, off, off offset:160
	v_mov_b32_e32 v163, v175
	v_mov_b32_e32 v175, v176
	v_dual_mov_b32 v176, v177 :: v_dual_mov_b32 v177, v178
	v_dual_mov_b32 v178, v179 :: v_dual_mov_b32 v179, v180
	v_dual_mov_b32 v180, v181 :: v_dual_mov_b32 v181, v182
	v_dual_mov_b32 v182, v183 :: v_dual_mov_b32 v183, v184
	v_mov_b32_e32 v184, v185
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v167, v0, 0xc0c0004
	ds_load_u8 v167, v255 offset:8064
	ds_load_u8 v168, v255 offset:7808
	v_mov_b32_e32 v185, v186
	v_dual_mov_b32 v186, v187 :: v_dual_mov_b32 v187, v188
	v_dual_mov_b32 v188, v189 :: v_dual_mov_b32 v189, v190
	v_dual_mov_b32 v190, v191 :: v_dual_mov_b32 v191, v192
	v_dual_mov_b32 v192, v193 :: v_dual_mov_b32 v193, v194
	v_dual_mov_b32 v194, v195 :: v_dual_mov_b32 v195, v196
	v_dual_mov_b32 v196, v197 :: v_dual_mov_b32 v197, v198
	v_dual_mov_b32 v198, v199 :: v_dual_mov_b32 v199, v200
	v_mov_b32_e32 v164, v202
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v84, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v255 offset:6528
	ds_load_u8 v169, v255 offset:6272
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v240, v240, v84
	v_add_f32_e32 v208, v208, v50
	v_add_f32_e32 v206, v206, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v192, v192, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v255 offset:7040
	ds_load_u8 v170, v255 offset:6784
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v194, v194, v24
	v_add_f32_e32 v198, v198, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v196, v196, v30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	v_lshl_or_b32 v170, v167, 16, v0
	ds_load_u8 v0, v255 offset:5504
	ds_load_u8 v167, v255 offset:5248
	v_lshl_or_b32 v169, v169, 16, v168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v167, v0, 0xc0c0004
	ds_load_u8 v167, v255 offset:6016
	ds_load_u8 v168, v255 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v167, 16, v0
	ds_load_u8 v0, v255 offset:4480
	ds_load_u8 v167, v255 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v167, v0, 0xc0c0004
	ds_load_u8 v167, v255 offset:4992
	ds_load_u8 v171, v255 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v171, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v167, 16, v0
	v_cvt_f32_i32_e32 v0, v113
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v118
	v_wmma_i32_16x16x16_iu8 v[1:8], v[167:170], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[167:170], v[129:132], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[167:170], v[133:136], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[167:170], v[137:140], v[33:40] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v129, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v136, v1
	v_cvt_f32_i32_e32 v140, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s37, v204
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v121, v114
	v_cvt_f32_i32_e32 v114, v117
	v_cvt_f32_i32_e32 v117, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v119, v105
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v105, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v104, v89
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v89, v82
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v83, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v86, v87
	v_cvt_f32_i32_e32 v87, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v9
	v_cvt_f32_i32_e32 v132, v13
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v13, s38, v204
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v118, v120
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v120, v10
	v_cvt_f32_i32_e32 v130, v11
	v_cvt_f32_i32_e32 v131, v12
	v_cvt_f32_i32_e32 v133, v14
	v_cvt_f32_i32_e32 v134, v15
	v_cvt_f32_i32_e32 v135, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v137, v2
	v_cvt_f32_i32_e32 v138, v3
	v_cvt_f32_i32_e32 v139, v4
	v_cvt_f32_i32_e32 v141, v6
	v_cvt_f32_i32_e32 v142, v7
	v_cvt_f32_i32_e32 v143, v8
	v_mov_b32_e32 v167, v203
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v161, v161, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v195, v195, v29 :: v_dual_add_f32 v188, v188, v120
	v_dual_add_f32 v191, v191, v31 :: v_dual_add_f32 v178, v178, v133
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v249, v249, v119
	v_add_f32_e32 v237, v237, v104
	v_dual_add_f32 v187, v187, v88 :: v_dual_add_f32 v184, v184, v131
	v_dual_add_f32 v183, v183, v130 :: v_dual_add_f32 v176, v176, v135
	v_dual_add_f32 v177, v177, v132 :: v_dual_add_f32 v150, v150, v121
	v_dual_add_f32 v175, v175, v134 :: v_dual_add_f32 v158, v158, v115
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v149, v149, v0 :: v_dual_add_f32 v242, v242, v118
	v_dual_add_f32 v157, v157, v113 :: v_dual_add_f32 v154, v154, v116
	v_dual_add_f32 v153, v153, v114 :: v_dual_add_f32 v246, v246, v105
	v_dual_add_f32 v241, v241, v117 :: v_dual_add_f32 v254, v254, v100
	v_dual_add_f32 v245, v245, v97 :: v_dual_add_f32 v252, v252, v103
	v_dual_add_f32 v253, v253, v98 :: v_dual_add_f32 v244, v244, v101
	v_dual_add_f32 v243, v243, v99 :: v_dual_add_f32 v236, v236, v89
	v_add_f32_e32 v251, v251, v102
	v_dual_add_f32 v235, v235, v81 :: v_dual_add_f32 v230, v230, v87
	v_dual_add_f32 v239, v239, v82 :: v_dual_add_f32 v232, v232, v85
	v_dual_add_f32 v231, v231, v83 :: v_dual_add_f32 v226, v226, v66
	v_dual_add_f32 v229, v229, v86 :: v_dual_add_f32 v222, v222, v68
	v_dual_add_f32 v225, v225, v65 :: v_dual_add_f32 v216, v216, v70
	v_dual_add_f32 v221, v221, v67 :: v_dual_add_f32 v214, v214, v72
	v_add_f32_e32 v215, v215, v69
	v_add_f32_e32 v213, v213, v71
	v_dual_add_f32 v193, v193, v23 :: v_dual_add_f32 v190, v190, v137
	v_dual_add_f32 v189, v189, v136 :: v_dual_add_f32 v182, v182, v141
	v_dual_add_f32 v186, v186, v139 :: v_dual_add_f32 v185, v185, v138
	v_dual_add_f32 v180, v180, v143 :: v_dual_add_f32 v181, v181, v140
	v_add_f32_e32 v179, v179, v142
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s37, v166
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s38, v166
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v144, s41, v165
	v_mov_b32_e32 v200, v201
	scratch_load_b64 v[201:202], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[169:170], off, off offset:136
	scratch_load_b64 v[73:74], off, off offset:112
	scratch_load_b64 v[75:76], off, off offset:120
	scratch_load_b64 v[29:30], off, off offset:96
	scratch_load_b64 v[31:32], off, off offset:104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v211, v211, v77
	v_dual_add_f32 v209, v209, v79 :: v_dual_add_f32 v200, v200, v28
	v_add_f32_e32 v199, v199, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v207, v207, v49
	v_add_f32_e32 v205, v205, v51
	v_add_f32_e32 v197, v197, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s38, s36, 1
	s_mov_b32 s37, s1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s1, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s36, s35
	s_mov_b32 s36, s38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v202, v202, v20 :: v_dual_add_f32 v201, v201, v19
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v144, v[169:170] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v144, 4, v163
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v76, v76, v58 :: v_dual_add_f32 v75, v75, v57
	scratch_load_b64 v[57:58], off, off offset:80 ; 8-byte Folded Reload
	v_add_f32_e32 v74, v74, v60
	v_dual_add_f32 v73, v73, v59 :: v_dual_add_nc_u32 v144, s30, v144
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[59:60], off, off offset:88
	scratch_load_b64 v[27:28], off, off offset:72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v32, v32, v54
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v144, v[1:4]
	ds_store_b128 v144, v[5:8] offset:4096
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:8
	scratch_load_b64 v[1:2], off, off
	scratch_load_b64 v[7:8], off, off offset:24
	scratch_load_b64 v[5:6], off, off offset:16
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v144, v[9:12] offset:16384
	ds_store_b128 v144, v[13:16] offset:20480
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[11:12], off, off offset:40
	scratch_load_b64 v[9:10], off, off offset:32
	scratch_load_b64 v[15:16], off, off offset:56
	scratch_load_b64 v[13:14], off, off offset:48
	v_dual_mov_b32 v144, v172 :: v_dual_add_f32 v31, v31, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v30, v30, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(10)
	v_dual_add_f32 v58, v58, v64 :: v_dual_add_f32 v57, v57, v63
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v60, v60, v62 :: v_dual_add_f32 v59, v59, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(8)
	v_dual_add_f32 v28, v28, v34 :: v_dual_add_f32 v27, v27, v33
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v4, v4, v18 :: v_dual_add_f32 v7, v7, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v2, v26 :: v_dual_add_f32 v1, v1, v25
	scratch_load_b64 v[25:26], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_f32_e32 v5, v5, v47
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v15, v15, v41 :: v_dual_add_f32 v8, v8, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v10, v10, v40
	scratch_load_b64 v[40:41], off, off offset:152 ; 8-byte Folded Reload
	v_add_f32_e32 v9, v9, v39
	scratch_load_b32 v39, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v16, v16, v42
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v14, v14, v44 :: v_dual_add_f32 v13, v13, v43
	v_dual_add_f32 v6, v6, v48 :: v_dual_add_f32 v29, v29, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v12, v12, v38 :: v_dual_add_f32 v11, v11, v37
	v_add_f32_e32 v3, v3, v17
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v25, v25, v35 :: v_dual_add_f32 v26, v26, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v101, v39 :: v_dual_mov_b32 v100, v144
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v149, 0
	s_add_i32 s40, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s37, 0, 0x4000
	v_mov_b32_e32 v150, v149
	v_mov_b32_e32 v147, v149
	v_mov_b32_e32 v145, v149
	v_mov_b32_e32 v75, v149
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v31, v149 :: v_dual_mov_b32 v32, v150
	v_dual_mov_b32 v162, v150 :: v_dual_mov_b32 v161, v149
	v_dual_mov_b32 v154, v150 :: v_dual_mov_b32 v153, v149
	v_dual_mov_b32 v156, v150 :: v_dual_mov_b32 v155, v149
	v_dual_mov_b32 v158, v150 :: v_dual_mov_b32 v157, v149
	v_dual_mov_b32 v160, v150 :: v_dual_mov_b32 v159, v149
	v_dual_mov_b32 v242, v150 :: v_dual_mov_b32 v241, v149
	v_dual_mov_b32 v152, v150 :: v_dual_mov_b32 v151, v149
	v_dual_mov_b32 v246, v150 :: v_dual_mov_b32 v245, v149
	v_dual_mov_b32 v250, v150 :: v_dual_mov_b32 v249, v149
	v_dual_mov_b32 v244, v150 :: v_dual_mov_b32 v243, v149
	v_dual_mov_b32 v248, v150 :: v_dual_mov_b32 v247, v149
	v_dual_mov_b32 v254, v150 :: v_dual_mov_b32 v253, v149
	v_mov_b32_e32 v148, v150
	v_dual_mov_b32 v252, v150 :: v_dual_mov_b32 v251, v149
	v_mov_b32_e32 v146, v150
	v_dual_mov_b32 v236, v150 :: v_dual_mov_b32 v235, v149
	v_dual_mov_b32 v238, v150 :: v_dual_mov_b32 v237, v149
	v_dual_mov_b32 v232, v150 :: v_dual_mov_b32 v231, v149
	v_dual_mov_b32 v228, v150 :: v_dual_mov_b32 v227, v149
	v_dual_mov_b32 v240, v150 :: v_dual_mov_b32 v239, v149
	v_dual_mov_b32 v234, v150 :: v_dual_mov_b32 v233, v149
	v_dual_mov_b32 v230, v150 :: v_dual_mov_b32 v229, v149
	v_dual_mov_b32 v224, v150 :: v_dual_mov_b32 v223, v149
	v_dual_mov_b32 v226, v150 :: v_dual_mov_b32 v225, v149
	v_dual_mov_b32 v220, v150 :: v_dual_mov_b32 v219, v149
	v_dual_mov_b32 v216, v150 :: v_dual_mov_b32 v215, v149
	v_dual_mov_b32 v212, v150 :: v_dual_mov_b32 v211, v149
	v_dual_mov_b32 v222, v150 :: v_dual_mov_b32 v221, v149
	v_dual_mov_b32 v218, v150 :: v_dual_mov_b32 v217, v149
	v_dual_mov_b32 v214, v150 :: v_dual_mov_b32 v213, v149
	v_dual_mov_b32 v210, v150 :: v_dual_mov_b32 v209, v149
	v_dual_mov_b32 v208, v150 :: v_dual_mov_b32 v207, v149
	v_dual_mov_b32 v76, v150 :: v_dual_mov_b32 v59, v149
	v_mov_b32_e32 v60, v150
	v_dual_mov_b32 v206, v150 :: v_dual_mov_b32 v205, v149
	v_dual_mov_b32 v73, v149 :: v_dual_mov_b32 v74, v150
	v_dual_mov_b32 v29, v149 :: v_dual_mov_b32 v30, v150
	v_dual_mov_b32 v57, v149 :: v_dual_mov_b32 v58, v150
	v_dual_mov_b32 v27, v149 :: v_dual_mov_b32 v28, v150
	v_dual_mov_b32 v15, v149 :: v_dual_mov_b32 v16, v150
	v_dual_mov_b32 v11, v149 :: v_dual_mov_b32 v12, v150
	v_dual_mov_b32 v7, v149 :: v_dual_mov_b32 v8, v150
	v_dual_mov_b32 v25, v149 :: v_dual_mov_b32 v26, v150
	v_dual_mov_b32 v13, v149 :: v_dual_mov_b32 v14, v150
	v_dual_mov_b32 v9, v149 :: v_dual_mov_b32 v10, v150
	v_dual_mov_b32 v5, v149 :: v_dual_mov_b32 v6, v150
	v_dual_mov_b32 v3, v149 :: v_dual_mov_b32 v4, v150
	v_dual_mov_b32 v1, v149 :: v_dual_mov_b32 v2, v150
	v_dual_mov_b32 v198, v150 :: v_dual_mov_b32 v197, v149
	v_dual_mov_b32 v196, v150 :: v_dual_mov_b32 v195, v149
	v_dual_mov_b32 v202, v150 :: v_dual_mov_b32 v201, v149
	v_dual_mov_b32 v200, v150 :: v_dual_mov_b32 v199, v149
	v_dual_mov_b32 v194, v150 :: v_dual_mov_b32 v193, v149
	v_dual_mov_b32 v192, v150 :: v_dual_mov_b32 v191, v149
	v_dual_mov_b32 v190, v150 :: v_dual_mov_b32 v189, v149
	v_dual_mov_b32 v188, v150 :: v_dual_mov_b32 v187, v149
	v_dual_mov_b32 v182, v150 :: v_dual_mov_b32 v181, v149
	v_dual_mov_b32 v178, v150 :: v_dual_mov_b32 v177, v149
	v_dual_mov_b32 v186, v150 :: v_dual_mov_b32 v185, v149
	v_dual_mov_b32 v184, v150 :: v_dual_mov_b32 v183, v149
	v_dual_mov_b32 v180, v150 :: v_dual_mov_b32 v179, v149
	v_dual_mov_b32 v176, v150 :: v_dual_mov_b32 v175, v149
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %Flow578
	v_and_b32_e32 v0, 0xf0, v163
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v21, s40, v164
	s_clause 0xa                            ; 88-byte Folded Spill
	scratch_store_b64 off, v[31:32], off offset:104
	scratch_store_b64 off, v[29:30], off offset:96
	scratch_store_b64 off, v[59:60], off offset:88
	scratch_store_b64 off, v[57:58], off offset:80
	scratch_store_b64 off, v[15:16], off offset:56
	scratch_store_b64 off, v[13:14], off offset:48
	scratch_store_b64 off, v[11:12], off offset:40
	scratch_store_b64 off, v[7:8], off offset:24
	scratch_store_b64 off, v[5:6], off offset:16
	scratch_store_b64 off, v[3:4], off offset:8
	scratch_store_b64 off, v[1:2], off
	v_add_nc_u32_e32 v22, s40, v101
	v_add_nc_u32_e32 v23, s40, v100
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v2, v21
	ds_load_u8_d16 v29, v21 offset:16
	ds_load_u8_d16 v35, v21 offset:32
	ds_load_u8_d16 v32, v21 offset:48
	ds_load_u8_d16 v30, v21 offset:64
	ds_load_u8_d16 v86, v21 offset:80
	ds_load_u8_d16 v81, v21 offset:96
	ds_load_u8_d16 v34, v21 offset:112
	ds_load_u8_d16 v31, v21 offset:128
	ds_load_u8_d16 v33, v21 offset:192
	ds_load_u8_d16 v104, v21 offset:144
	ds_load_u8_d16 v105, v21 offset:208
	ds_load_u8_d16 v83, v21 offset:160
	ds_load_u8_d16 v84, v21 offset:224
	ds_load_u8_d16 v36, v21 offset:240
	ds_load_u8_d16 v37, v21 offset:176
	ds_load_u8_d16 v59, v21 offset:256
	ds_load_u8_d16 v129, v21 offset:320
	ds_load_u8_d16 v41, v21 offset:272
	ds_load_u8_d16 v87, v21 offset:336
	ds_load_u8_d16 v85, v21 offset:288
	ds_load_u8_d16 v90, v21 offset:352
	ds_load_u8_d16 v38, v21 offset:368
	ds_load_u8_d16 v39, v21 offset:304
	ds_load_u8_d16 v134, v21 offset:384
	ds_load_u8_d16 v135, v21 offset:448
	ds_load_u8_d16 v106, v21 offset:400
	ds_load_u8_d16 v107, v21 offset:464
	ds_load_u8_d16 v91, v21 offset:416
	ds_load_u8_d16 v92, v21 offset:480
	ds_load_u8_d16 v40, v21 offset:496
	ds_load_u8_d16 v70, v21 offset:432
	ds_load_u8_d16 v24, v21 offset:512
	ds_load_u8_d16 v136, v21 offset:576
	ds_load_u8_d16 v88, v21 offset:528
	ds_load_u8_d16 v89, v21 offset:592
	ds_load_u8_d16 v93, v21 offset:544
	ds_load_u8_d16 v94, v21 offset:608
	ds_load_u8_d16 v71, v21 offset:624
	ds_load_u8_d16 v72, v21 offset:560
	ds_load_u8_d16 v137, v21 offset:640
	ds_load_u8_d16 v138, v21 offset:704
	ds_load_u8_d16 v108, v21 offset:656
	ds_load_u8_d16 v109, v21 offset:720
	ds_load_u8_d16 v96, v21 offset:672
	ds_load_u8_d16 v97, v21 offset:736
	ds_load_u8_d16 v77, v21 offset:752
	ds_load_u8_d16 v78, v21 offset:688
	ds_load_u8_d16 v18, v21 offset:768
	ds_load_u8_d16 v19, v21 offset:832
	ds_load_u8_d16 v130, v21 offset:784
	ds_load_u8_d16 v131, v21 offset:848
	ds_load_u8_d16 v98, v21 offset:800
	ds_load_u8_d16 v99, v21 offset:864
	ds_load_u8_d16 v79, v21 offset:880
	ds_load_u8_d16 v80, v21 offset:816
	ds_load_u8_d16 v20, v21 offset:896
	ds_load_u8_d16 v60, v21 offset:960
	ds_load_u8_d16 v115, v21 offset:1024
	ds_load_u8_d16 v132, v21 offset:912
	ds_load_u8_d16 v133, v21 offset:976
	ds_load_u8_d16 v102, v21 offset:928
	ds_load_u8_d16 v103, v21 offset:992
	ds_load_u8_d16 v82, v21 offset:944
	ds_load_u8_d16 v117, v21 offset:1088
	ds_load_u8_d16 v116, v21 offset:1152
	ds_load_u8_d16 v52, v21 offset:1040
	ds_load_u8_d16 v53, v21 offset:1104
	ds_load_u8_d16 v7, v21 offset:1056
	ds_load_u8_d16 v8, v21 offset:1120
	ds_load_u8_d16 v111, v21 offset:1136
	ds_load_u8_d16 v110, v21 offset:1072
	ds_load_u8_d16 v58, v21 offset:1216
	ds_load_u8_d16 v118, v21 offset:1280
	ds_load_u8_d16 v54, v21 offset:1168
	ds_load_u8_d16 v55, v21 offset:1232
	ds_load_u8_d16 v43, v21 offset:1184
	ds_load_u8_d16 v44, v21 offset:1248
	ds_load_u8_d16 v11, v21 offset:1264
	ds_load_u8_d16 v12, v21 offset:1200
	ds_load_u8_d16 v121, v21 offset:1344
	ds_load_u8_d16 v120, v21 offset:1408
	ds_load_u8_d16 v56, v21 offset:1296
	ds_load_u8_d16 v61, v21 offset:1360
	ds_load_u8_d16 v45, v21 offset:1312
	ds_load_u8_d16 v46, v21 offset:1376
	ds_load_u8_d16 v112, v21 offset:1392
	ds_load_u8_d16 v142, v21 offset:1328
	ds_load_u8_d16 v122, v21 offset:1472
	ds_load_u8_d16 v119, v21 offset:1536
	ds_load_u8_d16 v62, v21 offset:1424
	ds_load_u8_d16 v63, v21 offset:1488
	ds_load_u8_d16 v13, v21 offset:1440
	ds_load_u8_d16 v14, v21 offset:1504
	ds_load_u8_d16 v113, v21 offset:1520
	ds_load_u8_d16 v1, v21 offset:1456
	ds_load_u8_d16 v123, v21 offset:1600
	ds_load_u8_d16 v126, v21 offset:1664
	ds_load_u8_d16 v17, v21 offset:1552
	ds_load_u8_d16 v57, v21 offset:1616
	ds_load_u8_d16 v47, v21 offset:1568
	ds_load_u8_d16 v48, v21 offset:1632
	ds_load_u8_d16 v255, v21 offset:1648
	ds_load_u8_d16 v143, v21 offset:1584
	ds_load_u8_d16 v127, v21 offset:1728
	ds_load_u8_d16 v124, v21 offset:1792
	ds_load_u8_d16 v64, v21 offset:1680
	ds_load_u8_d16 v65, v21 offset:1744
	ds_load_u8_d16 v15, v21 offset:1696
	ds_load_u8_d16 v16, v21 offset:1760
	ds_load_u8_d16 v204, v21 offset:1776
	ds_load_u8_d16 v3, v21 offset:1712
	ds_load_u8_d16 v69, v21 offset:1856
	ds_load_u8_d16 v125, v21 offset:1920
	ds_load_u8_d16 v66, v21 offset:1808
	ds_load_u8_d16 v67, v21 offset:1872
	ds_load_u8_d16 v49, v21 offset:1824
	ds_load_u8_d16 v50, v21 offset:1888
	ds_load_u8_d16 v0, v21 offset:1904
	ds_load_u8_d16 v4, v21 offset:1840
	ds_load_u8_d16 v128, v21 offset:1984
	ds_load_u8_d16 v68, v21 offset:1936
	ds_load_u8_d16 v114, v21 offset:2000
	ds_load_u8_d16 v42, v21 offset:1952
	ds_load_u8_d16 v51, v21 offset:2016
	ds_load_u8_d16 v95, v22
	ds_load_u8_d16 v5, v23
	ds_load_u8_d16 v6, v21 offset:1968
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v21, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[9:10], off offset:32
	scratch_store_b64 off, v[25:26], off offset:64
	scratch_store_b64 off, v[27:28], off offset:72
	s_waitcnt lgkmcnt(62)
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v38, off offset:136
	scratch_store_b32 off, v39, off offset:144
	scratch_store_b32 off, v71, off offset:148
	scratch_store_b32 off, v72, off offset:152
	scratch_store_b32 off, v77, off offset:160
	scratch_store_b32 off, v78, off offset:416
	scratch_store_b32 off, v40, off offset:420
	scratch_store_b32 off, v70, off offset:424
	scratch_store_b32 off, v32, off offset:428
	scratch_store_b32 off, v79, off offset:432
	scratch_store_b32 off, v80, off offset:436
	scratch_store_b32 off, v34, off offset:440
	scratch_store_b32 off, v82, off offset:444
	scratch_store_b32 off, v36, off offset:448
	scratch_store_b32 off, v37, off offset:452
	scratch_store_b32 off, v35, off offset:456
	s_waitcnt lgkmcnt(17)
	scratch_store_b32 off, v204, off offset:460 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(9)
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(8)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:468
	scratch_store_b32 off, v83, off offset:472
	scratch_store_b32 off, v84, off offset:476
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:480 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v6, off offset:484
	scratch_store_b32 off, v85, off offset:488
	scratch_store_b32 off, v90, off offset:492
	scratch_store_b32 off, v91, off offset:496
	scratch_store_b32 off, v92, off offset:500
	scratch_store_b32 off, v7, off offset:504
	scratch_store_b32 off, v8, off offset:508
	scratch_store_b32 off, v93, off offset:512
	scratch_store_b32 off, v94, off offset:516
	scratch_store_b32 off, v95, off offset:520
	scratch_store_b32 off, v96, off offset:524
	scratch_store_b32 off, v97, off offset:528
	scratch_store_b32 off, v43, off offset:532
	scratch_store_b32 off, v44, off offset:536
	scratch_store_b32 off, v45, off offset:540
	scratch_store_b32 off, v46, off offset:544
	scratch_store_b32 off, v98, off offset:548
	scratch_store_b32 off, v99, off offset:552
	scratch_store_b32 off, v13, off offset:556
	scratch_store_b32 off, v14, off offset:560
	scratch_store_b32 off, v102, off offset:564
	scratch_store_b32 off, v103, off offset:568
	scratch_store_b32 off, v47, off offset:572
	scratch_store_b32 off, v48, off offset:576
	scratch_store_b32 off, v15, off offset:580
	scratch_store_b32 off, v16, off offset:584
	scratch_store_b32 off, v104, off offset:588
	scratch_store_b32 off, v105, off offset:592
	scratch_store_b32 off, v49, off offset:596
	scratch_store_b32 off, v50, off offset:600
	scratch_store_b32 off, v42, off offset:604
	scratch_store_b32 off, v86, off offset:608
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v51, off offset:612
	scratch_store_b32 off, v41, off offset:616
	scratch_store_b32 off, v87, off offset:620
	scratch_store_b32 off, v106, off offset:624
	scratch_store_b32 off, v107, off offset:628
	scratch_store_b32 off, v88, off offset:632
	scratch_store_b32 off, v52, off offset:636
	scratch_store_b32 off, v89, off offset:640
	scratch_store_b32 off, v53, off offset:644
	scratch_store_b32 off, v108, off offset:648
	scratch_store_b32 off, v109, off offset:652
	scratch_store_b32 off, v54, off offset:656
	scratch_store_b32 off, v55, off offset:660
	scratch_store_b32 off, v56, off offset:664
	scratch_store_b32 off, v130, off offset:668
	scratch_store_b32 off, v131, off offset:672
	scratch_store_b32 off, v132, off offset:676
	scratch_store_b32 off, v133, off offset:680
	scratch_store_b32 off, v17, off offset:684
	scratch_store_b32 off, v57, off offset:688
	scratch_store_b32 off, v64, off offset:692
	scratch_store_b32 off, v65, off offset:696
	scratch_store_b32 off, v66, off offset:700
	scratch_store_b32 off, v67, off offset:704
	scratch_store_b32 off, v68, off offset:708
	scratch_store_b32 off, v114, off offset:712
	scratch_store_b32 off, v2, off offset:716
	scratch_store_b32 off, v30, off offset:720
	scratch_store_b32 off, v31, off offset:724
	scratch_store_b32 off, v33, off offset:728
	scratch_store_b32 off, v128, off offset:732
	scratch_store_b32 off, v59, off offset:736
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v129, off offset:740
	scratch_store_b32 off, v134, off offset:744
	scratch_store_b32 off, v135, off offset:748
	scratch_store_b32 off, v24, off offset:752
	scratch_store_b32 off, v136, off offset:756
	scratch_store_b32 off, v137, off offset:760
	scratch_store_b32 off, v138, off offset:764
	v_cmp_ne_u32_e64 s0, 1, v21
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_perm_b32 v21, v18, v19, 0xc0c0004
	v_perm_b32 v22, v20, v60, 0xc0c0004
	v_perm_b32 v23, v24, v136, 0xc0c0004
	v_perm_b32 v25, v137, v138, 0xc0c0004
	s_mov_b32 s4, 0
	v_mov_b32_e32 v139, v74
	v_lshl_or_b32 v24, v22, 16, v21
	v_perm_b32 v21, v59, v129, 0xc0c0004
	v_perm_b32 v22, v134, v135, 0xc0c0004
	v_lshl_or_b32 v23, v25, 16, v23
	v_perm_b32 v25, v31, v33, 0xc0c0004
	v_mov_b16_e32 v59.l, v12.l
	v_mov_b16_e32 v12.l, v11.l
	v_lshl_or_b32 v22, v22, 16, v21
	v_perm_b32 v21, v2, v30, 0xc0c0004
	v_mov_b16_e32 v2.l, v1.l
	v_mov_b16_e32 v1.l, v113.l
	v_mov_b16_e64 v113.l, v142.l
	v_mov_b16_e64 v142.l, v143.l
	v_mov_b16_e64 v143.l, v0.l
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v25, 16, v21
	v_mov_b16_e32 v11.l, v110.l
	v_mov_b16_e32 v110.l, v111.l
	v_mov_b16_e32 v111.l, v112.l
	v_mov_b16_e64 v112.l, v255.l
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b16_e32 v10.l, v115.l
	v_mov_b16_e32 v115.l, v120.l
	v_mov_b16_e32 v120.l, v121.l
	v_mov_b16_e32 v121.l, v126.l
	v_mov_b16_e64 v129.l, v124.l
	v_mov_b16_e64 v203.l, v69.l
	v_dual_mov_b32 v255, v167 :: v_dual_mov_b32 v30, v201
	v_mov_b32_e32 v31, v202
	v_mov_b32_e32 v201, v200
	v_dual_mov_b32 v200, v199 :: v_dual_mov_b32 v199, v198
	v_dual_mov_b32 v198, v197 :: v_dual_mov_b32 v197, v196
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:164 ; 4-byte Folded Reload
	v_dual_mov_b32 v196, v195 :: v_dual_mov_b32 v195, v194
	v_dual_mov_b32 v194, v193 :: v_dual_mov_b32 v193, v192
	v_dual_mov_b32 v192, v191 :: v_dual_mov_b32 v191, v190
	v_dual_mov_b32 v190, v189 :: v_dual_mov_b32 v189, v188
	v_dual_mov_b32 v188, v187 :: v_dual_mov_b32 v187, v186
	v_dual_mov_b32 v186, v185 :: v_dual_mov_b32 v185, v184
	v_dual_mov_b32 v184, v183 :: v_dual_mov_b32 v183, v182
	v_dual_mov_b32 v182, v181 :: v_dual_mov_b32 v181, v180
	v_dual_mov_b32 v180, v179 :: v_dual_mov_b32 v179, v178
	v_dual_mov_b32 v178, v177 :: v_dual_mov_b32 v177, v176
	v_mov_b32_e32 v176, v175
	v_dual_mov_b32 v175, v163 :: v_dual_mov_b32 v138, v73
	v_dual_mov_b32 v141, v76 :: v_dual_mov_b32 v140, v75
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v144, v101 :: v_dual_add_nc_u32 v25, s39, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v0
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v0
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v26, 16, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v0
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s39, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s39, v0
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s39, v0
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v0
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v33, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v0
	v_mov_b32_e32 v0, v164
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v26, 16, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:172 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v25, s39, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v9
	scratch_load_b32 v9, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v26, 16, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s39, v9
	scratch_load_b32 v9, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v9
	scratch_load_b32 v9, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v26, 16, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v9
	scratch_load_b32 v9, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s39, v9
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s39, v9
	scratch_load_b32 v9, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v9
	scratch_load_b32 v9, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s39, v9
	scratch_load_b32 v9, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v33, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v28, 16, v27
	v_perm_b32 v28, v108, v109, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v9
	scratch_load_b32 v9, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v26, 16, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s39, v9
	scratch_load_b32 v9, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s39, v9
	scratch_load_b32 v9, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s39, v9
	scratch_load_b32 v9, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v27, v88, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v167, v26, 16, v25
	v_perm_b32 v25, v130, v131, 0xc0c0004
	v_perm_b32 v26, v132, v133, 0xc0c0004
	v_lshl_or_b32 v88, v28, 16, v27
	v_perm_b32 v27, v93, v94, 0xc0c0004
	v_perm_b32 v28, v96, v97, 0xc0c0004
	v_mov_b32_e32 v137, s11
	v_lshl_or_b32 v89, v26, 16, v25
	v_perm_b32 v25, v41, v87, 0xc0c0004
	v_perm_b32 v26, v106, v107, 0xc0c0004
	v_dual_mov_b32 v136, s10 :: v_dual_mov_b32 v135, s9
	v_dual_mov_b32 v134, s8 :: v_dual_mov_b32 v133, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v87, v26, 16, v25
	v_perm_b32 v25, v29, v86, 0xc0c0004
	v_perm_b32 v26, v104, v105, 0xc0c0004
	v_lshl_or_b32 v104, v28, 16, v27
	v_perm_b32 v27, v72, v71, 0xc0c0004
	v_perm_b32 v28, v78, v77, 0xc0c0004
	v_mov_b32_e32 v132, s6
	v_lshl_or_b32 v86, v26, 16, v25
	v_perm_b32 v25, v98, v99, 0xc0c0004
	v_perm_b32 v26, v102, v103, 0xc0c0004
	v_lshl_or_b32 v173, v28, 16, v27
	v_dual_mov_b32 v131, s5 :: v_dual_mov_b32 v130, s4
	v_mov_b16_e32 v41.l, v29.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v105, v26, 16, v25
	v_perm_b32 v25, v85, v90, 0xc0c0004
	v_perm_b32 v26, v91, v92, 0xc0c0004
	v_mov_b16_e32 v29.l, v81.l
	v_lshl_or_b32 v103, v26, 16, v25
	v_perm_b32 v25, v35, v81, 0xc0c0004
	v_perm_b32 v26, v83, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v102, v26, 16, v25
	v_perm_b32 v25, v80, v79, 0xc0c0004
	v_perm_b32 v26, v82, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[163:166], v[86:89], v[130:137] neg_lo:[1,1,0]
	v_lshl_or_b32 v174, v26, 16, v25
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_perm_b32 v26, v70, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[167:170], v[21:24], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v172, v26, 16, v25
	v_perm_b32 v25, v32, v34, 0xc0c0004
	v_perm_b32 v26, v37, v36, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[163:166], v[21:24], v[130:137] neg_lo:[1,1,0]
	v_mov_b32_e32 v32, v100
	v_wmma_i32_16x16x16_iu8 v[94:101], v[167:170], v[102:105], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v171, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[21:28], v[167:170], v[86:89], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[163:166], v[102:105], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[163:166], v[171:174], v[130:137] neg_lo:[1,1,0]
	v_perm_b32 v163, v124, v69, 0xc0c0004
	v_perm_b32 v164, v125, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[167:170], v[171:174], v[130:137] neg_lo:[1,1,0]
	v_perm_b32 v165, v119, v123, 0xc0c0004
	v_perm_b32 v167, v121, v127, 0xc0c0004
	v_mov_b16_e32 v121.l, v120.l
	v_lshl_or_b32 v166, v164, 16, v163
	v_perm_b32 v163, v118, v120, 0xc0c0004
	v_perm_b32 v164, v115, v122, 0xc0c0004
	v_lshl_or_b32 v165, v167, 16, v165
	v_perm_b32 v167, v116, v58, 0xc0c0004
	v_mov_b16_e32 v120.l, v115.l
	v_mov_b16_e32 v115.l, v10.l
	v_lshl_or_b32 v164, v164, 16, v163
	v_perm_b32 v163, v10, v117, 0xc0c0004
	v_mov_b16_e32 v69.l, v125.l
	v_mov_b16_e32 v124.l, v119.l
	v_mov_b16_e32 v125.l, v123.l
	v_mov_b16_e64 v128.l, v127.l
	v_lshl_or_b32 v163, v167, 16, v163
	v_mov_b16_e32 v119.l, v118.l
	v_mov_b16_e32 v123.l, v122.l
	v_mov_b16_e32 v118.l, v117.l
	v_mov_b16_e32 v117.l, v116.l
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v167, s39, v9
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v167, v167
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v168, s39, v9
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v168, s39, v9
	scratch_load_b32 v9, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v168
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v169, s39, v9
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v169, v169
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v169, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v169, s39, v9
	scratch_load_b32 v9, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v169, v169
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s39, v9
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v170, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s39, v9
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v170, v170
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s39, v9
	scratch_load_b32 v9, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v170, 0xc0c0004
	v_lshl_or_b32 v170, v168, 16, v167
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v169, v171, 16, v169
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v167, s39, v9
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v167, v167
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v168, s39, v9
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v168, s39, v9
	scratch_load_b32 v9, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v168
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s39, v9
	scratch_load_b32 v9, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v168, 16, v167
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v167, s39, v9
	scratch_load_b32 v9, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v167, v167
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s39, v9
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v167, v171, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s39, v9
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s39, v9
	scratch_load_b32 v9, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v167, v171, 16, v167
	v_wmma_i32_16x16x16_iu8 v[33:40], v[167:170], v[163:166], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v160, v160, v36
	v_add_f32_e32 v156, v156, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v152, v152, v40 :: v_dual_add_f32 v161, v161, v33
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v162, v162, v34 :: v_dual_add_nc_u32 v171, s39, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s39, v9
	scratch_load_b32 v9, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s39, v9
	scratch_load_b32 v9, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s39, v9
	scratch_load_b32 v9, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s39, v9
	scratch_load_b32 v9, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v173
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s39, v9
	scratch_load_b32 v9, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v174, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s39, v9
	scratch_load_b32 v9, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v174, v174
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s39, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v174, 0xc0c0004
	v_lshl_or_b32 v174, v172, 16, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v171, s39, v10
	scratch_load_b32 v10, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v173, v9, 16, v173
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s39, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v171, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v171, s39, v10
	scratch_load_b32 v10, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s39, v10
	scratch_load_b32 v10, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v171, 16, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v171, s39, v10
	scratch_load_b32 v10, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s39, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v171, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s39, v10
	scratch_load_b32 v10, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v171, v171
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s39, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v171, v10, 16, v9
	v_perm_b32 v9, v66, v67, 0xc0c0004
	v_perm_b32 v10, v68, v114, 0xc0c0004
	v_mov_b16_e32 v114.l, v112.l
	v_wmma_i32_16x16x16_iu8 v[70:77], v[171:174], v[163:166], v[70:77] neg_lo:[1,1,0]
	v_perm_b32 v163, v17, v57, 0xc0c0004
	v_perm_b32 v164, v64, v65, 0xc0c0004
	v_lshl_or_b32 v166, v10, 16, v9
	v_perm_b32 v9, v56, v61, 0xc0c0004
	v_perm_b32 v10, v62, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v165, v164, 16, v163
	v_lshl_or_b32 v164, v10, 16, v9
	v_perm_b32 v9, v52, v53, 0xc0c0004
	v_perm_b32 v10, v54, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v163, v10, 16, v9
	v_perm_b32 v9, v49, v50, 0xc0c0004
	v_perm_b32 v10, v42, v51, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[167:170], v[163:166], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[171:174], v[163:166], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v163, v47, v48, 0xc0c0004
	v_perm_b32 v164, v15, v16, 0xc0c0004
	v_lshl_or_b32 v166, v10, 16, v9
	v_perm_b32 v9, v45, v46, 0xc0c0004
	v_perm_b32 v10, v13, v14, 0xc0c0004
	v_cvt_f32_i32_e32 v23, v23
	v_lshl_or_b32 v165, v164, 16, v163
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_lshl_or_b32 v164, v10, 16, v9
	v_perm_b32 v9, v7, v8, 0xc0c0004
	v_perm_b32 v10, v43, v44, 0xc0c0004
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v26, v26
	v_lshl_or_b32 v163, v10, 16, v9
	v_perm_b32 v9, v4, v143, 0xc0c0004
	v_perm_b32 v10, v6, v5, 0xc0c0004
	v_mov_b16_e64 v143.l, v142.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v218, v218, v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[86:93], v[167:170], v[163:166], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[171:174], v[163:166], v[94:101] neg_lo:[1,1,0]
	v_perm_b32 v163, v142, v112, 0xc0c0004
	v_lshl_or_b32 v166, v10, 16, v9
	v_mov_b16_e64 v142.l, v113.l
	v_perm_b32 v9, v113, v111, 0xc0c0004
	v_mov_b16_e32 v113.l, v1.l
	v_mov_b16_e32 v1.l, v2.l
	v_perm_b32 v164, v3, v204, 0xc0c0004
	v_mov_b16_e32 v112.l, v111.l
	v_mov_b16_e32 v111.l, v110.l
	v_cvt_f32_i32_e32 v28, v28
	v_perm_b32 v10, v1, v113, 0xc0c0004
	v_lshl_or_b32 v165, v164, 16, v163
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v220, v220, v22
	v_add_f32_e32 v212, v212, v26
	v_add_f32_e32 v210, v210, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v164, v10, 16, v9
	v_perm_b32 v9, v11, v110, 0xc0c0004
	v_mov_b16_e32 v110.l, v11.l
	v_mov_b16_e32 v11.l, v12.l
	v_mov_b16_e32 v12.l, v59.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	v_lshl_or_b32 v163, v10, 16, v9
	v_cvt_f32_i32_e32 v9, v70
	v_cvt_f32_i32_e32 v10, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v159, v159, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v71, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v249, v249, v9 :: v_dual_add_f32 v250, v250, v10
	scratch_load_b64 v[9:10], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v72, v74
	v_cvt_f32_i32_e32 v73, v75
	v_cvt_f32_i32_e32 v74, v76
	v_cvt_f32_i32_e32 v75, v77
	v_cvt_f32_i32_e32 v76, v78
	v_cvt_f32_i32_e32 v77, v79
	v_cvt_f32_i32_e32 v78, v80
	v_cvt_f32_i32_e32 v79, v81
	v_cvt_f32_i32_e32 v80, v82
	v_cvt_f32_i32_e32 v81, v83
	v_cvt_f32_i32_e32 v82, v84
	v_cvt_f32_i32_e32 v83, v85
	v_cvt_f32_i32_e32 v84, v86
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v89
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v89, v91
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v99, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v217, v217, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[102:109], v[167:170], v[163:166], v[102:109] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v92, v94
	v_wmma_i32_16x16x16_iu8 v[130:137], v[171:174], v[163:166], v[130:137] neg_lo:[1,1,0]
	v_mov_b32_e32 v163, v175
	v_cvt_f32_i32_e32 v101, v103
	v_mov_b32_e32 v175, v176
	v_dual_mov_b32 v176, v177 :: v_dual_mov_b32 v177, v178
	v_dual_mov_b32 v178, v179 :: v_dual_mov_b32 v179, v180
	v_dual_mov_b32 v180, v181 :: v_dual_mov_b32 v181, v182
	v_dual_mov_b32 v182, v183 :: v_dual_mov_b32 v183, v184
	v_dual_mov_b32 v184, v185 :: v_dual_mov_b32 v185, v186
	v_dual_mov_b32 v186, v187 :: v_dual_mov_b32 v187, v188
	v_dual_mov_b32 v188, v189 :: v_dual_mov_b32 v189, v190
	v_dual_mov_b32 v190, v191 :: v_dual_mov_b32 v191, v192
	v_cvt_f32_i32_e32 v94, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v155, v155, v37 :: v_dual_add_f32 v146, v146, v75
	v_add_f32_e32 v237, v237, v76
	v_dual_mov_b32 v75, v140 :: v_dual_mov_b32 v192, v193
	v_mov_b32_e32 v193, v194
	v_dual_mov_b32 v194, v195 :: v_dual_mov_b32 v195, v196
	v_dual_mov_b32 v196, v197 :: v_dual_mov_b32 v197, v198
	v_dual_mov_b32 v198, v199 :: v_dual_mov_b32 v199, v200
	v_mov_b32_e32 v200, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v103, v105
	v_dual_mov_b32 v202, v31 :: v_dual_mov_b32 v201, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v248, v248, v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v145, v145, v74 :: v_dual_add_f32 v228, v228, v81
	v_dual_mov_b32 v73, v138 :: v_dual_add_f32 v224, v224, v83
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v100, v102
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v108, v130
	v_cvt_f32_i32_e32 v109, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v135, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v147, v147, v70 :: v_dual_mov_b32 v76, v141
	v_mov_b32_e32 v74, v139
	v_dual_mov_b32 v164, v0 :: v_dual_add_f32 v151, v151, v39
	v_add_f32_e32 v238, v238, v77
	v_dual_add_f32 v148, v148, v71 :: v_dual_add_f32 v247, v247, v72
	v_dual_add_f32 v234, v234, v79 :: v_dual_add_f32 v233, v233, v78
	v_add_f32_e32 v227, v227, v80
	v_dual_add_f32 v223, v223, v82 :: v_dual_add_f32 v76, v76, v85
	v_dual_add_f32 v219, v219, v21 :: v_dual_add_f32 v74, v74, v87
	v_dual_add_f32 v199, v199, v102 :: v_dual_add_f32 v184, v184, v131
	v_dual_add_f32 v195, v195, v104 :: v_dual_add_f32 v176, v176, v135
	v_add_f32_e32 v191, v191, v106
	v_add_f32_e32 v187, v187, v108
	v_add_f32_e32 v183, v183, v130
	v_add_f32_e32 v177, v177, v132
	v_dual_add_f32 v175, v175, v134 :: v_dual_add_f32 v200, v200, v103
	v_add_f32_e32 v196, v196, v105
	v_add_f32_e32 v192, v192, v107
	v_add_f32_e32 v188, v188, v109
	v_add_f32_e32 v178, v178, v133
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v10, v10, v89 :: v_dual_add_f32 v9, v9, v88
	scratch_store_b64 off, v[9:10], off offset:88 ; 8-byte Folded Spill
	scratch_load_b64 v[9:10], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v211, v211, v25 :: v_dual_add_f32 v10, v10, v91
	v_add_f32_e32 v9, v9, v90
	scratch_store_b64 off, v[9:10], off offset:80 ; 8-byte Folded Spill
	scratch_load_b64 v[9:10], off, off offset:56 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v209, v209, v27 :: v_dual_add_f32 v10, v10, v93
	v_add_f32_e32 v9, v9, v92
	scratch_store_b64 off, v[9:10], off offset:56 ; 8-byte Folded Spill
	scratch_load_b64 v[9:10], off, off offset:48 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v75, v75, v84 :: v_dual_add_f32 v10, v10, v95
	v_add_f32_e32 v9, v9, v94
	scratch_store_b64 off, v[9:10], off offset:48 ; 8-byte Folded Spill
	scratch_load_b64 v[9:10], off, off offset:24 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v73, v73, v86 :: v_dual_add_f32 v10, v10, v97
	v_add_f32_e32 v9, v9, v96
	scratch_store_b64 off, v[9:10], off offset:24 ; 8-byte Folded Spill
	scratch_load_b64 v[9:10], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v10, v10, v99 :: v_dual_add_f32 v9, v9, v98
	scratch_store_b64 off, v[9:10], off offset:16 ; 8-byte Folded Spill
	scratch_load_b64 v[9:10], off, off      ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v10, v10, v101 :: v_dual_mov_b32 v101, v144
	v_dual_add_f32 v9, v9, v100 :: v_dual_mov_b32 v100, v32
	scratch_store_b64 off, v[9:10], off     ; 8-byte Folded Spill
	s_branch .LBB0_11
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b16_e64 v203.l, v69.l
	v_mov_b16_e32 v69.l, v125.l
	v_mov_b16_e64 v129.l, v124.l
	v_mov_b16_e64 v128.l, v127.l
	v_mov_b16_e32 v125.l, v123.l
	v_mov_b16_e32 v124.l, v119.l
	v_mov_b16_e32 v123.l, v122.l
	v_mov_b16_e32 v119.l, v118.l
	v_mov_b16_e32 v118.l, v117.l
	v_mov_b16_e32 v117.l, v116.l
	v_mov_b16_e32 v41.l, v29.l
	v_mov_b16_e64 v114.l, v255.l
	v_mov_b16_e32 v29.l, v81.l
	v_mov_b32_e32 v255, v167
.LBB0_11:
	v_mov_b16_e32 v95.l, v3.l
	v_mov_b16_e32 v30.l, v61.l
	v_mov_b16_e32 v31.l, v62.l
	v_mov_b16_e32 v32.l, v63.l
	v_mov_b16_e32 v3.l, v58.l
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[73:74], off offset:112
	scratch_store_b64 off, v[75:76], off offset:120
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:752
	scratch_load_b32 v2, off, off offset:756
	v_perm_b32 v9, v18, v19, 0xc0c0004
	v_perm_b32 v10, v20, v60, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v28, v124, v125, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v20, v10, 16, v9
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v33, v126, v128, 0xc0c0004
	v_perm_b32 v37, v115, v118, 0xc0c0004
	v_perm_b32 v39, v117, v3, 0xc0c0004
	v_mov_b16_e32 v97.l, v1.l
	v_mov_b16_e32 v99.l, v11.l
	v_mov_b16_e32 v102.l, v12.l
	v_perm_b32 v96, v142, v112, 0xc0c0004
	v_perm_b32 v98, v110, v111, 0xc0c0004
	v_perm_b32 v97, v97, v113, 0xc0c0004
	v_mov_b32_e32 v165, v255
	v_perm_b32 v99, v102, v99, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:760
	scratch_load_b32 v2, off, off offset:764
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:736
	scratch_load_b32 v2, off, off offset:740
	v_lshl_or_b32 v19, v21, 16, v19
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v0, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:744
	scratch_load_b32 v2, off, off offset:748
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v0, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v18, v18, 16, v9
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s37, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v21, v10, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s37, v0
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s37, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:716
	scratch_load_b32 v2, off, off offset:720
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v0, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s37, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:724
	scratch_load_b32 v2, off, off offset:728
	s_waitcnt vmcnt(0)
	v_perm_b32 v24, v0, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v24, 16, v17
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v9, v9
	ds_load_u8 v23, v23
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v23, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s37, v0
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v21, 16, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s37, v165
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v9, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s37, v0
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v23
	ds_load_u8 v10, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s37, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s37, v0
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s37, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v24, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v10, 16, v9
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s37, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v21, v9, 0xc0c0004
	v_perm_b32 v21, v23, v22, 0xc0c0004
	v_perm_b32 v22, v129, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v57, v21, 16, v9
	v_perm_b32 v21, v119, v121, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s37, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v69, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v24, v23, 16, v22
	v_lshl_or_b32 v23, v33, 16, v28
	v_perm_b32 v22, v120, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v39, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s37, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s37, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s37, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s37, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s37, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s37, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s37, v0
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s37, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s37, v0
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s37, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s37, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	ds_load_u8 v27, v27
	ds_load_u8 v10, v10
	ds_load_u8 v9, v9
	ds_load_u8 v28, v28
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v25, v25
	ds_load_u8 v38, v38
	ds_load_u8 v39, v40
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	ds_load_u8 v40, v61
	ds_load_u8 v61, v62
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v28, v9, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v10, v25, v10, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_lshl_or_b32 v63, v34, 16, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v64, v10, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v36, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s37, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v65, v62
	v_lshl_or_b32 v62, v33, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s37, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s37, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s37, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s37, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s37, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v28, v28
	ds_load_u8 v34, v35
	ds_load_u8 v27, v27
	ds_load_u8 v26, v26
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	ds_load_u8 v25, v25
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v37, v65, 0xc0c0004
	v_perm_b32 v37, v61, v40, 0xc0c0004
	v_perm_b32 v40, v31, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v61, v37, 16, v35
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v34, v28, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v80, v25, 16, v28
	v_lshl_or_b32 v79, v9, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s37, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s37, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s37, v0
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s37, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s37, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v34
	ds_load_u8 v26, v27
	ds_load_u8 v27, v36
	ds_load_u8 v28, v33
	ds_load_u8 v10, v10
	ds_load_u8 v9, v9
	ds_load_u8 v33, v38
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v33, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v27, 16, v25
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s37, v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v9, 16, v28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s37, v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v33, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s37, v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s37, v0
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	ds_load_u8 v25, v25
	ds_load_u8 v34, v34
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v34, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v10, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v25, 16, v27
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s37, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s37, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v33
	ds_load_u8 v10, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s37, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s37, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s37, v0
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s37, v0
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v28, v28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s37, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v28, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v10, 16, v9
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s37, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:668
	scratch_load_b32 v2, off, off offset:672
	ds_load_u8 v9, v9
	v_perm_b32 v10, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v25, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v10, 16, v9
	s_waitcnt vmcnt(0)
	v_perm_b32 v13, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:676
	scratch_load_b32 v2, off, off offset:680
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:632
	scratch_load_b32 v2, off, off offset:640
	v_lshl_or_b32 v36, v14, 16, v13
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:648
	scratch_load_b32 v2, off, off offset:652
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:616
	scratch_load_b32 v2, off, off offset:620
	v_lshl_or_b32 v35, v16, 16, v15
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v0, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:624
	scratch_load_b32 v2, off, off offset:628
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v0, v2, 0xc0c0004
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v3, s6
	v_lshl_or_b32 v34, v26, 16, v25
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[21:24], v[49:56] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v41, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:588
	scratch_load_b32 v9, off, off offset:592
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:700
	scratch_load_b32 v9, off, off offset:704
	s_waitcnt vmcnt(0)
	v_perm_b32 v27, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:708
	scratch_load_b32 v9, off, off offset:712
	s_waitcnt vmcnt(0)
	v_perm_b32 v28, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:684
	scratch_load_b32 v33, off, off offset:688
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[21:24], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:472
	scratch_load_b32 v24, off, off offset:476
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v157, v157, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v153, v153, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v13, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v241, v241, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v245, v245, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v13, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v253, v253, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v252, v252, v13 :: v_dual_add_f32 v251, v251, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(2)
	v_perm_b32 v37, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:692
	scratch_load_b32 v33, off, off offset:696
	s_waitcnt vmcnt(2)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v0, v33, 0xc0c0004
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	v_lshl_or_b32 v33, v26, 16, v25
	v_lshl_or_b32 v83, v38, 16, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[57:60], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v0, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:636
	scratch_load_b32 v17, off, off offset:644
	v_lshl_or_b32 v82, v40, 16, v39
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v0, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:656
	scratch_load_b32 v18, off, off offset:660
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v0, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:548
	scratch_load_b32 v17, off, off offset:552
	v_wmma_i32_16x16x16_iu8 v[41:48], v[61:64], v[81:84], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v13, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v235, v235, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v239, v239, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v231, v231, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:564
	scratch_load_b32 v18, off, off offset:568
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:512
	scratch_load_b32 v19, off, off offset:516
	v_lshl_or_b32 v73, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:596
	scratch_load_b32 v17, off, off offset:600
	s_waitcnt vmcnt(2)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:524
	scratch_load_b32 v20, off, off offset:528
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v17, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:488
	scratch_load_b32 v21, off, off offset:492
	v_lshl_or_b32 v72, v19, 16, v18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:604
	scratch_load_b32 v18, off, off offset:612
	s_waitcnt vmcnt(2)
	v_perm_b32 v20, v20, v21, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:496
	scratch_load_b32 v22, off, off offset:500
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	scratch_load_b32 v22, off, off offset:456 ; 4-byte Folded Reload
	v_lshl_or_b32 v71, v21, 16, v20
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v22, v29, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v33, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:572
	scratch_load_b32 v18, off, off offset:576
	v_lshl_or_b32 v70, v23, 16, v22
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[81:84], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:432
	scratch_load_b32 v33, off, off offset:436
	v_cvt_f32_i32_e32 v11, v25
	v_cvt_f32_i32_e32 v13, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v225, v225, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v226, v226, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v13, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v221, v221, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v215, v215, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v213, v213, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(2)
	v_perm_b32 v34, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:580
	scratch_load_b32 v18, off, off offset:584
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:540
	scratch_load_b32 v18, off, off offset:544
	v_lshl_or_b32 v87, v35, 16, v34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:444
	scratch_load_b32 v34, off, off offset:520
	s_waitcnt vmcnt(2)
	v_perm_b32 v36, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:556
	scratch_load_b32 v18, off, off offset:560
	s_waitcnt vmcnt(2)
	v_perm_b32 v69, v33, v34, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:148
	scratch_load_b32 v34, off, off offset:152
	v_lshl_or_b32 v92, v69, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:464
	scratch_load_b32 v69, off, off offset:468
	s_waitcnt vmcnt(4)
	v_perm_b32 v37, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:504
	scratch_load_b32 v18, off, off offset:508
	s_waitcnt vmcnt(4)
	v_perm_b32 v74, v34, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:160
	scratch_load_b32 v34, off, off offset:416
	v_lshl_or_b32 v86, v37, 16, v36
	s_waitcnt vmcnt(4)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v38, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:532
	scratch_load_b32 v18, off, off offset:536
	s_waitcnt vmcnt(2)
	v_perm_b32 v75, v34, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:136
	scratch_load_b32 v34, off, off offset:144
	v_lshl_or_b32 v91, v75, 16, v74
	s_waitcnt vmcnt(2)
	v_perm_b32 v39, v17, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[70:73], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v76, v34, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:420
	scratch_load_b32 v34, off, off offset:424
	v_lshl_or_b32 v85, v39, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[85:88], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v13, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v205, v205, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v206, v206, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v13, v23
	s_waitcnt vmcnt(0)
	v_perm_b32 v89, v34, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:428
	scratch_load_b32 v34, off, off offset:440
	v_lshl_or_b32 v90, v89, 16, v76
	s_waitcnt vmcnt(0)
	v_perm_b32 v93, v33, v34, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:448
	scratch_load_b32 v34, off, off offset:452
	s_waitcnt vmcnt(0)
	v_perm_b32 v94, v34, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[70:73], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:480
	scratch_load_b32 v70, off, off offset:484
	v_lshl_or_b32 v89, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[85:88], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v94, v143, v114, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v93, v70, v69, 0xc0c0004
	scratch_load_b32 v69, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v95, v95, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[57:60], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v60, v93, 16, v0
	v_cvt_f32_i32_e32 v0, v12
	v_cvt_f32_i32_e32 v12, v14
	scratch_load_b64 v[14:15], off, off offset:104 ; 8-byte Folded Reload
	v_lshl_or_b32 v59, v95, 16, v94
	v_lshl_or_b32 v58, v97, 16, v96
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v158, v158, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v154, v154, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v50
	v_lshl_or_b32 v57, v99, 16, v98
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v242, v242, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v246, v246, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v53
	v_wmma_i32_16x16x16_iu8 v[69:76], v[61:64], v[57:60], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v254, v254, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v54
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v243, v243, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v44
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v244, v244, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v240, v240, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v47
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v189, v189, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v185, v185, v3 :: v_dual_add_f32 v236, v236, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v229, v229, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v30
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v3, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v232, v232, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v216, v216, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v181, v181, v1 :: v_dual_add_f32 v150, v150, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v230, v230, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v207, v207, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v222, v222, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v214, v214, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v208, v208, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v15, v15, v0 :: v_dual_add_f32 v14, v14, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v34
	v_cvt_f32_i32_e32 v11, v33
	scratch_store_b64 off, v[14:15], off offset:104 ; 8-byte Folded Spill
	scratch_load_b64 v[14:15], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v15, v15, v12 :: v_dual_add_f32 v14, v14, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v35
	v_cvt_f32_i32_e32 v13, v38
	scratch_store_b64 off, v[14:15], off offset:96 ; 8-byte Folded Spill
	scratch_load_b64 v[14:15], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v15, v15, v0 :: v_dual_add_f32 v14, v14, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v36
	v_cvt_f32_i32_e32 v11, v37
	scratch_store_b64 off, v[14:15], off offset:72 ; 8-byte Folded Spill
	scratch_load_b64 v[14:15], off, off offset:64 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v15, v0
	v_add_f32_e32 v14, v14, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v40
	v_cvt_f32_i32_e32 v12, v70
	scratch_store_b64 off, v[14:15], off offset:64 ; 8-byte Folded Spill
	scratch_load_b64 v[14:15], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v15, v15, v13 :: v_dual_add_f32 v14, v14, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v39
	v_cvt_f32_i32_e32 v13, v69
	scratch_store_b64 off, v[14:15], off offset:40 ; 8-byte Folded Spill
	scratch_load_b64 v[14:15], off, off offset:32 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v15, v15, v0 :: v_dual_add_f32 v14, v14, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v72
	v_cvt_f32_i32_e32 v11, v71
	scratch_store_b64 off, v[14:15], off offset:32 ; 8-byte Folded Spill
	scratch_load_b64 v[14:15], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v202, v202, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v74
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v201, v201, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v198, v198, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v2
	v_cvt_f32_i32_e32 v2, v4
	v_cvt_f32_i32_e32 v4, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v193, v193, v11 :: v_dual_add_f32 v190, v190, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v186, v186, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v149, v149, v4
	v_add_f32_e32 v182, v182, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v0, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v179, v179, v2 :: v_dual_add_f32 v180, v180, v0
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v15, v15, v12 :: v_dual_add_f32 v14, v14, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v12, v73
	v_cvt_f32_i32_e32 v13, v76
	scratch_store_b64 off, v[14:15], off offset:8 ; 8-byte Folded Spill
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v197, v197, v12 :: v_dual_add_f32 v194, v194, v13
	s_branch .LBB0_14
.LBB0_13:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_mov_b32_e32 v165, v255
.LBB0_14:
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v0, s31, v164
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v19, 0, 1, s2
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v1, v0
	ds_load_u8_d16 v2, v0 offset:16
	ds_load_u8_d16 v22, v0 offset:1088
	ds_load_u8_d16 v23, v0 offset:1152
	ds_load_u8_d16 v18, v0 offset:1040
	ds_load_u8_d16 v117, v0 offset:1984
	ds_load_u8_d16 v45, v0 offset:1936
	ds_load_u8_d16 v26, v0 offset:2000
	ds_load_u8_d16 v20, v0 offset:1952
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v19
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v204, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v203, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v33, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v2, off offset:616 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v18, off offset:756 ; 4-byte Folded Spill
	ds_load_u8_d16 v170, v0 offset:32
	ds_load_u8_d16 v166, v0 offset:48
	ds_load_u8_d16 v2, v0 offset:64
	ds_load_u8_d16 v3, v0 offset:80
	ds_load_u8_d16 v18, v0 offset:1104
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:660 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:760 ; 4-byte Folded Spill
	ds_load_u8_d16 v3, v0 offset:96
	ds_load_u8_d16 v18, v0 offset:1056
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v52, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:568 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:620
	scratch_store_b32 off, v20, off offset:780
	ds_load_u8_d16 v167, v0 offset:112
	ds_load_u8_d16 v3, v0 offset:128
	ds_load_u8_d16 v4, v0 offset:192
	ds_load_u8_d16 v5, v0 offset:144
	ds_load_u8_d16 v20, v0 offset:2016
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v18, v0 offset:1120
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v5, off offset:732 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v0 offset:208
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v20, off offset:784 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:624 ; 4-byte Folded Spill
	ds_load_u8_d16 v171, v0 offset:1136
	ds_load_u8_d16 v172, v0 offset:1072
	ds_load_u8_d16 v24, v0 offset:1216
	ds_load_u8_d16 v105, v0 offset:1280
	ds_load_u8_d16 v18, v0 offset:1168
	v_mov_b32_e32 v20, 0
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v5, off offset:736 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v0 offset:160
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:772 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1232
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:608 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v0 offset:224
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:776 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1184
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:612 ; 4-byte Folded Spill
	ds_load_u8_d16 v168, v0 offset:240
	ds_load_u8_d16 v169, v0 offset:176
	ds_load_u8_d16 v5, v0 offset:256
	ds_load_u8_d16 v6, v0 offset:320
	ds_load_u8_d16 v7, v0 offset:272
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v18, off offset:636 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1248
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v7, off offset:748 ; 4-byte Folded Spill
	ds_load_u8_d16 v7, v0 offset:336
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:640 ; 4-byte Folded Spill
	ds_load_u8_d16 v116, v0 offset:1264
	ds_load_u8_d16 v142, v0 offset:1200
	ds_load_u8_d16 v106, v0 offset:1344
	ds_load_u8_d16 v107, v0 offset:1408
	ds_load_u8_d16 v18, v0 offset:1296
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v7, off offset:752 ; 4-byte Folded Spill
	ds_load_u8_d16 v7, v0 offset:288
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:796 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1360
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v7, off offset:628 ; 4-byte Folded Spill
	ds_load_u8_d16 v7, v0 offset:352
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:800 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1312
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v7, off offset:632 ; 4-byte Folded Spill
	ds_load_u8_d16 v173, v0 offset:368
	ds_load_u8_d16 v174, v0 offset:304
	ds_load_u8_d16 v7, v0 offset:384
	ds_load_u8_d16 v8, v0 offset:448
	ds_load_u8_d16 v9, v0 offset:400
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v18, off offset:664 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1376
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:764 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:668 ; 4-byte Folded Spill
	ds_load_u8_d16 v143, v0 offset:1392
	ds_load_u8_d16 v144, v0 offset:1328
	ds_load_u8_d16 v108, v0 offset:1472
	ds_load_u8_d16 v109, v0 offset:1536
	ds_load_u8_d16 v18, v0 offset:1424
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v9, off offset:768 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:416
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:812 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1488
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:652 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:480
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:816 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1440
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:656 ; 4-byte Folded Spill
	ds_load_u8_d16 v133, v0 offset:496
	ds_load_u8_d16 v135, v0 offset:432
	ds_load_u8_d16 v10, v0 offset:512
	ds_load_u8_d16 v11, v0 offset:576
	ds_load_u8_d16 v9, v0 offset:528
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v18, off offset:680 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1504
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:788 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:592
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:684 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1520
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:792 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:544
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:136 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1456
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:672 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:608
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:560 ; 4-byte Folded Spill
	ds_load_u8_d16 v110, v0 offset:1600
	ds_load_u8_d16 v111, v0 offset:1664
	ds_load_u8_d16 v18, v0 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:824 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:828 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1568
	scratch_store_b32 off, v9, off offset:676 ; 4-byte Folded Spill
	ds_load_u8_d16 v136, v0 offset:624
	ds_load_u8_d16 v139, v0 offset:560
	ds_load_u8_d16 v12, v0 offset:640
	ds_load_u8_d16 v13, v0 offset:704
	ds_load_u8_d16 v9, v0 offset:656
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v18, off offset:696 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1632
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:804 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:720
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:704 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1648
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:808 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:672
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:572 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1584
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:688 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:736
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:576 ; 4-byte Folded Spill
	ds_load_u8_d16 v112, v0 offset:1728
	ds_load_u8_d16 v113, v0 offset:1792
	ds_load_u8_d16 v28, v0 offset:1680
	ds_load_u8_d16 v95, v0 offset:1744
	ds_load_u8_d16 v18, v0 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:716 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:720 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:588 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1712
	scratch_store_b32 off, v9, off offset:692 ; 4-byte Folded Spill
	ds_load_u8_d16 v140, v0 offset:752
	ds_load_u8_d16 v9, v0 offset:688
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v18, off offset:592 ; 4-byte Folded Spill
	ds_load_u8_d16 v114, v0 offset:1856
	ds_load_u8_d16 v115, v0 offset:1920
	ds_load_u8_d16 v96, v0 offset:1808
	ds_load_u8_d16 v43, v0 offset:1872
	ds_load_u8_d16 v18, v0 offset:1824
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v9, off offset:564 ; 4-byte Folded Spill
	ds_load_u8_d16 v14, v0 offset:768
	ds_load_u8_d16 v15, v0 offset:832
	ds_load_u8_d16 v46, v0 offset:784
	ds_load_u8_d16 v9, v0 offset:848
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v18, off offset:740 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1888
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:820 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:800
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v18, off offset:744 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v18, off offset:600 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1840
	scratch_store_b32 off, v9, off offset:708 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:712 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:580 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:584 ; 4-byte Folded Spill
	ds_load_u8_d16 v16, v0 offset:896
	ds_load_u8_d16 v17, v0 offset:960
	ds_load_u8_d16 v21, v0 offset:1024
	ds_load_u8_d16 v9, v0 offset:912
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:832 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:836 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:724 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:728 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v0 offset:944
	ds_load_u8_d16 v0, v0 offset:1968
	scratch_store_b32 off, v18, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v18, s31, v100
	v_mov_b32_e32 v100, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v9, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v9, s31, v101
	v_mov_b32_e32 v101, 0
	ds_load_u8_d16 v9, v9
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:700 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v18
	v_mov_b32_e32 v18, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:644 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_perm_b32 v0, v14, v15, 0xc0c0004
	v_perm_b32 v18, v16, v17, 0xc0c0004
	v_perm_b32 v19, v10, v11, 0xc0c0004
	v_perm_b32 v20, v12, v13, 0xc0c0004
	s_mov_b32 s4, 0
	v_mov_b16_e64 v42.l, v133.l
	v_lshl_or_b32 v32, v18, 16, v0
	v_perm_b32 v0, v5, v6, 0xc0c0004
	v_perm_b32 v18, v7, v8, 0xc0c0004
	v_lshl_or_b32 v31, v20, 16, v19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v30, v18, 16, v0
	v_perm_b32 v0, v1, v2, 0xc0c0004
	v_perm_b32 v18, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v29, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:212
	scratch_load_b32 v18, off, off offset:208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s11, s4
	v_mov_b16_e64 v44.l, v135.l
	v_mov_b16_e64 v101.l, v136.l
	v_mov_b16_e64 v102.l, v139.l
	v_mov_b16_e64 v103.l, v140.l
	v_dual_mov_b32 v54, s11 :: v_dual_mov_b32 v53, s10
	v_mov_b32_e32 v51, s8
	v_mov_b32_e32 v49, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:200
	scratch_load_b32 v20, off, off offset:192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s9 :: v_dual_mov_b32 v47, s4
	v_mov_b32_e32 v50, s7
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v48, s5 :: v_dual_add_nc_u32 v19, s30, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s30, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v20, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v25, v20, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v25, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v20, 16, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:184
	scratch_load_b32 v18, off, off offset:176
	v_add_nc_u32_e32 v0, s30, v0
	scratch_load_b32 v20, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v25, s30, v25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v18, v18
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v18, s30, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s30, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v18, off, off offset:336
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[33:36], v[29:32], v[47:54] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v20, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v25, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v20, 16, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:312
	scratch_load_b32 v18, off, off offset:304
	v_add_nc_u32_e32 v0, s30, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:292
	scratch_load_b32 v18, off, off offset:288
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v18, off, off offset:832
	scratch_load_b32 v19, off, off offset:836
	scratch_load_b32 v0, off, off offset:820
	v_wmma_i32_16x16x16_iu8 v[118:125], v[37:40], v[29:32], v[47:54] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:788
	scratch_load_b32 v20, off, off offset:792
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:748
	scratch_load_b32 v18, off, off offset:752
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:804
	scratch_load_b32 v25, off, off offset:808
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v20, 16, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:764
	scratch_load_b32 v19, off, off offset:768
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:616
	scratch_load_b32 v18, off, off offset:660
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:732
	scratch_load_b32 v19, off, off offset:736
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:708
	scratch_load_b32 v18, off, off offset:712
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:724
	scratch_load_b32 v19, off, off offset:728
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:672
	scratch_load_b32 v20, off, off offset:676
	v_lshl_or_b32 v70, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:628
	scratch_load_b32 v18, off, off offset:632
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:688
	scratch_load_b32 v25, off, off offset:692
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v25, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v25, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v69, v20, 16, v19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v18, off, off offset:652
	scratch_load_b32 v19, off, off offset:656
	scratch_load_b32 v20, off, off offset:564
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v25, s30, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(1)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v140, 0xc0c0004
	ds_load_u8 v25, v25
	v_lshl_or_b32 v68, v18, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:568
	scratch_load_b32 v18, off, off offset:608
	scratch_load_b32 v19, off, off offset:612
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v170, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:580
	scratch_load_b32 v18, off, off offset:584
	v_wmma_i32_16x16x16_iu8 v[71:78], v[33:36], v[67:70], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[37:40], v[67:70], v[47:54] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:596
	scratch_load_b32 v19, off, off offset:700
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	v_perm_b32 v19, v139, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v100, v18, 16, v0
	v_perm_b32 v0, v174, v173, 0xc0c0004
	v_perm_b32 v18, v135, v133, 0xc0c0004
	v_lshl_or_b32 v99, v20, 16, v19
	v_perm_b32 v19, v109, v110, 0xc0c0004
	v_perm_b32 v20, v111, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[126:133], v[33:36], v[63:66], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v18, 16, v0
	v_perm_b32 v0, v166, v167, 0xc0c0004
	v_perm_b32 v18, v169, v168, 0xc0c0004
	v_lshl_or_b32 v31, v20, 16, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:284
	scratch_load_b32 v20, off, off offset:260
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[134:141], v[37:40], v[63:66], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v18, 16, v0
	v_perm_b32 v0, v113, v114, 0xc0c0004
	v_perm_b32 v18, v115, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[33:36], v[97:100], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v18, 16, v0
	v_perm_b32 v0, v105, v106, 0xc0c0004
	v_perm_b32 v18, v107, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[37:40], v[97:100], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v0
	v_perm_b32 v0, v21, v22, 0xc0c0004
	v_perm_b32 v18, v23, v24, 0xc0c0004
	v_lshl_or_b32 v29, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v18, off, off offset:272
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v20, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v25, v20, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v25, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v20, 16, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:252
	scratch_load_b32 v18, off, off offset:240
	v_add_nc_u32_e32 v0, s30, v0
	scratch_load_b32 v20, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v25, s30, v25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v18, v18
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:224
	scratch_load_b32 v18, off, off offset:228
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:404
	scratch_load_b32 v18, off, off offset:400
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[33:36], v[29:32], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v104, v58
	v_cvt_f32_i32_e32 v255, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v100, v61
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v20, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s30, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v25, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v20, 16, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:380
	scratch_load_b32 v18, off, off offset:368
	v_add_nc_u32_e32 v0, s30, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v19, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v18, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v18, off, off offset:356
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s30, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v19, v19
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v18, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s30, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:824
	scratch_load_b32 v20, off, off offset:828
	v_lshl_or_b32 v37, v18, 16, v0
	v_perm_b32 v0, v96, v43, 0xc0c0004
	v_perm_b32 v18, v45, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[37:40], v[29:32], v[118:125] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v18, off, off offset:800
	v_cvt_f32_i32_e32 v70, v118
	v_cvt_f32_i32_e32 v27, v119
	v_cvt_f32_i32_e32 v118, v55
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	v_perm_b32 v20, v28, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v20, 16, v19
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:812
	scratch_load_b32 v19, off, off offset:816
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:756
	scratch_load_b32 v18, off, off offset:760
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:772
	scratch_load_b32 v19, off, off offset:776
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:740
	scratch_load_b32 v18, off, off offset:744
	v_wmma_i32_16x16x16_iu8 v[126:133], v[33:36], v[29:32], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[37:40], v[29:32], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v64, v126
	v_cvt_f32_i32_e32 v65, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v128
	v_cvt_f32_i32_e32 v203, v130
	v_cvt_f32_i32_e32 v41, v131
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v138, v138
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:780
	scratch_load_b32 v19, off, off offset:784
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:696
	scratch_load_b32 v20, off, off offset:704
	v_lshl_or_b32 v32, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:664
	scratch_load_b32 v18, off, off offset:668
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:716
	scratch_load_b32 v25, off, off offset:720
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v20, 16, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:680
	scratch_load_b32 v19, off, off offset:684
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:620
	scratch_load_b32 v18, off, off offset:624
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:636
	scratch_load_b32 v19, off, off offset:640
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:600
	scratch_load_b32 v18, off, off offset:604
	v_wmma_i32_16x16x16_iu8 v[71:78], v[33:36], v[29:32], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[37:40], v[29:32], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v63, v76
	v_cvt_f32_i32_e32 v67, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v77
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v68, v79
	v_cvt_f32_i32_e32 v76, v82
	v_cvt_f32_i32_e32 v74, v84
	v_cvt_f32_i32_e32 v78, v86
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v18, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:644
	scratch_load_b32 v19, off, off offset:648
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:572
	scratch_load_b32 v20, off, off offset:576
	v_lshl_or_b32 v32, v18, 16, v0
	v_perm_b32 v0, v144, v143, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:588
	scratch_load_b32 v25, off, off offset:592
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v25, v20, 0xc0c0004
	v_cvt_f32_i32_e32 v25, v122
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v31, v20, 16, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:136
	scratch_load_b32 v19, off, off offset:560
	v_cvt_f32_i32_e32 v20, v135
	v_mov_b16_e64 v135.l, v44.l
	v_cvt_f32_i32_e32 v44, v73
	v_cvt_f32_i32_e32 v73, v81
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_cvt_f32_i32_e32 v19, v133
	v_mov_b16_e64 v133.l, v42.l
	v_cvt_f32_i32_e32 v42, v72
	v_cvt_f32_i32_e32 v72, v80
	v_lshl_or_b32 v30, v18, 16, v0
	v_perm_b32 v0, v172, v171, 0xc0c0004
	v_perm_b32 v18, v142, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v18, 16, v0
	v_cvt_f32_i32_e32 v18, v129
	v_cvt_f32_i32_e32 v0, v132
	v_wmma_i32_16x16x16_iu8 v[87:94], v[33:36], v[29:32], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[37:40], v[29:32], v[47:54] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v29, v120
	v_cvt_f32_i32_e32 v32, v121
	v_cvt_f32_i32_e32 v30, v123
	v_cvt_f32_i32_e32 v31, v124
	v_cvt_f32_i32_e32 v39, v125
	v_cvt_f32_i32_e32 v33, v136
	v_mov_b16_e64 v136.l, v101.l
	v_cvt_f32_i32_e32 v36, v137
	v_cvt_f32_i32_e32 v34, v139
	v_mov_b16_e64 v139.l, v102.l
	v_cvt_f32_i32_e32 v35, v140
	v_mov_b16_e64 v140.l, v103.l
	v_cvt_f32_i32_e32 v38, v141
	v_cvt_f32_i32_e32 v37, v71
	v_cvt_f32_i32_e32 v40, v75
	v_cvt_f32_i32_e32 v71, v83
	v_cvt_f32_i32_e32 v75, v85
	v_cvt_f32_i32_e32 v77, v87
	v_cvt_f32_i32_e32 v80, v88
	v_cvt_f32_i32_e32 v81, v89
	v_cvt_f32_i32_e32 v84, v90
	v_cvt_f32_i32_e32 v79, v91
	v_cvt_f32_i32_e32 v82, v92
	v_cvt_f32_i32_e32 v83, v93
	v_cvt_f32_i32_e32 v86, v94
	v_cvt_f32_i32_e32 v85, v47
	v_mov_b32_e32 v47, v63
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v87, v50
	v_cvt_f32_i32_e32 v48, v51
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v51, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v103, v57
	v_cvt_f32_i32_e32 v101, v60
	v_cvt_f32_i32_e32 v102, v62
	v_cvt_f32_i32_e32 v121, v56
.LBB0_16:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_mov_b16_e64 v141.l, v116.l
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v52, off offset:556
	scratch_store_b32 off, v87, off offset:552
	scratch_store_b32 off, v51, off offset:548
	scratch_store_b32 off, v50, off offset:544
	scratch_store_b32 off, v49, off offset:540
	scratch_store_b32 off, v63, off offset:536
	scratch_store_b32 off, v48, off offset:532
	scratch_store_b32 off, v86, off offset:528
	scratch_store_b32 off, v85, off offset:524
	scratch_store_b32 off, v84, off offset:520
	scratch_store_b32 off, v83, off offset:516
	scratch_store_b32 off, v82, off offset:512
	scratch_store_b32 off, v81, off offset:508
	scratch_store_b32 off, v80, off offset:504
	scratch_store_b32 off, v79, off offset:500
	scratch_store_b32 off, v78, off offset:496
	scratch_store_b32 off, v77, off offset:492
	scratch_store_b32 off, v76, off offset:488
	scratch_store_b32 off, v75, off offset:484
	scratch_store_b32 off, v74, off offset:480
	scratch_store_b32 off, v73, off offset:476
	scratch_store_b32 off, v72, off offset:472
	scratch_store_b32 off, v71, off offset:468
	scratch_store_b32 off, v69, off offset:464
	scratch_store_b32 off, v68, off offset:460
	scratch_store_b32 off, v67, off offset:456
	scratch_store_b32 off, v66, off offset:452
	scratch_store_b32 off, v44, off offset:448
	scratch_store_b32 off, v42, off offset:444
	scratch_store_b32 off, v40, off offset:440
	scratch_store_b32 off, v38, off offset:436
	scratch_store_b32 off, v37, off offset:432
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v36, off offset:428
	scratch_store_b32 off, v35, off offset:424
	scratch_store_b32 off, v34, off offset:420
	scratch_store_b32 off, v33, off offset:416
	scratch_store_b32 off, v20, off offset:160
	scratch_store_b32 off, v19, off offset:152
	scratch_store_b32 off, v18, off offset:148
	scratch_store_b32 off, v0, off offset:144
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v62, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_18
; %bb.17:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:360 ; 4-byte Folded Reload
	s_mov_b32 s4, 0
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v123, s1, v165
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v5, v5, v6, 0xc0c0004
	v_perm_b32 v6, v7, v8, 0xc0c0004
	v_perm_b32 v14, v14, v15, 0xc0c0004
	v_perm_b32 v15, v16, v17, 0xc0c0004
	v_perm_b32 v10, v10, v11, 0xc0c0004
	v_perm_b32 v11, v12, v13, 0xc0c0004
	v_lshl_or_b32 v51, v6, 16, v5
	v_perm_b32 v21, v21, v22, 0xc0c0004
	v_lshl_or_b32 v53, v15, 16, v14
	v_perm_b32 v22, v23, v24, 0xc0c0004
	v_lshl_or_b32 v52, v11, 16, v10
	v_perm_b32 v26, v45, v26, 0xc0c0004
	v_mov_b32_e32 v126, v47
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v18, off, off offset:216
	scratch_load_b32 v19, off, off offset:212
	scratch_load_b32 v20, off, off offset:208
	v_mov_b32_e32 v124, v41
	scratch_load_b32 v50, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v33, s1, v9
	scratch_load_b32 v9, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v54, s1, v50
	scratch_load_b32 v50, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s1, v9
	scratch_load_b32 v9, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v55, s1, v50
	scratch_load_b32 v50, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s1, v9
	scratch_load_b32 v9, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v56, s1, v50
	scratch_load_b32 v50, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v58, s1, v9
	scratch_load_b32 v9, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v57, s1, v50
	scratch_load_b32 v50, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v59, s1, v9
	scratch_load_b32 v9, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v97, s1, v50
	scratch_load_b32 v50, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v60, s1, v9
	scratch_load_b32 v9, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v98, s1, v50
	scratch_load_b32 v50, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v61, s1, v9
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v60, v60
	ds_load_u8 v61, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v58, 16, v60
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v99, s1, v50
	scratch_load_b32 v50, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v66, s1, v9
	scratch_load_b32 v9, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v116, s1, v50
	scratch_load_b32 v50, off, off offset:172 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v18, s1, v18
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v67, s1, v9
	scratch_load_b32 v9, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v119, s1, v50
	scratch_load_b32 v50, off, off offset:168 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v19, s1, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s1, v9
	scratch_load_b32 v9, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v120, s1, v50
	scratch_load_b32 v50, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v20, s1, v20
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s1, v9
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v68
	ds_load_u8 v59, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v66
	ds_load_u8 v60, v67
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v122, s1, v50
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v50, v2, 16, v1
	ds_load_u8 v1, v19
	ds_load_u8 v2, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v59, 16, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v9
	scratch_load_b32 v9, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s1, v9
	scratch_load_b32 v9, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v9
	scratch_load_b32 v9, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s1, v9
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v73
	ds_load_u8 v59, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v71
	ds_load_u8 v66, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v66, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v9
	scratch_load_b32 v9, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s1, v9
	scratch_load_b32 v9, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s1, v9
	scratch_load_b32 v9, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s1, v9
	scratch_load_b32 v9, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v77
	ds_load_u8 v66, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v66, v58, 0xc0c0004
	ds_load_u8 v66, v75
	ds_load_u8 v67, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v66, 16, v58
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s1, v9
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s1, v9
	scratch_load_b32 v9, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, s1, v9
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v82, s1, v9
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v35, s1, v0
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v83, s1, v9
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v36, s1, v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v84, s1, v9
	scratch_load_b32 v9, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s1, v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v85, s1, v9
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s1, v0
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v86, s1, v9
	scratch_load_b32 v9, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s1, v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v87, s1, v9
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s1, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v88, s1, v9
	scratch_load_b32 v9, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v62, s1, v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v89, s1, v9
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v63, s1, v0
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v90, s1, v9
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s1, v0
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v91, s1, v9
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s1, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v92, s1, v9
	scratch_load_b32 v9, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, s1, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v93, s1, v9
	scratch_load_b32 v9, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s1, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v94, s1, v9
	scratch_load_b32 v9, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v9
	ds_load_u8 v3, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v2, 16, v1
	ds_load_u8 v1, v56
	ds_load_u8 v2, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v54
	ds_load_u8 v3, v55
	v_perm_b32 v54, v113, v114, 0xc0c0004
	v_perm_b32 v55, v115, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v55, 16, v54
	v_perm_b32 v54, v109, v110, 0xc0c0004
	v_perm_b32 v55, v111, v112, 0xc0c0004
	v_lshl_or_b32 v56, v55, 16, v54
	v_perm_b32 v54, v105, v106, 0xc0c0004
	v_perm_b32 v55, v107, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v55, v55, 16, v54
	v_lshl_or_b32 v54, v22, 16, v21
	ds_load_u8 v21, v81
	ds_load_u8 v22, v82
	v_lshl_or_b32 v19, v2, 16, v1
	ds_load_u8 v1, v99
	ds_load_u8 v2, v116
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v79
	ds_load_u8 v23, v80
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v97
	ds_load_u8 v3, v98
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v24, v22, 16, v21
	ds_load_u8 v21, v85
	ds_load_u8 v22, v86
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v122
	ds_load_u8 v2, v123
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v83
	ds_load_u8 v23, v84
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v119
	ds_load_u8 v3, v120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v23, v22, 16, v21
	ds_load_u8 v21, v89
	ds_load_u8 v22, v90
	v_lshl_or_b32 v17, v2, 16, v1
	v_mov_b32_e32 v1, s4
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	ds_load_u8 v38, v38
	ds_load_u8 v48, v48
	v_mov_b32_e32 v2, s5
	v_mov_b32_e32 v4, s7
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[50:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[58:61], v[50:53], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v87
	ds_load_u8 v79, v88
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v48, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v35, 16, v38
	ds_load_u8 v35, v62
	ds_load_u8 v36, v63
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v79, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	ds_load_u8 v21, v93
	ds_load_u8 v79, v94
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v47
	ds_load_u8 v38, v49
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v79, v21, 0xc0c0004
	ds_load_u8 v79, v91
	ds_load_u8 v80, v92
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v36, 16, v35
	ds_load_u8 v35, v42
	ds_load_u8 v36, v44
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v21, v79, 16, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[54:57], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v40
	ds_load_u8 v38, v41
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v66, v12
	v_cvt_f32_i32_e32 v123, v15
	v_cvt_f32_i32_e32 v130, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	v_cvt_f32_i32_e32 v38, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v36, 16, v35
	ds_load_u8 v34, v34
	ds_load_u8 v35, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v48, v0, 16, v34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:820
	scratch_load_b32 v33, off, off offset:832
	scratch_load_b32 v34, off, off offset:836
	v_wmma_i32_16x16x16_iu8 v[71:78], v[48:51], v[54:57], v[71:78] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v71
	v_cvt_f32_i32_e32 v67, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v73
	v_cvt_f32_i32_e32 v73, v74
	v_cvt_f32_i32_e32 v132, v75
	v_cvt_f32_i32_e32 v71, v76
	v_cvt_f32_i32_e32 v72, v77
	v_cvt_f32_i32_e32 v74, v78
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:788
	scratch_load_b32 v33, off, off offset:792
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:804
	scratch_load_b32 v34, off, off offset:808
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:748
	scratch_load_b32 v33, off, off offset:752
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:764
	scratch_load_b32 v34, off, off offset:768
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:616
	scratch_load_b32 v33, off, off offset:660
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:732
	scratch_load_b32 v37, off, off offset:736
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v33, 16, v0
	v_perm_b32 v0, v96, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[79:86], v[17:20], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v55, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:824
	scratch_load_b32 v26, off, off offset:828
	v_wmma_i32_16x16x16_iu8 v[40:47], v[58:61], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	v_perm_b32 v26, v28, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v26, off, off offset:800
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:812
	scratch_load_b32 v28, off, off offset:816
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:756
	scratch_load_b32 v26, off, off offset:760
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:772
	scratch_load_b32 v28, off, off offset:776
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:708
	scratch_load_b32 v26, off, off offset:712
	v_wmma_i32_16x16x16_iu8 v[79:86], v[21:24], v[52:55], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[48:51], v[52:55], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v122, v80
	v_cvt_f32_i32_e32 v75, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v80, v41
	v_mov_b32_e32 v41, v124
	v_cvt_f32_i32_e32 v124, v43
	v_cvt_f32_i32_e32 v131, v45
	v_cvt_f32_i32_e32 v128, v46
	v_cvt_f32_i32_e32 v129, v47
	v_mov_b32_e32 v47, v126
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:724
	scratch_load_b32 v28, off, off offset:728
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:672
	scratch_load_b32 v26, off, off offset:676
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:688
	scratch_load_b32 v28, off, off offset:692
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:628
	scratch_load_b32 v26, off, off offset:632
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:652
	scratch_load_b32 v28, off, off offset:656
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v26, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:568
	scratch_load_b32 v26, off, off offset:608
	scratch_load_b32 v28, off, off offset:612
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v170, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:740
	scratch_load_b32 v26, off, off offset:744
	v_wmma_i32_16x16x16_iu8 v[87:94], v[17:20], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[58:61], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:780
	scratch_load_b32 v28, off, off offset:784
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:696
	scratch_load_b32 v26, off, off offset:704
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:716
	scratch_load_b32 v28, off, off offset:720
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:664
	scratch_load_b32 v26, off, off offset:668
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:680
	scratch_load_b32 v28, off, off offset:684
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:620
	scratch_load_b32 v26, off, off offset:624
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:636
	scratch_load_b32 v28, off, off offset:640
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v26, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:580
	scratch_load_b32 v26, off, off offset:584
	v_wmma_i32_16x16x16_iu8 v[87:94], v[21:24], v[52:55], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[48:51], v[52:55], v[105:112] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v54, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v126, v87
	v_cvt_f32_i32_e32 v127, v88
	v_cvt_f32_i32_e32 v119, v89
	v_cvt_f32_i32_e32 v120, v90
	v_cvt_f32_i32_e32 v116, v105
	v_cvt_f32_i32_e32 v97, v108
	v_cvt_f32_i32_e32 v69, v109
	v_cvt_f32_i32_e32 v37, v111
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:596
	scratch_load_b32 v28, off, off offset:700
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	v_mov_b32_e32 v28, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v26, 16, v0
	scratch_load_b32 v26, off, off offset:564 ; 4-byte Folded Reload
	v_perm_b32 v0, v139, v136, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v140, 0xc0c0004
	v_lshl_or_b32 v35, v26, 16, v0
	v_perm_b32 v0, v174, v173, 0xc0c0004
	v_perm_b32 v26, v135, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v26, 16, v0
	v_perm_b32 v0, v166, v167, 0xc0c0004
	v_perm_b32 v26, v169, v168, 0xc0c0004
	v_lshl_or_b32 v33, v26, 16, v0
	v_mov_b32_e32 v26, v134
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[17:20], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:600
	scratch_load_b32 v17, off, off offset:604
	v_wmma_i32_16x16x16_iu8 v[1:8], v[58:61], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v36, v91
	v_cvt_f32_i32_e32 v35, v94
	v_cvt_f32_i32_e32 v33, v107
	v_cvt_f32_i32_e32 v34, v110
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:644
	scratch_load_b32 v18, off, off offset:648
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:572
	scratch_load_b32 v17, off, off offset:576
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:588
	scratch_load_b32 v18, off, off offset:592
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:136
	scratch_load_b32 v18, off, off offset:560
	v_perm_b32 v0, v144, v143, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	v_perm_b32 v0, v172, v171, 0xc0c0004
	v_perm_b32 v17, v142, v141, 0xc0c0004
	v_lshl_or_b32 v17, v17, 16, v0
	v_cvt_f32_i32_e32 v0, v106
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[21:24], v[17:20], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[48:51], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v13
	v_cvt_f32_i32_e32 v20, v79
	v_cvt_f32_i32_e32 v18, v81
	v_cvt_f32_i32_e32 v19, v82
	v_cvt_f32_i32_e32 v81, v42
	v_cvt_f32_i32_e32 v79, v44
	v_cvt_f32_i32_e32 v82, v92
	v_cvt_f32_i32_e32 v44, v93
	v_cvt_f32_i32_e32 v42, v112
	v_cvt_f32_i32_e32 v98, v133
	v_cvt_f32_i32_e32 v99, v134
	v_mov_b32_e32 v134, v26
	v_cvt_f32_i32_e32 v49, v135
	v_cvt_f32_i32_e32 v52, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v50, v138
	v_mov_b32_e32 v138, v28
	v_cvt_f32_i32_e32 v51, v139
	v_cvt_f32_i32_e32 v55, v140
	v_cvt_f32_i32_e32 v53, v1
	v_cvt_f32_i32_e32 v58, v2
	v_cvt_f32_i32_e32 v59, v3
	v_cvt_f32_i32_e32 v62, v4
	v_cvt_f32_i32_e32 v57, v5
	v_cvt_f32_i32_e32 v60, v6
	v_cvt_f32_i32_e32 v61, v7
	v_cvt_f32_i32_e32 v63, v8
.LBB0_18:
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v161, v118 :: v_dual_add_f32 v2, v162, v121
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v161, v1, s2
	v_dual_mov_b32 v144, v40 :: v_dual_lshlrev_b32 v1, 1, v163
	scratch_load_b32 v40, off, off offset:128 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v106, v162, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v2, 5, v163
	v_and_b32_e32 v1, 28, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	v_mov_b32_e32 v143, v76
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s28, s15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v247, v25 :: v_dual_and_b32 v2, 32, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v10, v242, v130 :: v_dual_add_f32 v25, v243, v132
	v_dual_add_f32 v11, v241, v123 :: v_dual_add_f32 v28, v251, v72
	v_dual_add_f32 v12, v246, v67 :: v_dual_add_f32 v21, v245, v125
	v_dual_add_f32 v23, v253, v68 :: v_dual_add_f32 v24, v244, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v241, v11, s2
	v_cndmask_b32_e64 v87, v242, v10, s2
	v_cndmask_b32_e64 v93, v245, v21, s2
	v_cndmask_b32_e64 v95, v246, v12, s2
	v_cndmask_b32_e64 v92, v253, v23, s2
	v_cndmask_b32_e64 v68, v247, v7, s2
	v_cndmask_b32_e64 v90, v244, v24, s2
	v_cndmask_b32_e64 v84, v251, v28, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v18, v239, v18 :: v_dual_mov_b32 v253, v81
	v_add_f32_e32 v127, v208, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v22, v254, v73 :: v_dual_add_f32 v5, v153, v48
	v_mov_b32_e32 v142, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v8, v146, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v20, v235, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v254, v22, s2
	v_cndmask_b32_e64 v17, v153, v5, s2
	v_dual_mov_b32 v254, v82 :: v_dual_add_f32 v19, v240, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v132, v211, v138
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v244, v231, v142
	v_add_f32_e32 v128, v213, v128
	v_add_f32_e32 v126, v207, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v211, v132, s2
	v_cndmask_b32_e64 v128, v213, v128, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v126, v207, v126, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v3, v40, 2, 0
	v_lshl_add_u32 v91, v40, 1, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v242, 1, v40
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v26, v3, v2, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v149, v9 :: v_dual_add_f32 v2, v150, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v151, v100
	v_add_f32_e32 v9, v145, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v149, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v159, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v150, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v160, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v151, v3, s2
	v_cndmask_b32_e64 v38, v159, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v1, v157, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v157, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v155, v255
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v160, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v2, v158, v66 :: v_dual_add_f32 v157, v227, v203
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v155, v1, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s29, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v158, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v156, v101
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v4, v154, v54
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s29, s29, s15
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v156, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v152, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v154, v4, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v4, s28, v163
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v6, 32, v1
	v_or_b32_e32 v5, 64, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v152, v2, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v2, 0x60, v1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v3, 1, v4
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x3
	buffer_load_u16 v76, v1, s[8:11], 0 offen
	buffer_load_u16 v75, v6, s[8:11], 0 offen
	buffer_load_u16 v56, v5, s[8:11], 0 offen
	buffer_load_u16 v54, v2, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v2, s0, v163, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v3, s[8:11], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v148, v32 :: v_dual_add_f32 v3, v249, v70
	v_dual_add_f32 v5, v147, v29 :: v_dual_add_f32 v6, v248, v30
	v_add_f32_e32 v30, v238, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v243, v25, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v39, v249, v3, s2
	v_cndmask_b32_e64 v70, v145, v9, s2
	v_cndmask_b32_e64 v73, v248, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v237, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v31, v236, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v238, v30, s2
	v_cndmask_b32_e64 v67, v147, v5, s2
	v_mov_b32_e32 v5, v78
	v_cndmask_b32_e64 v64, v237, v29, s2
	v_cndmask_b32_e64 v78, v240, v19, s2
	v_cndmask_b32_e64 v72, v148, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v156, v228, v41 :: v_dual_add_f32 v237, v233, v204
	v_dual_add_f32 v145, v219, v134 :: v_dual_add_f32 v134, v216, v131
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v152, v225, v144
	v_add_f32_e32 v147, v222, v124
	v_add_f32_e32 v124, v206, v120
	v_add_f32_e32 v120, v205, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v142, v228, v156, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v122, 16, v75
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v236, v31, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v26, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v1, v2, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v250, v27 :: v_dual_add_f32 v27, v252, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v146, v8, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[21:24], v91
	ds_load_b128 v[9:12], v91 offset:16
	v_mov_b32_e32 v146, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v250, v2, s2
	v_cndmask_b32_e64 v86, v252, v27, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[249:252], v91 offset:512
	ds_load_b128 v[245:248], v91 offset:528
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v235, v20, s2
	v_mov_b32_e32 v2, v77
	v_cndmask_b32_e64 v77, v239, v18, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v235, v230, v5
	v_add_f32_e32 v154, v226, v146
	v_dual_add_f32 v146, v221, v253 :: v_dual_add_f32 v253, v190, v58
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v146, v221, v146, s2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v1
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_store_b32 v26, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v91
	ds_load_b128 v[29:32], v91 offset:16
	v_mov_b32_e32 v6, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	scratch_store_b32 off, v163, off offset:136 ; 4-byte Folded Spill
	scratch_load_b64 v[7:8], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v129, v214, v129
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v20, v26, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v75, v26, v122 :: v_dual_mul_f32 v16, v16, v20
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v75, v82, v75 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v16
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v18, v18, v16
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v79, v20
	v_div_scale_f32 v79, vcc_lo, v16, v18, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v81, v79, v20 :: v_dual_add_f32 v162, v229, v2
	v_fma_f32 v85, -v19, v81, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v229, v162, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v81, v85, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v81, v79
	v_div_fmas_f32 v19, v19, v20, v81
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v20, v25, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v15, v15, v20
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v20, v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v79
	v_fma_f32 v85, -v79, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, vcc_lo, v15, v20, v15
	v_mul_f32_e32 v96, v85, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v79, v96, v85
	v_fmac_f32_e32 v96, v100, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v79, v96, v85
	v_div_fmas_f32 v81, v79, v81, v96
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v79, v28, v76
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v131, v215, v6
	scratch_load_b64 v[5:6], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v14, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v79
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v14
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v79, v79, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v85, 1.0, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v85, v85, v14
	v_rcp_f32_e32 v96, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v79, v96, 1.0
	v_fmac_f32_e32 v96, v100, v96
	v_div_scale_f32 v100, vcc_lo, v14, v85, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v101, v100, v96
	v_fma_f32 v102, -v79, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v102, v96
	v_fma_f32 v79, -v79, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v96, v79, v96, v101
	v_div_fixup_f32 v79, v19, v18, v16
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v16, v27, v76
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v13, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v236, v234, v1
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v18
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v16, v16, v13
	v_rcp_f32_e32 v19, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v100, v19
	v_div_scale_f32 v100, vcc_lo, v13, v16, v13
	v_div_fixup_f32 v81, v81, v20, v15
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v15, v30, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v101, v100, v19
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v15, v83, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v102, -v18, v101, v100
	v_fmac_f32_e32 v101, v102, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v101, v100
	v_div_fmas_f32 v18, v18, v19, v101
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v19, v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v20
	v_fma_f32 v100, -v20, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v100, v83
	v_div_scale_f32 v100, vcc_lo, v15, v19, v15
	v_mul_f32_e32 v101, v100, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v20, v101, v100
	v_fmac_f32_e32 v101, v102, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v101, v100
	v_div_fmas_f32 v20, v20, v83, v101
	v_div_fixup_f32 v83, v96, v85, v14
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v29, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v17, v14
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v17, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v96, v85
	v_fma_f32 v100, -v85, v96, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v100, v96
	v_div_scale_f32 v100, vcc_lo, v14, v17, v14
	v_mul_f32_e32 v101, v100, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v85, v101, v100
	v_fmac_f32_e32 v101, v102, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v101, v100
	v_div_fmas_f32 v96, v85, v96, v101
	v_div_fixup_f32 v85, v18, v16, v13
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v32, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v100, v87, v13
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v101, 1.0, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v101, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v13
	v_fma_f32 v18, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v18, v16
	v_div_scale_f32 v18, vcc_lo, v100, v101, v100
	v_mul_f32_e32 v87, v18, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v13, v87, v18
	v_fmac_f32_e32 v87, v102, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v87, v18
	v_div_fmas_f32 v102, v13, v16, v87
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v31, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v87, v20, v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v103, v89, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v89, v96, v17, v14
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v104, 1.0, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v104, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v13
	v_fma_f32 v16, -v13, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v103, v104, v103
	v_mul_f32_e32 v18, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v13, v18, v16
	v_fmac_f32_e32 v18, v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v18, v16
	v_div_fmas_f32 v107, v13, v15, v18
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[17:20], v91 offset:512
	ds_load_b128 v[13:16], v91 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v91, v18, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v95, v95, v91
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v91, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v96, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v91, v91, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v96, 1.0, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v96, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v91
	v_fma_f32 v109, -v91, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v109, v108
	v_div_scale_f32 v109, vcc_lo, v95, v96, v95
	v_mul_f32_e32 v110, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v91, v110, v109
	v_fmac_f32_e32 v110, v111, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v110, v109
	v_div_fmas_f32 v108, v91, v108, v110
	v_div_fixup_f32 v91, v102, v101, v100
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v100, v17, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v100, v93, v100
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v93, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v101, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v93, v93, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v101, 1.0, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v101, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v102, v93
	v_fma_f32 v109, -v93, v102, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v109, v102
	v_div_scale_f32 v109, vcc_lo, v100, v101, v100
	v_mul_f32_e32 v110, v109, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v93, v110, v109
	v_fmac_f32_e32 v110, v111, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v93, v110, v109
	v_div_fmas_f32 v102, v93, v102, v110
	v_div_fixup_f32 v93, v107, v104, v103
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v103, v20, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v103, v94, v103
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v94, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v94, v94, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v104, 1.0, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v94, null, v104, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v107, v94
	v_fma_f32 v109, -v94, v107, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v107, v109, v107
	v_div_scale_f32 v109, vcc_lo, v103, v104, v103
	v_mul_f32_e32 v110, v109, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v94, v110, v109
	v_fmac_f32_e32 v110, v111, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v110, v109
	v_div_fmas_f32 v107, v94, v107, v110
	v_div_fixup_f32 v94, v108, v96, v95
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v95, v19, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v108, v92, v95
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v92, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v92, v92
	v_ldexp_f32 v92, v92, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v109, 1.0, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v109, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v92, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v108, v109, v108
	v_mul_f32_e32 v110, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v92, v110, v96
	v_fmac_f32_e32 v110, v111, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v110, v96
	v_div_fmas_f32 v110, v92, v95, v110
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v95, v14, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v92, v102, v101, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v100, v90, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v149, v110, v109, v108
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v101, 1.0, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v101, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v90
	v_fma_f32 v96, -v90, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v100, v101, v100
	v_mul_f32_e32 v102, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v90, v102, v96
	v_fmac_f32_e32 v102, v111, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v102, v96
	v_div_fmas_f32 v102, v90, v95, v102
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v95, v13, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v90, v107, v104, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v151, v102, v101, v100
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v88, v88, v95
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v100, v15, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v95, 0xbfb8aa3b, v88
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v84, v84, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v95
	v_mul_f32_e32 v100, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v95, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v96, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v88
	v_exp_f32_e32 v95, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v95, v95, v96
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v95, 1.0, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v96, null, v95, v95, v88
	v_rcp_f32_e32 v103, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v96, v103, 1.0
	v_fmac_f32_e32 v103, v104, v103
	v_div_scale_f32 v104, vcc_lo, v88, v95, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v107, v104, v103
	v_fma_f32 v111, -v96, v107, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v107, v111, v103
	v_fma_f32 v96, -v96, v107, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v96, v96, v103, v107
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v103, v16, v76
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v86, v86, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v103, 0xbfb8aa3b, v86
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v96, v95, v88
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_dual_add_f32 v88, v201, v49 :: v_dual_lshlrev_b32 v49, 16, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v201, v88, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v103, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v86
	v_exp_f32_e32 v103, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v103, v103, v104
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v103, 1.0, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v104, null, v103, v103, v86
	v_rcp_f32_e32 v107, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v104, v107, 1.0
	v_fmac_f32_e32 v107, v108, v107
	v_div_scale_f32 v108, vcc_lo, v86, v103, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v109, v108, v107
	v_fma_f32 v110, -v104, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v109, v110, v107
	v_fma_f32 v104, -v104, v109, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v104, v104, v107, v109
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v100
	v_cndmask_b32_e64 v100, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v101, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v100, v100
	v_ldexp_f32 v100, v100, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v101, null, v100, v100, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v102, v101
	v_fma_f32 v107, -v101, v102, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v107, v102
	v_div_scale_f32 v107, vcc_lo, v84, v100, v84
	v_mul_f32_e32 v108, v107, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v101, v108, v107
	v_fmac_f32_e32 v108, v109, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v101, v108, v107
	v_div_fmas_f32 v101, v101, v102, v108
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v136, v101, v100, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v102, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v82, v82, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v102, null, v82, v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v107, v102
	v_fma_f32 v108, -v102, v107, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v107, v108, v107
	v_div_scale_f32 v108, vcc_lo, v75, v82, v75
	v_mul_f32_e32 v109, v108, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v102, v109, v108
	v_fmac_f32_e32 v109, v110, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v102, v109, v108
	v_div_fmas_f32 v102, v102, v107, v109
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v107, v25, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v139, v102, v82, v75
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v82, v24, v76
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v80, v80, v107 :: v_dual_mul_f32 v43, v43, v82
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v82, v23, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v38, v38, v82
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v82, v10, v76
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v38, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v46, v82
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v82, v9, v76
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v170, v46, v87 :: v_dual_mul_f32 v45, v45, v82
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v82, v12, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v107, 0xbfb8aa3b, v80
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v87, v198, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v170, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v66, v66, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v107
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v82, v11, v76 :: v_dual_mul_f32 v171, v45, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v172, v66, v91
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v107, 0, 0x42800000, vcc_lo
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v48, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v82, v250, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v80
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v173, v48, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v71, v71, v82 :: v_dual_mul_f32 v82, v249, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v82, v39, v82 :: v_dual_mul_f32 v39, v252, v76
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v75, v22, v76
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v240, v82, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v107, v107, v108
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v72, v72, v39 :: v_dual_mul_f32 v39, v251, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v107, 1.0, v107
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v241, v72, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v163, v67, v39
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v246, v76
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v108, null, v107, v107, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v141, v73, v39
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v245, v76
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v109, v108
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v165, v68, v39
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v248, v76
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v224, v1
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v110, -v108, v109, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v166, v74, v39 :: v_dual_mul_f32 v39, v247, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v224, v68, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v109, v110, v109
	v_div_scale_f32 v110, vcc_lo, v80, v107, v80
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v167, v70, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v111, v110, v109
	v_fma_f32 v112, -v108, v111, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v112, v109
	v_fma_f32 v108, -v108, v111, v110
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v108, v108, v109, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v109, v8, v47
	scratch_load_b64 v[110:111], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v140, v108, v107, v80
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v80, v21, v76
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v76, v6, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v80, v105, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v135, v104, v103, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v148, v223, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v39, v22, v122 :: v_dual_mul_f32 v58, v165, v133
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v95, v111, v99
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v99, v167, v136 :: v_dual_mul_f32 v136, v30, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v99, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v70, v220, v1
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v168, v65, v39
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v21, v122
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v220, v70, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v133, v168, v139
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v169, v64, v39
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v39, v28, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v133, v133
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v64, v78, v39
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v238, v71, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v94, v110, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v110, v94, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v71, v218, v1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v72, v217, v1
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v217, v72, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v130, v212, v1
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v130, v212, v130, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v73, v210, v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v125, v209, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[203:204], off, off offset:120
	scratch_load_b32 v1, off, off offset:444
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v39, v27, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v209, v125, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v74, v204, v1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v150, v77, v39 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v204, v74, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v123, v203, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:112
	scratch_load_b32 v1, off, off offset:456
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v123, v203, v123, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v118, v4, v1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v4, v118, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v65
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v153, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v161, null, v153, v153, v64
	v_rcp_f32_e32 v158, v161
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v161, v158, 1.0
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v75, v106, v75 :: v_dual_fmac_f32 v158, v39, v158
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v121, v3, v1
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v121, v3, v121, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v112, v7, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[40:41], off, off offset:80
	scratch_load_b32 v1, off, off offset:464
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v7, v112, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v105, v41, v1
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v65, 0xbfb8aa3b, v150 :: v_dual_add_f32 v106, v40, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[46:47], off, off offset:56
	scratch_load_b32 v1, off, off offset:472
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v40, v106, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v150 :: v_dual_add_f32 v102, v47, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v47, v102, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v67
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v80, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v155, 1.0, v65
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v75, v79
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v75, v5, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v160, null, v155, v155, v150
	v_rcp_f32_e32 v159, v160
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v160, v159, 1.0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v103, v46, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[79:80], off, off offset:48
	scratch_load_b32 v1, off, off offset:488
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v138, v80, v1
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v100, v79, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[113:114], off, off offset:24
	scratch_load_b32 v1, off, off offset:480
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v159, v39, v159
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v79, v100, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v96, v114, v1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v114, v96, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v86, v113, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[84:85], off, off offset:16
	scratch_load_b32 v1, off, off offset:496
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v43, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v92, v85, v1
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v43, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v85, v92, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v93, v84, v1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[82:83], off, off
	scratch_load_b32 v1, off, off offset:504
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v89, v83, v1
	scratch_load_b32 v1, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v39
	v_mov_b16_e32 v39.l, v43.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v90, v82, v1
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v174, v65, v45, 0x7fff
	v_mov_b16_e32 v45.h, v39.h
	v_mov_b16_e32 v45.l, v67.h
	scratch_load_b64 v[65:66], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v82, v90, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v50.h, 0x7fff, v174.h, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v174, s29, s28, v242
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v45
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v239, v67, v45, 0x7fff
	v_and_b32_e32 v45, 1, v39
	v_mov_b16_e64 v39.l, v170.h
	v_cndmask_b16 v50.l, 0x7fff, v239.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v43, v45, 0x7fff
	v_mov_b16_e32 v45.h, v39.h
	v_mov_b16_e32 v45.l, v38.h
	v_cmp_o_f32_e64 s0, v173, v173
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s1
	v_cmp_o_f32_e64 s1, v172, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v38, v38, v45, 0x7fff
	scratch_load_b64 v[44:45], off, off offset:64 ; 8-byte Folded Reload
	v_cndmask_b16 v43.l, 0x7fff, v38.h, s3
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v81, v200, v1
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v77, v44, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v39
	v_mov_b16_e64 v39.l, v172.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v104, v45, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v109, v8, v109, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v170, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v45, v104, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v199, v1
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v117, v196, v1
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v115, v195, v1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v192, v1
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v191, v1
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v188, v1
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v187, v1
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v184, v1
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v183, v1
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v178, v1
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v177, v1
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v176, v1
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:548
	scratch_load_b32 v4, off, off offset:128
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v1, v175, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[1:2], off, off offset:104
	scratch_load_b32 v3, off, off offset:144
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v48, v1, v36
	scratch_load_b64 v[35:36], off, off offset:72 ; 8-byte Folded Reload
	v_add_f32_e32 v119, v2, v254
	scratch_load_b64 v[254:255], off, off offset:32 ; 8-byte Folded Reload
	v_dual_add_f32 v243, v232, v143 :: v_dual_add_f32 v78, v65, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v218, v71, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v97, v232, v243, s2
	v_cndmask_b32_e64 v78, v65, v78, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v97, v97, v136
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v91, v202, v52 :: v_dual_add_f32 v52, v197, v137
	v_add_f32_e32 v137, v193, v51
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v51, v163, v149
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v149, v31, v122
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v163, s15, v164
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v164.h, 0x7fff, v33.h, s4
	v_cmp_o_f32_e64 s4, v58, v58
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v136, v231, v244, s2
	v_cndmask_b32_e64 v131, v215, v131, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v144, v144, v149 :: v_dual_add_f32 v69, v194, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v55.h, v39.h
	v_mov_b16_e32 v55.l, v51.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v38, s15, 4, v163
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v108, v36, v0
	v_add_f32_e32 v0, v189, v53
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v67, v254, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v39.h
	v_mov_b16_e64 v37.l, v240.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v101, v66, v34
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v186, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v39.h
	v_mov_b16_e64 v34.l, v173.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v107, v35, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v39.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v185, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v62.l, v99.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v116, v1, v48, s2
	v_cndmask_b32_e64 v73, v210, v73, s2
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v53, v173, v34, 0x7fff
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e64 v39.l, v238.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v42, v255, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v107, v35, v107, s2
	v_cndmask_b32_e64 v105, v41, v105, s2
	v_cndmask_b32_e64 v103, v46, v103, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v182, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v59, v172, v34, 0x7fff
	v_and_b32_e32 v56, 1, v39
	v_mov_b16_e64 v39.l, v241.h
	v_mov_b16_e32 v60.h, v39.h
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s0
	v_cmp_o_f32_e64 s0, v238, v238
	v_mov_b16_e32 v60.l, v58.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v255, v42, s2
	v_cndmask_b32_e64 v93, v84, v93, s2
	v_cndmask_b32_e64 v84, v197, v52, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v35, v174, v38, 1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v181, v57
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v57, v141, v151
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v53.h, 0x7fff, v59.h, s1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v59, 16, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v54, 1, v55
	v_add3_u32 v55, v238, v56, 0x7fff
	v_and_b32_e32 v56, 1, v39
	v_cmp_o_f32_e64 s1, v51, v51
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v141, v23, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v119, v2, v119, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v180, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v57.h
	v_add3_u32 v51, v51, v54, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s0
	v_cmp_o_f32_e64 s0, v241, v241
	v_and_b32_e32 v55, 1, v60
	v_add3_u32 v56, v241, v56, 0x7fff
	v_mov_b16_e32 v63.h, v39.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, s3, v150, v155, v150
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v83, v89, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_dual_add_f32 v0, v179, v61 :: v_dual_mul_f32 v61, v166, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v139, 1, v39
	v_add3_u32 v58, v58, v55, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v56.h, s0
	v_and_b32_e32 v56, 1, v62
	v_cmp_o_f32_e64 s0, v57, v57
	v_cndmask_b16 v55.l, 0x7fff, v51.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v5, v75, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_mov_b16_e32 v0.h, v39.h
	v_mov_b16_e64 v0.l, v171.h
	v_mov_b16_e32 v39.l, v61.h
	v_add3_u32 v57, v57, v139, 0x7fff
	v_cmp_o_f32_e64 s1, v61, v61
	v_add3_u32 v99, v99, v56, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v58.h, s4
	v_and_b32_e32 v0, 1, v0
	v_and_b32_e32 v62, 1, v39
	v_mov_b16_e64 v39.l, v133.h
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s0
	v_cndmask_b16 v57.l, 0x7fff, v99.h, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v233, v237, s2
	v_cndmask_b32_e64 v85, v200, v81, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v171, v0, 0x7fff
	v_and_b32_e32 v139, 1, v39
	v_add3_u32 v58, v61, v62, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v99, v99, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v164.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v0, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_add3_u32 v61, v133, v139, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s1
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v139, v29, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v133, v234, v236, s2
	v_cndmask_b32_e64 v101, v66, v101, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v37, s15, 5, v163
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_add3_u32 v135, v240, v0, 0x7fff
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v169, v140
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v140, 0xbfb8aa3b, v97
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[33:34], null, s15, 48, v[163:164]
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s15, s11
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v34, 0x80, v174
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v54.l, 0x7fff, v135.h, vcc_lo
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v135, vcc_lo, v64, v153, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v0.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v135, v158
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v161, v51, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v0, v63, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v60, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v51, v61, v158
	v_fma_f32 v61, -v160, v63, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v135, -v161, v51, v135
	v_fmac_f32_e32 v63, v61, v159
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v61, v136, v139
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v136, 0, 0x42800000, s0
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v135, v158, v51
	v_fma_f32 v60, -v160, v63, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v135, 0xbfb8aa3b, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v97
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.l, 0x7fff, v62.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v202, v91, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v60, v159, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_exp_f32_e32 v63, v136
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v136, v24, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v51, v153, v64
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v153, v10, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v60, v60, v155, v150
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v133, v133, v136 :: v_dual_mul_f32 v136, v32, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v142, v142, v153
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v61 :: v_dual_mul_f32 v60, v99, v60
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v133, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v63, v63, v139
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v139, v227, v157, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.h, v39.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v64, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v0.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v0, v0
	v_mov_b16_e32 v51.l, v60.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v133, null, v63, v63, v97
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v64, v64, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v99, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v60, v51, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v99, v0, v99, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v135, v230, v235, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v64, v64, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v140, -v133, v62, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v135, v135, v136
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v149, s3, v61, v64, v61
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v136, v9, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v44, v77, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v141, v0
	v_fmac_f32_e32 v62, v140, v62
	v_div_scale_f32 v140, vcc_lo, v97, v63, v97
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v143, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v136, v139, v136
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v254, v67, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v151, v140, v62
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v150, -v0, v141, 1.0
	v_fma_f32 v155, -v133, v151, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v143, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v141, v150, v141 :: v_dual_mul_f32 v150, 0xbfb8aa3b, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v151, v155, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v135
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v194, v69, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v150
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v156, v149, v141
	v_fma_f32 v133, -v133, v151, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v150, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v153, -v0, v156, v149
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v62, v133, v62, v151
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v150, 0xbfb8aa3b, v144
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v156, v153, v141
	v_div_fixup_f32 v62, v62, v63, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v139, v143, v155
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v153, v11, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v140, v150
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v0, v156, v149
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v62, v142, v62 :: v_dual_add_f32 v139, 1.0, v139
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v149, v17, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v0, v0, v141, v156
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v141, v18, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v97, null, v139, v139, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_mov_b16_e32 v39.l, v62.h
	v_mov_b16_e32 v60.h, v39.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v140, v133
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v0, v64, v61
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.h, 0x7fff, v99.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v140, v226, v154, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.l, 0x7fff, v51.h, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v154, v12, v122 :: v_dual_add_f32 v61, 1.0, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v63, v97
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v140, v140, v141
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v141, v223, v148, s2
	v_cndmask_b32_e64 v148, v225, v152, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v136, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v136, 1, v39
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v68, v68, v154
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, null, v61, v61, v144
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v148, v148, v149
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v150, s0, v144, v61, v144
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v0.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v141, v141, v153
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v133, v99
	v_fma_f32 v51, -v97, v63, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v152, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v63, v51, v63 :: v_dual_and_b32 v60, 1, v60
	v_div_scale_f32 v51, vcc_lo, v135, v139, v135
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v0, v60, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v142, -v99, v133, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v143, v51, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v152, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v133, v142, v133 :: v_dual_mul_f32 v142, 0xbfb8aa3b, v140
	v_fma_f32 v149, -v97, v143, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v152, 0xbfb8aa3b, v148 :: v_dual_mul_f32 v7, v251, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v151, v150, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v143, v149, v63
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v8, v252, v59
	v_mul_f32_e32 v2, v246, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v149, -v99, v151, v150
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v142, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v97, v143, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v97, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v151, v149, v133 :: v_dual_fmac_f32 v142, 0xbfb8aa3b, v140
	v_div_fmas_f32 v51, v51, v63, v143
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v99, v151, v150
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v99, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v51, v139, v135
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v149, v19, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v63, v63, v133, v151
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v51, v68, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.h, v39.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v63, v61, v144
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v97, v142, v97
	v_ldexp_f32 v63, v99, v133
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v133, v62, v136, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v142, v20, v122 :: v_dual_mul_f32 v61, v141, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v97, 1.0, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v141, v222, v147, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v146, v146, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v61.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, null, v97, v97, v140
	v_div_scale_f32 v136, null, v63, v63, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v62, 1, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v135, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v133.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v0, v136
	v_div_scale_f32 v133, vcc_lo, v140, v97, v140
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v141, v141, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.l, 0x7fff, v60.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v142, v219, v145, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v51.h
	v_add3_u32 v62, v61, v62, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v139, -v99, v135, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v147, 0xbfb8aa3b, v141
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v149, v249, v122 :: v_dual_and_b32 v60, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v135, v139, v135
	v_fma_f32 v139, -v136, v0, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v51, v60, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v143, v133, v135 :: v_dual_fmac_f32 v0, v139, v0
	v_div_scale_f32 v139, s0, v148, v63, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v147, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v144, -v99, v143, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v145, v139, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v147, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v143, v144, v135
	v_fma_f32 v144, -v136, v145, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v99, -v99, v143, v133
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v133, 0xbfb8aa3b, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v145, v144, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v99, v99, v135, v143
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v135, v147
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v133
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v136, -v136, v145, v139
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v97, v99, v97, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v133, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v0, v136, v0, v145
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v136, v250, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s3
	v_ldexp_f32 v135, v135, v139
	v_fmac_f32_e32 v133, 0xbfb8aa3b, v146
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v0, v63, v148
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v70, v70, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v139, v142, v149
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v63, v133
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v133, 1.0, v135
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v51, v70, v97
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v70.h, 0x7fff, v60.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v143, v13, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v135, null, v133, v133, v141
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v139, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v70.l, 0x7fff, v62.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v63, v99
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v99, v135
	v_div_scale_f32 v139, vcc_lo, v141, v133, v141
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v131, v131, v143
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v63
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v140, v251, v122
	v_mul_f32_e32 v148, v252, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v97.l, v0.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v147, 0xbfb8aa3b, v131
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v60, v60, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v135, v99, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v97.h, v39.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v147
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v136, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v51.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v99, v62, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v216, v134, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v134, v14, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v147, 0, 0x42800000, s3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v71, v71, v148
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v142, v139, v99
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v72, v72, v140
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v62, v62, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v134, -v63, v136, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v147, 0xbfb8aa3b, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v61, 1, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v144, 0xbfb8aa3b, v62 :: v_dual_and_b32 v97, 1, v39
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v136, v134, v136
	v_div_scale_f32 v134, s0, v146, v60, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v0, v61, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v144
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v144, -v135, v142, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v145, v134, v136
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v97, v51, v97, 0x7fff
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v5, v249, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v143, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v142, v144, v99
	v_fma_f32 v144, -v63, v145, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v135, -v135, v142, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v145, v144, v136
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s1
	v_exp_f32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v99, v135, v99, v142
	v_fma_f32 v63, -v63, v145, v134
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v134, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v99, v99, v133, v141
	v_div_fmas_f32 v63, v63, v136, v145
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v135, v143, v139
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v0.h, v39.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v60, v63, v60, v146
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v134, v136
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v143, v245, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v135, 1.0, v135 :: v_dual_mul_f32 v60, v72, v60
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v71, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v134, null, v135, v135, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.l, 0x7fff, v61.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, null, v63, v63, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v133, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v72.h
	v_cndmask_b16 v71.h, 0x7fff, v97.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v99
	v_div_scale_f32 v97, vcc_lo, v62, v135, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v61, 1, v39
	v_cmp_o_f32_e64 s0, v72, v72
	v_mov_b16_e32 v0.l, v60.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v132, v132, v143
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v136, -v134, v133, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v72, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v133, v136, v133 :: v_dual_and_b32 v0, 1, v0
	v_fma_f32 v136, -v99, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v72.h, 0x7fff, v61.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v214, v129, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v129, v16, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v139, v97, v133
	v_fmac_f32_e32 v51, v136, v51
	v_div_scale_f32 v136, s1, v131, v63, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v129, v61, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v140, -v134, v139, v97
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v60, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v141, v136, v51 :: v_dual_mul_f32 v142, 0xbfb8aa3b, v129
	v_dual_fmac_f32 v139, v140, v133 :: v_dual_mul_f32 v140, v15, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v99, v141, v136
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v97, -v134, v139, v97
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v128, v128, v140 :: v_dual_fmac_f32 v141, v61, v51
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v134, v25, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s0
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v97, v97, v133, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v133, 0xbfb8aa3b, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v99, v141, v136
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v62, v97, v135, v62
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v25, v25, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v99, v51, v141
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v133
	v_exp_f32_e32 v61, v61
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v133, v246, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v51, v63, v131
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v99, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v130, v130, v133
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v60, v60
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v51, v132, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v128
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v61, v61, v63
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v130, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v39.h
	v_mov_b16_e32 v62.l, v51.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v63, v99
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v97, 1.0, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v60.h
	v_and_b32_e32 v62, 1, v62
	v_cndmask_b16 v72.l, 0x7fff, v0.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, null, v97, v97, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v131, v51, v62, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v63, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v0, v99
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v133, v247, v122
	v_mul_f32_e32 v122, v248, v122
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v130, 1.0, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v60, v63, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v208, v127, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v61, v26, v49
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v141, v73, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v130, v130, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v127, -v99, v0, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v60, v60, v61
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v133, v125, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v132, v63
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v26, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v0, v127, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v127, vcc_lo, v129, v97, v129
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v61
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v61, v126, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v135, -v63, v132, 1.0
	v_mul_f32_e32 v136, v127, v0
	v_div_scale_f32 v126, s3, v128, v130, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v134, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v139, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v132, v135, v132
	v_fma_f32 v135, -v99, v136, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v134
	v_fmac_f32_e32 v139, 0xbfb8aa3b, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v140, v126, v132
	v_fmac_f32_e32 v136, v135, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v134, 0, 0x42800000, s4
	v_exp_f32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v63, v140, v126
	v_fma_f32 v99, -v99, v136, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v140, v73, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v99, v0, v136
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s4
	v_exp_f32_e32 v125, v134
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v73, v139, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v63, v140, v126
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v0, v0, v97, v129
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v122, 1.0, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v63, v63, v132, v140
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v73.h, 0x7fff, v62.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v141, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v97, v125, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v127, null, v122, v122, v60
	v_div_fixup_f32 v63, v63, v130, v128
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v0.h, v39.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v128, v127
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v63, v133, v63
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v99, v28, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v129, null, v125, v125, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v73.l, 0x7fff, v131.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v63.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v131, vcc_lo, v60, v122, v60
	v_rcp_f32_e32 v130, v129
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v127, v128, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v97, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v206, v124, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v62.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v128, v51, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v124, v63, v97, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v0, v0, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v205, v120, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v129, v130, 1.0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v99, v27, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v132, v131, v128
	v_div_scale_f32 v120, s0, v61, v125, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v130, v51, v130 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v0
	v_fma_f32 v135, -v127, v132, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v126, 1, v39
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v27, v27, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v133, v120, v130
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v51
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v51, v97, v99 :: v_dual_fmac_f32 v132, v135, v128
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v97, v21, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v129, v133, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v134, 0, 0x42800000, s1
	v_mul_f32_e32 v136, 0xbfb8aa3b, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v127, v132, v131
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v97, v123, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v133, v99, v130 :: v_dual_fmac_f32 v134, 0xbfb8aa3b, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v136
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v127, v127, v128, v132
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v120, -v129, v133, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v134, v134
	v_cndmask_b32_e64 v135, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v120, v120, v130, v133
	v_div_fixup_f32 v60, v127, v122, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v136, v22, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v120, v125, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v99, v134, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v128, v135
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v74, v74, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v63, v63
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v97, v61
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v99, 1.0, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v97, v62, v126, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v74, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.h, v39.h
	v_mov_b16_e32 v74.l, v61.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v122, null, v99, v99, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v120, v128, v129
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v127, v30, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v123, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v74.h, 0x7fff, v97.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v74.l, 0x7fff, v124.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v124, vcc_lo, v0, v99, v0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v119, v119, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v125, null, v120, v120, v51
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v131, v29, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v126, -v122, v123, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v130, 0xbfb8aa3b, v119
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v125
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v60.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v116, v116, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v123, v126, v123
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v130
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v131, v23, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v97, 1, v39
	v_add3_u32 v63, v61, v63, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v128, v124, v123
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v130, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v126, -v125, v62, 1.0
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v121, v121, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v97, v60, v97, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v122, v128, v124
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v130, 0xbfb8aa3b, v119
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v126, v62
	v_div_scale_f32 v126, s0, v51, v120, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v128, v127, v123
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v22, v22, v59
	v_mul_f32_e32 v21, v21, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v129, v126, v62
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v30, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v122, v128, v124
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v124, 0xbfb8aa3b, v116
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v22, v89, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v125, v129, v126
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v21, v90, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v122, v122, v123, v128
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v123, v130
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v129, v127, v62
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v0, v122, v99, v0
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v130, v10, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v124, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v125, -v125, v129, v126
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v99, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v109, v109, v130 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v62, v125, v62, v129
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v123, v123, v126
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v125, v24, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v126, v31, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v62, v120, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v124
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v123
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v118, v118, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v126, v75, v126 :: v_dual_mul_f32 v51, v121, v51
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v124, v9, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v121, null, v120, v120, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v118, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v97.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v62, v62, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v118, v121
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v129, 0xbfb8aa3b, v126
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v99.l, v51.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v99.h, v39.h
	v_cndmask_b16 v0.l, 0x7fff, v63.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v123, vcc_lo, v119, v120, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v97, null, v62, v62, v116
	v_fma_f32 v63, -v121, v118, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v129
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v60.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v122, v97
	v_dual_fmac_f32 v118, v63, v118 :: v_dual_and_b32 v61, 1, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v6, v76, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v76, v32, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v129, 0, 0x42800000, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v99, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v125, v123, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v51, v61, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v63, v63, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v97, v122, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v129, 0xbfb8aa3b, v126
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v99, v60, v99, 0x7fff
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v6, v250, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v127, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v122, v76, v122
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, s0, v116, v62, v116
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v27, v88, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v127
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v121, v125, v123
	v_mul_f32_e32 v128, v76, v122
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v24, v24, v59
	v_mul_f32_e32 v10, v10, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v125, v127, v118
	v_fma_f32 v127, -v97, v128, v76
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v24, v85, v24 :: v_dual_mul_f32 v31, v31, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v121, -v121, v125, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v128, v127, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s1
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v9, v9, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v75, v75
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v118, v121, v118, v125
	v_fma_f32 v76, -v97, v128, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v97, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v51, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v76, v76, v122, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_mov_b16_e32 v51.h, v39.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v75, v75, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v62, v76, v62, v116
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v76, v97, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v122, 1.0, v75 :: v_dual_mul_f32 v75, v112, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v118, v120, v119
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v76
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v124, v11, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v97, null, v122, v122, v63
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v109, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v109, null, v116, v116, v126
	v_rcp_f32_e32 v118, v97
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v76.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v60, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.h, 0x7fff, v99.h, vcc_lo
	v_cndmask_b16 v75.l, 0x7fff, v61.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, vcc_lo, v63, v122, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v61, 1, v39
	v_cmp_o_f32_e64 s0, v76, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v112, -v97, v118, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v62.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v106, v106, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v76, v61, 0x7fff
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v11, v11, v59 :: v_dual_fmac_f32 v118, v112, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v112, -v109, v60, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.h, 0x7fff, v61.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v36, v108, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v119, v99, v118 :: v_dual_fmac_f32 v60, v112, v60
	v_div_scale_f32 v112, s1, v126, v116, v126
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v108, v18, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v120, -v97, v119, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v62, v51, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v121, v112, v60 :: v_dual_mul_f32 v18, v18, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v61, v61, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v119, v120, v118 :: v_dual_mul_f32 v120, v17, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v108, -v109, v121, v112
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v123, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v97, -v97, v119, v99
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v99, v107, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v121, v108, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v123
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v97, v97, v118, v119
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v108, -v109, v121, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v109, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v107, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v63, v97, v122, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v108, v60, v121
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v109
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v61
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v109, v12, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v62, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v60, v60, v116, v126
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v108, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v107, v107
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v105, v105, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.l, 0x7fff, v51.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v106, v60
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v108, 0xbfb8aa3b, v99
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v118, v19, v49
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v105, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, vcc_lo
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v121, v250, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v106, v108
	v_ldexp_f32 v97, v107, v112
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v62.h
	v_cmp_o_f32_e64 s0, v62, v62
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v108, v20, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v118, v77, v118 :: v_dual_add_f32 v97, 1.0, v97
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v102, v102, v121
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v20, v20, v59
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v104, v104, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v105, v106, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v106, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v107, null, v97, v97, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v116, 0xbfb8aa3b, v104 :: v_dual_add_f32 v105, 1.0, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v106, v62, v106, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v107
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v108, v249, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v116
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v105, v105, v99
	v_div_scale_f32 v77, s3, v99, v105, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v116, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v112, v62
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v103, v103, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v109, -v107, v51, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v60.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v116, 0xbfb8aa3b, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.h, v39.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v12, v12, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v109, v51
	v_div_scale_f32 v109, vcc_lo, v61, v97, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v119, -v62, v112, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v116, v116
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v120, v109, v51
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v19, v19, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v112, v119, v112 :: v_dual_mul_f32 v119, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v60, v63, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v107, v120, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v123, v77, v112
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v120, v122, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v121, -v62, v123, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v119, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v107, -v107, v120, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v108, v116, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v123, v121, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v118
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v121, v251, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v107, v51, v120
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v62, -v62, v123, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v109, v119
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v51, v97, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v107, 1.0, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v62, v62, v112, v123
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v122, v252, v49 :: v_dual_mul_f32 v51, v102, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v97, null, v107, v107, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v109, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v62, v62, v105, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v77.h, 0x7fff, v106.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v99, v97
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v106, v14, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_mul_f32 v62, v103, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v77.l, 0x7fff, v63.h, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v109, v13, v49
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v101, v101, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v102, null, v61, v61, v118
	v_div_scale_f32 v112, s0, v118, v61, v118
	v_fma_f32 v63, -v97, v99, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v103, v102
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v109, v78, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v51.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v80, v138, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v99, v63, v99
	v_div_scale_f32 v63, vcc_lo, v104, v107, v104
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v120, 0xbfb8aa3b, v109
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v100, v100, v121
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v62.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v108, -v102, v103, 1.0
	v_mul_f32_e32 v106, v63, v99
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v120
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.h, v39.h
	v_and_b32_e32 v105, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v103, v108, v103 :: v_dual_mul_f32 v108, 0xbfb8aa3b, v101
	v_fma_f32 v116, -v97, v106, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v120, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v78, v78, v122 :: v_dual_mul_f32 v119, v112, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v106, v116, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v109
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v116, -v102, v119, v112
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v108, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v97, v106, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v97, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v62, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v119, v116, v103 :: v_dual_fmac_f32 v108, 0xbfb8aa3b, v101
	v_div_fmas_f32 v63, v63, v99, v106
	s_mov_b32 vcc_lo, s0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v106, v16, v49
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v102, v119, v112
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v102, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v63, v63, v107, v104
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v98, v98, v106
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v99, v99, v103, v119
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v103, 0, 0xffffffc0, s3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v113, v86, s2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v86, v199, v1, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v63, v78, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v99, v61, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v97, v108, v97
	v_ldexp_f32 v99, v102, v103
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v78.h, v39.h
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v100, v61
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v97, 1.0, v97
	v_add_f32_e32 v99, 1.0, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v100, v51, v105, 0x7fff
	v_cmp_o_f32_e64 s0, v62, v62
	v_mov_b16_e32 v78.l, v61.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v102, null, v97, v97, v101
	v_div_scale_f32 v104, null, v99, v99, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v62, 1, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v103, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v78.h, 0x7fff, v100.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v104
	v_div_scale_f32 v100, vcc_lo, v101, v97, v101
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v116, 0xbfb8aa3b, v98
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v78.l, 0x7fff, v60.h, s0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v118, v15, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v63.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v105, -v102, v103, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v116
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v118, v79, v118 :: v_dual_mul_f32 v79, v245, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v103, v105, v103
	v_fma_f32 v105, -v104, v51, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v116, 0, 0x42800000, s1
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v79, v106, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v63, v60, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v107, v100, v103
	v_fmac_f32_e32 v51, v105, v51
	v_div_scale_f32 v105, s0, v109, v99, v109
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v116, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v108, -v102, v107, v100
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v61, v62, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v112, v105, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v193, v137, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v14, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v107, v108, v103
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v29, v29, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v108, -v104, v112, v105
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v31, v80, v31
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v15, v15, v59
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v100, -v102, v107, v100
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v102, 0xbfb8aa3b, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v112, v108, v51
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v13, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v100, v100, v103, v107
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v103, v116
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v104, -v104, v112, v105
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v97, v100, v97, v101
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v102, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v104, v51, v112
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v104, v246, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v103, v103, v105
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v118
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v51, v99, v109
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v96, v96, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.h, v39.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v99, v102
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v102, 1.0, v103
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v100, v79, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v96, v96, v97
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.h, 0x7fff, v60.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v101, null, v102, v102, v98
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v100.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v51, v99, v51
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v97, v101
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v96.h
	v_cndmask_b16 v79.l, 0x7fff, v62.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v99, 1.0, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v63
	v_and_b32_e32 v62, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v99, v99, v118
	v_fma_f32 v61, -v101, v97, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v103, v100, v51, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v111, v95, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v63, v60
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v95, v247, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v97, v61, v97
	v_div_scale_f32 v61, vcc_lo, v98, v102, v98
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v26, v51, v26 :: v_dual_mul_f32 v49, v248, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v106, s0, v118, v99, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v104, v61, v97
	v_fma_f32 v51, -v60, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v105, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v51, v63
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v51, v94, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v105
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v94, -v101, v104, v61
	v_mul_f32_e32 v105, v106, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v107, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v104, v94, v97
	v_fma_f32 v94, -v60, v105, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v107
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v101, v104, v61
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v101, v92, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v105, v94, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v107, 0, 0x42800000, s3
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v61, v61, v97, v104
	v_fma_f32 v60, -v60, v105, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v100, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v61, v102, v98
	v_div_fmas_f32 v63, v60, v63, v105
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v97, v107
	v_ldexp_f32 v25, v25, v94
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v49, v63, v99, v118
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v60, 1.0, v25 :: v_dual_mul_f32 v25, v93, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v97, v94
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v94, v96, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v60, v60, v26
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v49, v25, v49 :: v_dual_add_f32 v62, 1.0, v63
	v_mul_f32_e32 v63, v101, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v93, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.h, 0x7fff, v94.h, vcc_lo
	v_cndmask_b16 v25.l, 0x7fff, v103.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v95, null, v62, v62, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v63.h
	v_mov_b16_e32 v61.l, v49.h
	v_mov_b16_e32 v61.h, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v96, v95
	v_fma_f32 v97, -v92, v93, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v94, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v61, 1, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, vcc_lo, v26, v60, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v95, v96, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v94, v63, v94, 0x7fff
	v_add3_u32 v61, v49, v61, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v98, v97, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v96, v99, v96 :: v_dual_mul_f32 v99, v28, v59
	v_div_scale_f32 v28, s0, v51, v62, v51
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v91, v91, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v92, v98, v97
	v_dual_mul_f32 v100, v28, v96 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v98, v99, v93
	v_fma_f32 v99, -v95, v100, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v101
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v89, -v92, v98, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v92, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v100, v99, v96
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v88, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v89, v89, v93, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v95, v100, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v89, v60, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v92, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v96, v100
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	v_exp_f32_e32 v88, v88
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v22, v22, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v28, v62, v51
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_mov_b16_e32 v62.h, v39.h
	v_mov_b16_e32 v39.l, v22.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v92
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v21, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v94.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v88, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v62.l, v28.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v61.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v49, 1, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v60, v60, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v51, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v39
	v_add3_u32 v49, v28, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v63
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v88, 1.0, v26
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v198, v87, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v22, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v88, v88, v27
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v26, v30
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v30, v23, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v87, -v63, v62, 1.0
	v_rcp_f32_e32 v89, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v26
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v86, v86, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v87, v62
	v_div_scale_f32 v87, vcc_lo, v91, v60, v91
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v23, v84, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s1, v27, v88, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v61, v89, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v92, v87, v62 :: v_dual_fmac_f32 v89, v90, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v90, -v63, v92, v87
	v_mul_f32_e32 v94, v29, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v93, v93
	v_cndmask_b32_e64 v84, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v92, v90, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v85, -v61, v94, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v28, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v23
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v63, v92, v87
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, v39.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v94, v85, v89
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v63, v93, v90
	v_exp_f32_e32 v84, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v30, v62, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v61, v94, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v60, v30, v60, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v61, v61, v89, v94
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v29, v29, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v49.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v195, v115, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v61, v88, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v51.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, vcc_lo, v26, v29, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v24.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v60, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v84, v62
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v27, v86, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v84, v85
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v86, v32, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_and_b32 v49, 1, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v30, v30, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v85, v84, 1.0
	v_div_scale_f32 v32, s0, v23, v30, v23
	v_rcp_f32_e32 v61, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v62, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v196, v117, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v81, v82, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v62, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v63, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v61, v28, v61 :: v_dual_mul_f32 v28, v83, v86
	v_fma_f32 v83, -v85, v81, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v32, v61 :: v_dual_mul_f32 v87, 0xbfb8aa3b, v28
	v_fmac_f32_e32 v81, v83, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v63, v86, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v87
	v_mul_f32_e32 v87, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v82, -v85, v81, v82
	v_fmac_f32_e32 v86, v80, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v83, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v81, v82, v84, v81
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v63, v86, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v81, v29, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v83, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v80, 0xbfb8aa3b, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v61, v86
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v82, v83
	v_exp_f32_e32 v61, v80
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v32, v30, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v27, v51, 0x7fff
	v_mov_b16_e32 v39.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v9, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v60, v82, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v9, v61, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v24, v49, 0x7fff
	v_cmp_o_f32_e64 s1, v23, v23
	v_and_b32_e32 v24, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v60 :: v_dual_add_f32 v49, 1.0, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v23.h
	v_mov_b16_e32 v9.h, v39.h
	v_add3_u32 v24, v10, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v32, v32, v28
	v_div_scale_f32 v60, null, v49, v49, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v30.h, s0
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v10, vcc_lo, v28, v32, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v23, v27, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v190, v253, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v61, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v26, v51, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v23, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v23, v191, v1, s2
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v51, v29, v51 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v18
	v_fma_f32 v29, -v60, v61, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v23, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v30, v10, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v61, v29, v61
	v_div_scale_f32 v29, s3, v31, v49, v31
	v_fma_f32 v63, -v26, v30, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v65, v29, v61 :: v_dual_fmac_f32 v30, v63, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v60, v65, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v26, v30, v10
	v_fmac_f32_e32 v65, v63, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v10, v51, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v66
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v60, v65, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v10, v32, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v29, v29, v61, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v29, v49, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.h, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v23
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v29, v29, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v18, v29, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v62, v192, v1, s2
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v12, v62, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v12, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v24.h, s0
	v_and_b32_e32 v24, 1, v30
	v_cndmask_b16 v10.l, 0x7fff, v27.h, s1
	v_mov_b16_e32 v39.l, v12.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v11, v24, 0x7fff
	v_and_b32_e32 v27, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v12, v27, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v67, v189, v1, s2
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v67, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v17
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v26, v23
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v28
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v23, v23, v17
	v_fma_f32 v31, -v28, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v49, v30
	v_fmac_f32_e32 v26, v31, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v60, v42, v26
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v32, v187, v1, s2
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v32, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v51, v188, v1, s2
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v31, v186, v1, s2
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v20, v31, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v30, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v31, v49
	v_div_scale_f32 v31, s0, v17, v23, v17
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v51, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v28, v60, v42
	v_mul_f32_e32 v62, v31, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v60, v61, v26
	v_fma_f32 v51, -v30, v62, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v60, v42
	v_fmac_f32_e32 v62, v51, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v28, v26, v60
	v_fma_f32 v28, -v30, v62, v31
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v11, v11
	v_mov_b16_e32 v11.h, v39.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v26, v29, v18
	v_div_fmas_f32 v28, v28, v49, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v28, v23, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.h, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v41, v185, v1, s2
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v41, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v63, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v63
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v61, 0, 0x42800000, s3
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v31, v41, v42
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s3
	v_exp_f32_e32 v30, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v31, v31, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v30, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v12, v12, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v6, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, s0, v20, v31, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v5.h
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v18, v28, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v26, v17, 1.0
	v_fmac_f32_e32 v28, v24, v28
	v_div_scale_f32 v24, s3, v19, v12, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v5, v11, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v29, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v24, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v11.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v5, v6, v17
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v11, v16, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v26, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v32, v17
	v_fma_f32 v6, -v26, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v5, v6, v17, v5
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v5, v31, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v29, v183, v1, s2
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v29, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v30, v182, v1, s2
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v30, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v18, v41, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v32, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v41, v30, v28
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v6, -v18, v41, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v28, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v6, v12, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v39.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v6.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v18, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v6, v19, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v42, v184, v1, s2
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v42, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v8, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v39
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v26, v181, v1, s2
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v26, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v8, v180, v1, s2
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	v_ldexp_f32 v11, v16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v11, v11, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v13, v11, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v17, v17, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v20, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_mul_f32_e32 v47, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v20, v47, v31
	v_fmac_f32_e32 v47, v45, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, v179, v1, s2
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v12, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v7, v7, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v15, v16, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v5, 1.0, v17 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v26, v16
	v_div_scale_f32 v26, vcc_lo, v14, v7, v14
	v_div_scale_f32 v29, null, v5, v5, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, s0, v8, v5, v8
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v17, v26, v16
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v15, v17, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v41, v16
	v_fma_f32 v48, -v29, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v15, v17, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v48, v32
	v_div_scale_f32 v30, null, v18, v18, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v15, v16, v17
	v_fma_f32 v16, -v20, v47, v31
	v_mul_f32_e32 v17, v45, v32
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v30
	v_div_fixup_f32 v7, v15, v7, v14
	v_div_fmas_f32 v16, v16, v28, v47
	v_fma_f32 v28, -v29, v17, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v176, v4, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v4, v248, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v16, v11, v13
	v_fmac_f32_e32 v17, v28, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v30, v42, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v15, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v29, v17, v45
	v_fmac_f32_e32 v42, v26, v42
	v_div_scale_f32 v26, s3, v12, v18, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v32, v17
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v20, v26, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v13, v5, v8
	v_fma_f32 v31, -v30, v20, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v20, v31, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v30, v20, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v14, v14, v42, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v6.h, v39.h
	v_cndmask_b16 v24.l, 0x7fff, v19.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v46, v177, v1, s2
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v41, v178, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v1, v245, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v41, v2 :: v_dual_mul_f32 v1, v46, v1
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v1, v1, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v175, v3, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v3, v247, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v14, v18, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v11, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e32 v11.h, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v39
	v_and_b32_e32 v5, 1, v11
	v_mov_b16_e32 v39.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v3.h
	v_add3_u32 v7, v2, v7, 0x7fff
	scratch_load_b32 v2, off, off offset:136 ; 4-byte Folded Reload
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v8, 1, v39
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_add3_u32 v6, v4, v8, 0x7fff
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v32, v10, v22, vcc_lo
	v_cndmask_b32_e32 v10, v22, v10, vcc_lo
	v_cndmask_b32_e32 v40, v3, v23, vcc_lo
	v_dual_cndmask_b32 v3, v23, v3 :: v_dual_mov_b32 v22, 0x5410
	v_dual_mov_b32 v23, 0x7632 :: v_dual_cndmask_b32 v26, v76, v0
	v_cndmask_b32_e32 v0, v0, v76, vcc_lo
	v_cndmask_b32_e32 v4, v50, v164, vcc_lo
	v_cndmask_b32_e32 v6, v43, v53, vcc_lo
	v_cndmask_b32_e32 v8, v54, v56, vcc_lo
	v_cndmask_b32_e32 v12, v55, v57, vcc_lo
	v_cndmask_b32_e32 v14, v58, v68, vcc_lo
	v_cndmask_b32_e32 v16, v64, v70, vcc_lo
	v_cndmask_b32_e32 v18, v71, v73, vcc_lo
	v_dual_cndmask_b32 v20, v72, v74 :: v_dual_cndmask_b32 v29, v75, v77
	v_dual_cndmask_b32 v30, v25, v78 :: v_dual_cndmask_b32 v25, v78, v25
	v_cndmask_b32_e32 v31, v21, v79, vcc_lo
	v_cndmask_b32_e32 v21, v79, v21, vcc_lo
	v_dual_cndmask_b32 v41, v2, v24 :: v_dual_cndmask_b32 v2, v24, v2
	v_cndmask_b32_e32 v1, v164, v50, vcc_lo
	v_cndmask_b32_e32 v5, v53, v43, vcc_lo
	v_cndmask_b32_e32 v7, v56, v54, vcc_lo
	v_cndmask_b32_e32 v11, v57, v55, vcc_lo
	v_cndmask_b32_e32 v13, v68, v58, vcc_lo
	v_cndmask_b32_e32 v15, v70, v64, vcc_lo
	v_cndmask_b32_e32 v17, v73, v71, vcc_lo
	v_cndmask_b32_e32 v19, v74, v72, vcc_lo
	v_cndmask_b32_e32 v39, v27, v9, vcc_lo
	v_cndmask_b32_e32 v9, v9, v27, vcc_lo
	v_cndmask_b32_e32 v28, v77, v75, vcc_lo
	v_cndmask_b32_e32 v22, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v23, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v24, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v22, v22, 8, v22
	v_lshl_or_b32 v23, v23, 8, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 0x540054, v22
	v_and_b32_e32 v23, 0x760076, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v22, 4, v22
	v_lshl_or_b32 v22, v23, 4, v23
	v_permlanex16_b32 v23, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v21, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v42, 0x5040504, v0
	v_and_b32_e32 v43, 0x7060706, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v4, v1, v42
	v_perm_b32 v1, v4, v1, v43
	v_perm_b32 v2, v6, v5, v42
	v_perm_b32 v3, v6, v5, v43
	v_perm_b32 v4, v8, v7, v42
	v_perm_b32 v5, v8, v7, v43
	v_perm_b32 v6, v12, v11, v42
	v_perm_b32 v7, v12, v11, v43
	v_perm_b32 v8, v14, v13, v42
	v_perm_b32 v9, v14, v13, v43
	v_perm_b32 v10, v16, v15, v42
	v_perm_b32 v11, v16, v15, v43
	v_perm_b32 v12, v18, v17, v42
	v_perm_b32 v13, v18, v17, v43
	v_perm_b32 v14, v20, v19, v42
	v_perm_b32 v15, v20, v19, v43
	v_perm_b32 v16, v24, v26, v42
	v_perm_b32 v17, v24, v26, v43
	v_perm_b32 v20, v23, v30, v42
	v_perm_b32 v21, v23, v30, v43
	v_perm_b32 v22, v25, v31, v42
	v_perm_b32 v23, v25, v31, v43
	v_perm_b32 v24, v29, v32, v42
	v_perm_b32 v25, v29, v32, v43
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v174, v163, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v18, v27, v28, v42
	v_perm_b32 v19, v27, v28, v43
	v_perm_b32 v26, v44, v39, v42
	v_perm_b32 v27, v44, v39, v43
	v_perm_b32 v28, v45, v40, v42
	v_perm_b32 v29, v45, v40, v43
	v_perm_b32 v30, v46, v41, v42
	v_perm_b32 v31, v46, v41, v43
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v35, s[12:15], 0 offen
	v_add_lshl_u32 v0, v34, v38, 1
	v_add_lshl_u32 v1, v174, v37, 1
	v_add_lshl_u32 v2, v34, v37, 1
	v_add_lshl_u32 v3, v174, v33, 1
	v_add_lshl_u32 v4, v34, v33, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 844
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
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 844
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 54044
; TotalNumSgprs: 44
; NumVgprs: 256
; ScratchSize: 844
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 844
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 451
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
