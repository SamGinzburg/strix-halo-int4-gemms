	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v15, 4, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v33, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v32, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v34, 16, v15
	v_mov_b32_e32 v15, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_mov_b32 s12, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v1, 0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s8, s5
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s4, s5, s4
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v3, s8
	v_readfirstlane_b32 s8, v3
	v_mov_b32_e32 v3, 0
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s9
	s_abs_i32 s9, s2
	s_add_i32 s8, s8, s4
	s_mul_hi_u32 s4, s9, s8
	s_xor_b32 s8, s2, s6
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s14, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s15, s4, s14
	s_sub_i32 s22, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s22, s6
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s13, 0xff
.Ltmp13:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s4, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s2, 0x100
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v2, 7, v0
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 155 39 is_stmt 1              ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s16, s14, 8
	s_add_i32 s31, s3, 64
	v_and_b32_e32 v7, 0x438, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v15, s3, v3
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s13, s13, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v16, s3, v1
	s_lshl_b32 s3, s15, 7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v18, s28, v34, v33
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s2, s0
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v17, 64, v16
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v16
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v16, 0xe0, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s29, s2, 8
	v_cmp_gt_i32_e64 s0, 0x80, v15
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v37, s13, v3
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v38, 2, v3
	v_lshl_or_b32 v16, s15, 8, v16
	s_mov_b32 s15, s12
	v_mov_b32_e32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v3, s28, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v39, s16, v16
	s_mov_b32 s16, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v4, 0x70, v32
	v_lshlrev_b32_e32 v2, 4, v2
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v19, 32, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s14, s14, 7
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v35, 0, v33, v4
	v_add_nc_u32_e32 v4, 64, v15
	v_mul_lo_u32 v15, s23, v15
	v_lshl_or_b32 v7, v33, 6, v7
	v_sub_nc_u32_e32 v36, s13, v1
	v_cmp_gt_i32_e64 s1, 0x80, v17
	v_cmp_gt_i32_e64 s2, 0x80, v4
	v_mul_lo_u32 v4, s23, v4
	v_mul_lo_u32 v17, s29, v19
	v_mul_lo_u32 v18, s29, v18
	v_xor_b32_e32 v8, 8, v7
	v_xor_b32_e32 v9, 16, v7
	v_xor_b32_e32 v10, 24, v7
	v_xor_b32_e32 v11, 32, v7
	v_xor_b32_e32 v12, 40, v7
	v_add3_u32 v4, v4, s3, v2
	v_add3_u32 v2, v15, s3, v2
	v_xor_b32_e32 v13, 48, v7
	v_xor_b32_e32 v14, 56, v7
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v47, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[29:30], null, s13, v3, v[1:2]
	v_subrev_nc_u32_e32 v42, s14, v4
	v_subrev_nc_u32_e32 v44, s14, v2
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshlrev_b32_e32 v5, 3, v0
	v_and_b32_e32 v6, 56, v32
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v48, 0, v8
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v40, 1, v17
	v_mov_b32_e32 v63, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v5, v5, v6
	v_lshlrev_b32_e32 v6, 4, v0
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v41, 1, v18
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v49, 0, v9
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v45, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v46, 0, v6
	v_dual_mov_b32 v1, s12 :: v_dual_add_nc_u32 v50, 0, v10
	v_mov_b32_e32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v51, 0, v11
	v_add_nc_u32_e32 v52, 0, v12
	v_add_nc_u32_e32 v53, 0, v13
	v_dual_mov_b32 v2, s13 :: v_dual_add_nc_u32 v59, 0, v14
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s30, s23, 1
	s_lshl_b32 s33, s23, 7
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s12, s6
	s_mov_b32 s13, s7
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s31, 64
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v15, s31, v29
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v37
	v_cmp_lt_i32_e64 s4, s4, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s29, s29, -1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v9, 64, v15
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v10, 0x80000000, v44, s3
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s31, v36
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v13, 0x80000000, v9, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s31, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s31, 0x80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v10, s[12:15], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[13:14], v13, s[24:27], 0 offen
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	s_barrier
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s29, 0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v16, 0x80000000, v42, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[30:31], v15, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v46, v[9:12]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v45, v[13:14] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[25:28], v16, s[12:15], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v35 offset:640
	ds_load_u8 v10, v35 offset:896
	ds_load_u8 v11, v35 offset:768
	ds_load_u8 v12, v35 offset:512
	ds_load_u8 v13, v35 offset:128
	ds_load_u8 v14, v35 offset:384
	ds_load_u8 v15, v35 offset:256
	ds_load_u8 v16, v35
	ds_load_u8 v17, v35 offset:1664
	ds_load_u8 v18, v35 offset:1920
	ds_load_u8 v19, v35 offset:1792
	ds_load_u8 v20, v35 offset:1536
	ds_load_u8 v21, v35 offset:1152
	ds_load_u8 v22, v35 offset:1280
	ds_load_u8 v23, v35 offset:1024
	ds_load_u8 v24, v35 offset:1408
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[70:73], v47 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[74:77], v48 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[78:81], v49 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v86, v35 offset:2688
	ds_load_u8 v87, v35 offset:2944
	ds_load_u8 v88, v35 offset:2816
	ds_load_u8 v89, v35 offset:2560
	ds_load_u8 v90, v35 offset:2176
	ds_load_u8 v91, v35 offset:2432
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v11, v16, v13, 0xc0c0004
	v_perm_b32 v12, v15, v14, 0xc0c0004
	ds_load_u8 v92, v35 offset:2304
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v14, v19, v18, 0xc0c0004
	v_lshl_or_b32 v83, v10, 16, v9
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v20, v17, 0xc0c0004
	v_lshl_or_b32 v82, v12, 16, v11
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v23, v21, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v22, v24, 0xc0c0004
	v_lshl_or_b32 v85, v14, 16, v13
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[82:83], v[70:71], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v84, v16, 16, v15
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v70, v89, v86, 0xc0c0004
	ds_load_u8 v86, v35 offset:3328
	ds_load_u8 v87, v35 offset:3072
	ds_load_u8 v93, v35 offset:2048
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[74:75], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v73, v92, v91, 0xc0c0004
	v_lshl_or_b32 v75, v71, 16, v70
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[76:77], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v76, v35 offset:3712
	ds_load_u8 v77, v35 offset:3968
	ds_load_u8 v82, v35 offset:3840
	ds_load_u8 v83, v35 offset:3584
	ds_load_u8 v84, v35 offset:3200
	ds_load_u8 v85, v35 offset:3456
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v72
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[70:73], v50 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[80:81], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v80, v35 offset:4736
	ds_load_u8 v81, v35 offset:4992
	ds_load_u8 v88, v35 offset:4864
	ds_load_u8 v89, v35 offset:4608
	ds_load_u8 v90, v35 offset:4224
	ds_load_u8 v91, v35 offset:4480
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[78:79], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v74, v83, v76, 0xc0c0004
	v_perm_b32 v75, v82, v77, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v76, v87, v84, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v77, v86, v85, 0xc0c0004
	ds_load_u8 v83, v35 offset:4352
	v_lshl_or_b32 v79, v75, 16, v74
	v_lshl_or_b32 v78, v77, 16, v76
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[74:77], v51 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[72:73], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v71, v88, v81, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v89, v80, 0xc0c0004
	ds_load_u8 v80, v35 offset:5376
	ds_load_u8 v88, v35 offset:6912
	ds_load_u8 v81, v35 offset:5120
	ds_load_u8 v82, v35 offset:4096
	ds_load_u8 v78, v35 offset:5760
	ds_load_u8 v79, v35 offset:6016
	ds_load_u8 v84, v35 offset:5888
	ds_load_u8 v85, v35 offset:5632
	ds_load_u8 v86, v35 offset:5248
	ds_load_u8 v87, v35 offset:5504
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v73, v83, v91, 0xc0c0004
	ds_load_u8 v83, v35 offset:7040
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v72, v82, v90, 0xc0c0004
	ds_load_u8 v82, v35 offset:6784
	v_lshl_or_b32 v70, v73, 16, v72
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[70:71], v[76:77], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[70:73], v52 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v89, v35 offset:6656
	ds_load_u8 v90, v35 offset:6272
	ds_load_u8 v91, v35 offset:6528
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v74, v85, v78, 0xc0c0004
	v_perm_b32 v75, v84, v79, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v76, v81, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v77, v80, v87, 0xc0c0004
	ds_load_u8 v79, v35 offset:6144
	ds_load_u8 v81, v35 offset:7808
	ds_load_u8 v80, v35 offset:8064
	ds_load_u8 v78, v35 offset:6400
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v77, 16, v76
	ds_load_u8 v84, v35 offset:7936
	ds_load_u8 v85, v35 offset:7680
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[72:73], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v86, v35 offset:7296
	ds_load_u8 v87, v35 offset:7424
	ds_load_u8 v92, v35 offset:7168
	ds_load_u8 v93, v35 offset:7552
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[70:73], v53 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[74:77], v59 offset0:16 offset1:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v45, v[30:31] offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v30, v89, v82, 0xc0c0004
	v_perm_b32 v31, v88, v83, 0xc0c0004
	v_perm_b32 v79, v79, v90, 0xc0c0004
	v_perm_b32 v78, v78, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v31, v31, 16, v30
	v_perm_b32 v80, v84, v80, 0xc0c0004
	v_perm_b32 v81, v85, v81, 0xc0c0004
	v_lshl_or_b32 v30, v78, 16, v79
	v_perm_b32 v83, v92, v86, 0xc0c0004
	v_perm_b32 v84, v87, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[72:73], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[25:28]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v26, v80, 16, v81
	v_lshl_or_b32 v25, v84, 16, v83
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v80, v35 offset:1792
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[76:77], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v30, v35 offset:640
	ds_load_u8 v31, v35 offset:512
	ds_load_u8 v70, v35 offset:768
	ds_load_u8 v71, v35 offset:896
	ds_load_u8 v72, v35 offset:128
	ds_load_u8 v73, v35
	ds_load_u8 v74, v35 offset:256
	ds_load_u8 v75, v35 offset:384
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v47 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v76, v35 offset:1664
	ds_load_u8 v77, v35 offset:1920
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v31, v70, v71, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v71, v73, v72, 0xc0c0004
	ds_load_u8 v72, v35 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v75, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	ds_load_u8 v74, v35 offset:1024
	v_lshl_or_b32 v30, v73, 16, v71
	ds_load_u8 v71, v35 offset:1408
	ds_load_u8 v73, v35 offset:1280
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v48 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v75, v35 offset:2688
	ds_load_u8 v81, v35 offset:2944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v72, v74, v72, 0xc0c0004
	ds_load_u8 v74, v35 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v73, v71, 0xc0c0004
	ds_load_u8 v73, v35 offset:2048
	ds_load_u8 v70, v35 offset:1536
	v_perm_b32 v31, v80, v77, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v73, v73, v74, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v70, v76, 0xc0c0004
	ds_load_u8 v70, v35 offset:2816
	ds_load_u8 v74, v35 offset:3200
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v71, 16, v72
	ds_load_u8 v71, v35 offset:2432
	ds_load_u8 v72, v35 offset:2304
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v49 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v77, v35 offset:3712
	ds_load_u8 v80, v35 offset:3968
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v35 offset:3072
	ds_load_u8 v76, v35 offset:2560
	v_perm_b32 v31, v70, v81, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v72, v74, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v76, v75, 0xc0c0004
	ds_load_u8 v75, v35 offset:3840
	ds_load_u8 v74, v35 offset:4224
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v71, 16, v73
	ds_load_u8 v71, v35 offset:3456
	ds_load_u8 v73, v35 offset:3328
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v50 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v76, v35 offset:4736
	ds_load_u8 v81, v35 offset:4992
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v71, v73, v71, 0xc0c0004
	ds_load_u8 v73, v35 offset:4096
	ds_load_u8 v70, v35 offset:3584
	v_perm_b32 v31, v75, v80, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v73, v73, v74, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v70, v77, 0xc0c0004
	ds_load_u8 v70, v35 offset:4864
	ds_load_u8 v74, v35 offset:5248
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v71, 16, v72
	ds_load_u8 v71, v35 offset:4480
	ds_load_u8 v72, v35 offset:4352
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v51 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v77, v35 offset:5760
	ds_load_u8 v80, v35 offset:6016
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v35 offset:5120
	ds_load_u8 v75, v35 offset:4608
	v_perm_b32 v31, v70, v81, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v72, v74, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v75, v76, 0xc0c0004
	ds_load_u8 v75, v35 offset:5888
	ds_load_u8 v74, v35 offset:6272
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v71, 16, v73
	ds_load_u8 v71, v35 offset:5504
	ds_load_u8 v73, v35 offset:5376
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v52 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v76, v35 offset:6784
	ds_load_u8 v81, v35 offset:7040
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v71, v73, v71, 0xc0c0004
	ds_load_u8 v73, v35 offset:6528
	ds_load_u8 v70, v35 offset:5632
	v_perm_b32 v31, v75, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v70, v77, 0xc0c0004
	ds_load_u8 v70, v35 offset:6912
	ds_load_u8 v77, v35 offset:7552
	ds_load_u8 v75, v35 offset:6656
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v71, 16, v72
	ds_load_u8 v71, v35 offset:6400
	ds_load_u8 v72, v35 offset:6144
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v35 offset:7808
	ds_load_u8 v26, v35 offset:8064
	ds_load_u8 v27, v35 offset:7936
	ds_load_u8 v28, v35 offset:7680
	ds_load_u8 v30, v35 offset:7296
	ds_load_u8 v31, v35 offset:7424
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v70, v81, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v75, v75, v76, 0xc0c0004
	ds_load_u8 v76, v35 offset:7168
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v71, v71, v73, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v72, v72, v74, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v80, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v74, v28, v25, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[25:28], v53 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v31, v77, 0xc0c0004
	v_lshl_or_b32 v31, v70, 16, v75
	v_lshl_or_b32 v75, v80, 16, v74
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v76, v30, 0xc0c0004
	v_lshl_or_b32 v30, v71, 16, v72
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[70:73], v59 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v74, v77, 16, v76
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[25:26], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[27:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[72:73], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v82, v38, v39
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v78, v41, s[16:19], 0 offen
	buffer_load_u16 v79, v40, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v85, v82, s[8:11], 0 offen
	buffer_load_u16 v86, v82, s[8:11], 0 offen offset:4
	buffer_load_u16 v87, v82, s[8:11], 0 offen offset:8
	buffer_load_u16 v88, v82, s[8:11], 0 offen offset:12
	buffer_load_u16 v89, v82, s[8:11], 0 offen offset:16
	buffer_load_u16 v90, v82, s[8:11], 0 offen offset:20
	buffer_load_u16 v91, v82, s[8:11], 0 offen offset:24
	buffer_load_u16 v82, v82, s[8:11], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v72, 16, v91
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v25, 16, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v23, v23, v25 :: v_dual_add_nc_u32 v40, 2, v40
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v23, v72 :: v_dual_add_nc_u32 v39, s30, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v18, v25
	v_dual_mul_f32 v17, v17, v25 :: v_dual_lshlrev_b32 v28, 16, v86
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v26, 16, v79
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v19, v25 :: v_dual_add_nc_u32 v42, s33, v42
	v_dual_mul_f32 v21, v21, v25 :: v_dual_add_nc_u32 v44, s33, v44
	v_dual_mul_f32 v20, v20, v25 :: v_dual_lshlrev_b32 v31, 16, v88
	v_dual_mul_f32 v22, v22, v25 :: v_dual_lshlrev_b32 v71, 16, v90
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v24, v24, v25 :: v_dual_lshlrev_b32 v73, 16, v82
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v18, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v12, v12, v26 :: v_dual_add_nc_u32 v41, 2, v41
	v_dual_mul_f32 v14, v14, v26 :: v_dual_lshlrev_b32 v27, 16, v85
	v_dual_mul_f32 v9, v9, v26 :: v_dual_lshlrev_b32 v30, 16, v87
	v_dual_mul_f32 v11, v11, v26 :: v_dual_lshlrev_b32 v70, 16, v89
	v_mul_f32_e32 v10, v10, v26
	v_mul_f32_e32 v13, v13, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v15, v15, v26 :: v_dual_fmac_f32 v62, v9, v27
	v_dual_mul_f32 v16, v16, v26 :: v_dual_fmac_f32 v65, v22, v71
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v17, v27 :: v_dual_fmac_f32 v68, v19, v30
	v_dual_fmac_f32 v67, v20, v31 :: v_dual_fmac_f32 v66, v21, v70
	v_fmac_f32_e32 v63, v24, v73
	v_dual_fmac_f32 v61, v10, v28 :: v_dual_fmac_f32 v60, v11, v30
	v_dual_fmac_f32 v58, v12, v31 :: v_dual_fmac_f32 v57, v13, v70
	v_dual_fmac_f32 v56, v14, v71 :: v_dual_fmac_f32 v55, v15, v72
	v_fmac_f32_e32 v54, v16, v73
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v1, v43, v43 :: v_dual_max_f32 v2, v69, v69
	v_dual_max_f32 v9, v62, v62 :: v_dual_max_f32 v10, v61, v61
	v_max_f32_e32 v11, v60, v60
	v_dual_max_f32 v3, v68, v68 :: v_dual_max_f32 v4, v67, v67
	v_dual_max_f32 v5, v66, v66 :: v_dual_max_f32 v6, v65, v65
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v7, v64, v64 :: v_dual_max_f32 v8, v63, v63
	v_dual_max_f32 v17, 0, v9 :: v_dual_max_f32 v12, v55, v55
	v_dual_max_f32 v18, 0, v10 :: v_dual_max_f32 v19, 0, v11
	v_dual_max_f32 v10, v57, v57 :: v_dual_max_f32 v11, v56, v56
	v_max_f32_e32 v9, v58, v58
	v_dual_max_f32 v13, v54, v54 :: v_dual_mul_f32 v16, v1, v1
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v21, 0, v10 :: v_dual_max_f32 v24, 0, v13
	v_max_f32_e32 v22, 0, v11
	v_dual_max_f32 v20, 0, v9 :: v_dual_max_f32 v23, 0, v12
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v14, v3, v3 :: v_dual_mul_f32 v15, v2, v2
	v_dual_mul_f32 v10, v7, v7 :: v_dual_mul_f32 v11, v4, v4
	v_dual_mul_f32 v12, v6, v6 :: v_dual_mul_f32 v13, v5, v5
	v_dual_mul_f32 v6, v19, v19 :: v_dual_mul_f32 v9, v8, v8
	v_dual_mul_f32 v8, v17, v17 :: v_dual_mul_f32 v7, v18, v18
	v_dual_mul_f32 v4, v21, v21 :: v_dual_mul_f32 v5, v20, v20
	v_dual_mul_f32 v2, v23, v23 :: v_dual_mul_f32 v3, v22, v22
	v_mul_f32_e32 v1, v24, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v18.h, 0
	v_mov_b16_e32 v20.l, v16.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v18.l, v15.h
	v_mov_b16_e32 v23.l, v14.h
	v_mov_b16_e32 v20.h, v18.h
	v_mov_b16_e32 v23.h, v18.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v22, 1, v18
	v_mov_b16_e32 v18.l, v11.h
	v_and_b32_e32 v20, 1, v20
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v17, v34, v33
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s0, s22, 7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v15, v22, 0x7fff
	v_mov_b16_e32 v22.l, v13.h
	v_add3_u32 v16, v16, v20, 0x7fff
	v_and_b32_e32 v20, 1, v23
	v_mov_b16_e32 v22.h, v18.h
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v21, 32, v17
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s28, s28, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v16.h
	v_and_b32_e32 v16, 1, v18
	v_mov_b16_e32 v18.l, v12.h
	v_add3_u32 v14, v14, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v10.h
	v_add3_u32 v11, v11, v16, 0x7fff
	v_and_b32_e32 v16, 1, v18
	v_mov_b16_e32 v18.l, v9.h
	v_add3_u32 v13, v13, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v11.l, v14.h
	v_add3_u32 v12, v12, v16, 0x7fff
	v_mov_b16_e32 v14.l, v8.h
	v_mov_b16_e32 v12.l, v13.h
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v13, 1, v18
	v_mov_b16_e32 v14.h, v18.h
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v16.l, v6.h
	v_mov_b16_e32 v16.h, v18.h
	v_add3_u32 v10, v10, v20, 0x7fff
	v_add3_u32 v9, v9, v13, 0x7fff
	v_and_b32_e32 v13, 1, v14
	v_and_b32_e32 v14, 1, v18
	v_mov_b16_e32 v18.l, v5.h
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v9.l, v10.h
	v_add3_u32 v8, v8, v13, 0x7fff
	v_mov_b16_e32 v13.l, v4.h
	v_and_b32_e32 v10, 1, v18
	v_add3_u32 v6, v6, v16, 0x7fff
	v_mov_b16_e32 v13.h, v18.h
	v_mov_b16_e32 v18.l, v3.h
	v_add3_u32 v7, v7, v14, 0x7fff
	v_add3_u32 v5, v5, v10, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v13
	v_and_b32_e32 v8, 1, v18
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v10.h, v18.h
	v_mov_b16_e32 v18.l, v1.h
	v_add3_u32 v4, v4, v6, 0x7fff
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_and_b32_e32 v6, 1, v10
	v_and_b32_e32 v10, 1, v18
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_mov_b16_e32 v3.l, v4.h
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_add3_u32 v2, v2, v6, 0x7fff
	v_add3_u32 v1, v1, v10, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	v_dual_cndmask_b32 v6, v12, v15 :: v_dual_and_b32 v19, 0x78, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v1.l, v2.h
	v_lshl_or_b32 v2, v8, 8, v8
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e32 v4, v15, v12, vcc_lo
	v_cndmask_b32_e32 v10, v3, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v3, v7, v3 :: v_dual_and_b32 v2, 0x760076, v2
	v_lshl_or_b32 v0, v0, 4, v0
	v_dual_cndmask_b32 v8, v9, v11 :: v_dual_cndmask_b32 v9, v11, v9
	v_cndmask_b32_e32 v7, v1, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	v_cndmask_b32_e32 v1, v5, v1, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v17, s23, v17
	v_mul_lo_u32 v21, s23, v21
	v_add3_u32 v19, s28, s0, v19
	s_mov_b32 s0, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 0x5040504, v0
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v2
	v_permlanex16_b32 v5, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v6, v11
	v_perm_b32 v1, v4, v6, v12
	v_perm_b32 v2, v5, v8, v11
	v_perm_b32 v3, v5, v8, v12
	v_add_lshl_u32 v8, v19, v17, 1
	v_perm_b32 v4, v9, v10, v11
	v_perm_b32 v5, v9, v10, v12
	v_perm_b32 v6, v13, v7, v11
	v_perm_b32 v7, v13, v7, v12
	v_add_lshl_u32 v9, v19, v21, 1
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v9, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 34
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5320
; TotalNumSgprs: 36
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 94
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
