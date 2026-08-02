	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s20, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_bfe_u32 v32, v0, 4, 4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v23, v0, 7, 1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or_b32_e32 v24, 0x200, v0
	v_or_b32_e32 v25, 0x600, v0
	v_or_b32_e32 v26, 0xa00, v0
	v_or_b32_e32 v28, 0xe00, v0
	v_or_b32_e32 v29, 0x1200, v0
	v_or_b32_e32 v30, 0x1600, v0
	v_or_b32_e32 v31, 0x1a00, v0
	v_or_b32_e32 v38, 0x1e00, v0
	v_bfe_i32 v19, v0, 3, 1
	v_lshrrev_b32_e32 v21, 1, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v27, 0x7f, v0
	v_add_nc_u32_e32 v22, 0, v0
	v_lshlrev_b32_e32 v20, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v4, v8 :: v_dual_and_b32 v39, 0x88, v23
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s4, s4, 2
	v_mov_b32_e32 v6, v8
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	v_mov_b32_e32 v7, v8
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v16, v8
	v_rcp_iflag_f32_e32 v1, s6
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v9, v8
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v23, 0, v24
	v_add_nc_u32_e32 v24, 0, v25
	v_add_nc_u32_e32 v25, 0, v26
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_readfirstlane_b32 s6, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v26, 0, v28
	v_add_nc_u32_e32 v28, 0, v30
	v_add_nc_u32_e32 v30, 0, v38
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v39, v39, v27
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v10, v8 :: v_dual_add_nc_u32 v27, 0, v29
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v29, 0, v31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_u32_f32 s6, s6
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v31, 0, v39
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s12, s5, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s5, s4
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s12
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s13, s6, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s15, s2
	s_abs_i32 s14, s13
	s_xor_b32 s17, s2, s13
	s_cvt_f32_u32 s6, s14
	s_sub_i32 s7, 0, s14
	s_ashr_i32 s21, s17, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s7
	s_add_i32 s16, s6, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_mul_hi_u32 s16, s15, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s16, s14
	s_add_i32 s17, s16, 1
	s_sub_i32 s15, s15, s18
	s_sub_i32 s18, s15, s14
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s16, s17, s16
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s16, 1
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s14, s17, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s15, s20, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s23, s14, s21
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s14, s20, s15
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s15, s23, s21
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s22, s14, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s13, s15, s13
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s18, s15, 9
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s13
	s_load_b64 s[16:17], s[0:1], 0x20
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s12, s2, s12
	.loc	1 135 23 is_stmt 1              ; generate_amdgcn.py:135:23
	s_lshl_b32 s2, s3, 4
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s3, s12, 4
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s20, 1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s14, s3, s22
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v17, 15, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s15, s7
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[1:2], null, s22, v32, v[17:18]
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	v_or_b32_e32 v18, s18, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s20, 34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[2:3], null, v18, s22, s[2:3]
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v1, s2, s14, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s14, s6
	v_mov_b32_e32 v3, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	buffer_load_u8 v37, v1, s[4:7], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b128 v[33:36], v2, s[12:15], 0 offen
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v31, v37 offset:8192
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_b8 v22, v33
	ds_store_b8_d16_hi v22, v33 offset:1024
	ds_store_b8 v22, v34 offset:2048
	ds_store_b8_d16_hi v22, v34 offset:3072
	ds_store_b8 v22, v35 offset:4096
	ds_store_b8_d16_hi v22, v35 offset:5120
	ds_store_b8 v22, v36 offset:6144
	v_lshrrev_b32_e32 v38, 8, v33
	v_lshrrev_b32_e32 v39, 24, v33
	v_lshrrev_b32_e32 v40, 8, v34
	v_lshrrev_b32_e32 v41, 24, v34
	v_lshrrev_b32_e32 v42, 8, v35
	v_lshrrev_b32_e32 v43, 24, v35
	v_lshrrev_b32_e32 v33, 8, v36
	v_lshrrev_b32_e32 v34, 24, v36
	ds_store_b8 v23, v38
	ds_store_b8 v24, v39
	ds_store_b8 v25, v40
	ds_store_b8 v26, v41
	ds_store_b8 v27, v42
	ds_store_b8 v28, v43
	ds_store_b8 v29, v33
	ds_store_b8_d16_hi v22, v36 offset:7168
	ds_store_b8 v30, v34
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v1, s23, 9, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 0x70, v20
	s_lshl_b32 s1, s21, 9
	v_add_nc_u32_e32 v3, s3, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s1, v1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s0, s22, 15
	v_and_or_b32 v5, 0x88, v19, v2
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s0, 4
	v_mov_b32_e32 v10, v9
.Ltmp13:
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_mad_u64_u32 v[1:2], null, s22, v3, s[2:3]
	v_mul_lo_u32 v2, s22, v4
	v_sub_nc_u32_e64 v3, s0, 2 clamp
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v4, 0, v17
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v6, 0xf0, v21
	v_xor_b32_e32 v7, 8, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_readfirstlane_b32 s0, v3
	v_add3_u32 v32, v1, v17, 16
	v_add3_u32 v33, v2, s2, 16
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v34, 0, v5
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v35, 0, v7
	v_dual_mov_b32 v1, v9 :: v_dual_add_nc_u32 v36, v4, v6
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_add_i32 s0, s0, 1
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u8 v53, v32, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b128 v[37:40], v33, s[12:15], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v45, v36
	ds_load_u8 v46, v36 offset:6656
	ds_load_u8 v47, v36 offset:7680
	ds_load_u8 v48, v36 offset:7168
	ds_load_u8 v49, v36 offset:6144
	ds_load_u8 v50, v36 offset:4608
	ds_load_u8 v51, v36 offset:5632
	ds_load_u8 v52, v36 offset:5120
	ds_load_u8 v54, v36 offset:2560
	ds_load_u8 v55, v36 offset:3584
	ds_load_u8 v56, v36 offset:3072
	ds_load_u8 v57, v36 offset:4096
	ds_load_u8 v58, v36 offset:4352
	ds_load_u8 v59, v36 offset:3840
	ds_load_u8 v60, v36 offset:3328
	ds_load_u8 v61, v36 offset:2816
	ds_load_u8 v62, v36 offset:2048
	ds_load_u8 v63, v36 offset:512
	ds_load_u8 v64, v36 offset:1536
	ds_load_u8 v65, v36 offset:1024
	ds_load_u8 v66, v36 offset:2304
	ds_load_u8 v67, v36 offset:1792
	ds_load_u8 v68, v36 offset:1280
	ds_load_u8 v69, v36 offset:768
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[41:42], v34 offset:8192
	ds_load_b64 v[43:44], v35 offset:8192
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v70, v36 offset:256
	ds_load_u8 v71, v36 offset:7936
	ds_load_u8 v72, v36 offset:7424
	ds_load_u8 v73, v36 offset:6912
	ds_load_u8 v74, v36 offset:6400
	ds_load_u8 v75, v36 offset:5888
	ds_load_u8 v76, v36 offset:5376
	ds_load_u8 v77, v36 offset:4864
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v49, v49, v46, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v45, v63, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v65, v64, 0xc0c0004
	v_perm_b32 v57, v57, v50, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v50, v66, v61, 0xc0c0004
	v_perm_b32 v52, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v60, v68, v67, 0xc0c0004
	v_lshl_or_b32 v46, v55, 16, v54
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v59, v70, v69, 0xc0c0004
	v_lshl_or_b32 v45, v56, 16, v45
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v62, v72, v71, 0xc0c0004
	v_lshl_or_b32 v48, v47, 16, v49
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v61, v74, v73, 0xc0c0004
	v_lshl_or_b32 v50, v52, 16, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v77, 0xc0c0004
	v_lshl_or_b32 v49, v60, 16, v59
	v_lshl_or_b32 v47, v51, 16, v57
	v_lshl_or_b32 v52, v62, 16, v61
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v63, 16, v58
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[41:42], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v32, 16, v32
	v_add_nc_u32_e32 v33, 16, v33
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s0, s0, -1
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[43:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s0, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v31, v53 offset:8192
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_b8 v22, v37
	ds_store_b8_d16_hi v22, v37 offset:1024
	ds_store_b8 v22, v38 offset:2048
	ds_store_b8_d16_hi v22, v38 offset:3072
	ds_store_b8 v22, v39 offset:4096
	ds_store_b8_d16_hi v22, v39 offset:5120
	ds_store_b8 v22, v40 offset:6144
	v_lshrrev_b32_e32 v41, 8, v37
	v_lshrrev_b32_e32 v42, 24, v37
	v_lshrrev_b32_e32 v43, 8, v38
	v_lshrrev_b32_e32 v44, 24, v38
	v_lshrrev_b32_e32 v45, 8, v39
	v_lshrrev_b32_e32 v46, 24, v39
	v_lshrrev_b32_e32 v37, 8, v40
	v_lshrrev_b32_e32 v38, 24, v40
	ds_store_b8 v23, v41
	ds_store_b8 v24, v42
	ds_store_b8 v25, v43
	ds_store_b8 v26, v44
	ds_store_b8 v27, v45
	ds_store_b8 v28, v46
	ds_store_b8 v29, v37
	ds_store_b8_d16_hi v22, v40 offset:7168
	ds_store_b8 v30, v38
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v21, 0xf0, v21
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v20, 0x70, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add3_u32 v21, 0, v21, v17
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v19, 0x88, v19, v20
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v22, v21 offset:2560
	ds_load_u8 v23, v21 offset:2048
	ds_load_u8 v24, v21 offset:3584
	ds_load_u8 v25, v21 offset:3072
	ds_load_u8 v26, v21 offset:512
	ds_load_u8 v27, v21
	ds_load_u8 v28, v21 offset:1536
	ds_load_u8 v29, v21 offset:1024
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v30, v19, 8, 0
	v_add_nc_u32_e32 v19, 0, v19
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v31, v21 offset:6656
	ds_load_u8 v32, v21 offset:6144
	ds_load_u8 v33, v21 offset:3840
	ds_load_u8 v34, v21 offset:3328
	ds_load_u8 v35, v21 offset:2816
	ds_load_u8 v36, v21 offset:2304
	ds_load_u8 v37, v21 offset:1792
	ds_load_u8 v38, v21 offset:1280
	ds_load_u8 v39, v21 offset:768
	ds_load_u8 v40, v21 offset:256
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[19:20], v19 offset:8192
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v23, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v24, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v25, v29, v28, 0xc0c0004
	ds_load_u8 v26, v21 offset:4608
	ds_load_u8 v27, v21 offset:4096
	ds_load_u8 v28, v21 offset:5632
	ds_load_u8 v29, v21 offset:5120
	ds_load_u8 v41, v21 offset:7680
	ds_load_u8 v42, v21 offset:7168
	ds_load_u8 v43, v21 offset:7936
	ds_load_u8 v44, v21 offset:7424
	ds_load_u8 v45, v21 offset:6912
	ds_load_u8 v46, v21 offset:6400
	ds_load_u8 v47, v21 offset:5888
	ds_load_u8 v48, v21 offset:5376
	ds_load_u8 v49, v21 offset:4864
	ds_load_u8 v50, v21 offset:4352
	v_lshl_or_b32 v22, v23, 16, v22
	v_lshl_or_b32 v21, v25, 16, v24
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[23:24], v30 offset:8192
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v25, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v40, v39, 0xc0c0004
	v_perm_b32 v31, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v21, v36, v35, 0xc0c0004
	v_perm_b32 v22, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v32, v42, v41, 0xc0c0004
	v_perm_b32 v27, v27, v26, 0xc0c0004
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v31, 16, v30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v29, v46, v45, 0xc0c0004
	v_perm_b32 v30, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v31, v50, v49, 0xc0c0004
	v_perm_b32 v33, v48, v47, 0xc0c0004
	v_lshl_or_b32 v26, v32, 16, v25
	v_lshl_or_b32 v25, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v30, 16, v29
	v_lshl_or_b32 v19, v33, 16, v31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[23:24], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v19, s3, v17
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s8
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v36, 0x5410 :: v_dual_lshlrev_b32 v19, 1, v19
	v_dual_mov_b32 v37, 0x7632 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v21, v9
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v22, v10
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v18, v18, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v23, v11
	v_cvt_f32_i32_e32 v25, v13
	v_cvt_f32_i32_e32 v29, v1
	v_cvt_f32_i32_e32 v30, v2
	v_cvt_f32_i32_e32 v24, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v31, v4
	v_cvt_f32_i32_e32 v32, v5
	v_cvt_f32_i32_e32 v33, v6
	v_cvt_f32_i32_e32 v34, v7
	v_cvt_f32_i32_e32 v35, v8
	v_cvt_f32_i32_e32 v26, v14
	v_cvt_f32_i32_e32 v27, v15
	v_cvt_f32_i32_e32 v28, v16
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v17, s19, v17
	s_mul_i32 s3, s3, s19
	s_mov_b32 s15, 0x76543210
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v17, s3, s18, v17
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s18, s22
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v20, 0x1f0, v0
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v9, 1, v0
	v_lshlrev_b32_e32 v10, 5, v0
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v18
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v18, v3
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v11, v20, 2, 0
	v_and_b32_e32 v9, 28, v9
	v_and_b32_e32 v10, 32, v10
	v_lshl_add_u32 v13, v20, 1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, v11, v10, v9
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v13
	ds_load_b128 v[1:4], v13 offset:16
	ds_load_b128 v[5:8], v13 offset:1024
	ds_load_b128 v[13:16], v13 offset:1040
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v10, v10, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v10, v10, v22 :: v_dual_mul_f32 v9, v9, v19
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v5, v5, v19 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v12, v12, v19
	v_mul_f32_e32 v1, v1, v19
	v_dual_mul_f32 v2, v2, v19 :: v_dual_mul_f32 v9, v9, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v7, v7, v19 :: v_dual_mul_f32 v12, v12, v24
	v_mul_f32_e32 v3, v3, v19
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v13, v13, v19 :: v_dual_mul_f32 v2, v2, v26
	v_mul_f32_e32 v11, v11, v19
	v_dual_mul_f32 v4, v4, v19 :: v_dual_mul_f32 v1, v1, v25
	v_dual_mul_f32 v6, v6, v19 :: v_dual_mul_f32 v5, v5, v29
	v_dual_mul_f32 v8, v8, v19 :: v_dual_mul_f32 v7, v7, v18
	v_dual_mul_f32 v14, v14, v19 :: v_dual_mul_f32 v13, v13, v32
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_bfe_u32 v18, v9, 16, 1
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v3, v3, v27
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v20, 1, v20
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v15, v15, v19 :: v_dual_mul_f32 v4, v4, v28
	v_mul_f32_e32 v16, v16, v19
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v11, v11, v23 :: v_dual_mul_f32 v6, v6, v30
	v_mul_f32_e32 v14, v14, v33
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_bfe_u32 v19, v10, 16, 1
	v_bfe_u32 v22, v1, 16, 1
	v_bfe_u32 v23, v2, 16, 1
	v_bfe_u32 v26, v5, 16, 1
	v_add3_u32 v9, v9, v18, 0x7fff
	v_bfe_u32 v24, v3, 16, 1
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v17, v17, v20, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v10, v10
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s4, v2, v2
	v_bfe_u32 v25, v4, 16, 1
	v_cmp_o_f32_e64 s7, v5, v5
	v_bfe_u32 v27, v6, 16, 1
	v_bfe_u32 v28, v7, 16, 1
	v_bfe_u32 v30, v13, 16, 1
	v_add3_u32 v10, v10, v19, 0x7fff
	v_add3_u32 v1, v1, v22, 0x7fff
	v_add3_u32 v2, v2, v23, 0x7fff
	v_add3_u32 v5, v5, v26, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v8, v8, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_bfe_u32 v31, v14, 16, 1
	v_cmp_o_f32_e64 s5, v3, v3
	v_add3_u32 v3, v3, v24, 0x7fff
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v15, v15, v34
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v11, v11
	v_cmp_o_f32_e64 s2, v12, v12
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s11, v13, v13
	v_cmp_o_f32_e64 s12, v14, v14
	v_add3_u32 v11, v11, v20, 0x7fff
	v_add3_u32 v12, v12, v21, 0x7fff
	v_add3_u32 v4, v4, v25, 0x7fff
	v_add3_u32 v6, v6, v27, 0x7fff
	v_add3_u32 v7, v7, v28, 0x7fff
	v_add3_u32 v13, v13, v30, 0x7fff
	v_add3_u32 v14, v14, v31, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s4
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v16, v16, v35
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s7
	v_cndmask_b32_e32 v5, 0x1054, v36, vcc_lo
	v_bfe_u32 v29, v8, 16, 1
	v_bfe_u32 v32, v15, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s9
	v_cndmask_b32_e32 v4, v1, v9, vcc_lo
	v_cndmask_b16 v7.l, 0x7fff, v13.h, s11
	v_cndmask_b16 v7.h, 0x7fff, v14.h, s12
	v_cndmask_b32_e32 v6, 0x3276, v37, vcc_lo
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e32 v1, v9, v1, vcc_lo
	v_bfe_u32 v33, v16, 16, 1
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s13, v15, v15
	v_cmp_o_f32_e64 s14, v16, v16
	v_add3_u32 v8, v8, v29, 0x7fff
	v_add3_u32 v15, v15, v32, 0x7fff
	v_add3_u32 v16, v16, v33, 0x7fff
	v_cndmask_b32_e32 v9, v2, v10, vcc_lo
	v_dual_cndmask_b32 v2, v10, v2 :: v_dual_and_b32 v5, 0x540054, v5
	v_cndmask_b32_e32 v10, v7, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_lshl_or_b32 v6, v6, 8, v6
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s10
	v_cndmask_b16 v8.l, 0x7fff, v15.h, s13
	v_cndmask_b16 v8.h, 0x7fff, v16.h, s14
	v_lshl_or_b32 v5, v5, 4, v5
	v_and_b32_e32 v6, 0x760076, v6
	v_permlanex16_b32 v1, v1, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, v8, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v8, vcc_lo
	v_lshl_or_b32 v6, v6, 4, v6
	v_and_b32_e32 v8, 0x5040504, v5
	v_permlanex16_b32 v5, v2, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v12, v0, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 0x7060706, v6
	v_permlanex16_b32 v6, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v4, v8
	v_perm_b32 v2, v5, v9, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v1, v1, v4, v11
	v_perm_b32 v3, v5, v9, v11
	v_perm_b32 v4, v6, v10, v8
	v_perm_b32 v5, v6, v10, v11
	v_perm_b32 v6, v12, v7, v8
	v_perm_b32 v7, v12, v7, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v17, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v17, s[16:19], 0 offen offset:512
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 78
		.amdhsa_next_free_sgpr 24
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
		.amdhsa_inst_pref_size 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 78
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 24
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4028
; TotalNumSgprs: 26
; NumVgprs: 78
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 78
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     26
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     78
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
