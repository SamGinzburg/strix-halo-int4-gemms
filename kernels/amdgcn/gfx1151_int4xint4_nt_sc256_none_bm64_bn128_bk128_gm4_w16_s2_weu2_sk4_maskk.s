	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 3, v0
	s_load_b64 s[40:41], s[0:1], 0x20
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v10, 0x100, v0
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v17, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, 64, v2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v18, 4, v10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v16, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v32, 6, v17
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v19, 2, v0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s34, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_mov_b32_e32 v31, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v20, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v28, 0
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s17, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 56, v8
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, 0, s15
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s16, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s16
	s_mul_hi_u32 s6, s16, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s16, s16, s6
	s_xor_b32 s6, s2, s18
	s_mul_hi_u32 s16, s14, s16
	s_ashr_i32 s13, s6, 31
	s_mul_i32 s19, s16, s15
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s15, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s16, s15, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s28, s12, 0xff
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s16, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s14, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s28, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s15, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s19, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s14, v1
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s28, s3
.Ltmp19:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[4:5], null, s15, v2, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s19, 7
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v5, s15, v3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s22, s18, 8
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s28, 0xff
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s15, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v6
	.loc	1 164 34 is_stmt 1              ; generate_amdgcn.py:164:34
	s_mul_i32 s12, s33, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	s_cmpk_lt_i32 s28, 0x100
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s17, s34, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s23, -1, 0
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_add_i32 s12, s12, s14
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s14, s17, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v4, s12, v4
	v_add3_u32 v5, v5, v1, s12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v7, 0x80000000, v4, s3
	v_cndmask_b32_e64 v9, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[4:5], v6, s[4:7], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[24:27], 0 offen
	buffer_load_b64 v[35:36], v9, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v9, 0x70, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s22, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s28, 0x200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v11, 1, v9
	v_xor_b32_e32 v8, v8, v11
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v11, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v34, 0, v8
	v_lshlrev_b32_e32 v33, 5, v11
	s_waitcnt vmcnt(2)
	ds_store_b64 v34, v[4:5] offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[6:7], v[35:36] offset1:8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_lshl_b32 s3, s16, 7
	v_lshl_or_b32 v12, s16, 8, v11
	v_or_b32_e32 v3, s3, v3
	s_lshl_b32 s10, s13, 8
	v_or_b32_e32 v30, s3, v2
	s_lshl_b32 s3, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v4, 2, v0
	v_subrev_nc_u32_e32 v3, s3, v3
	v_subrev_nc_u32_e32 v37, s10, v12
	v_sub_nc_u32_e32 v35, s15, v1
	s_add_i32 s11, s14, 0x80
	v_and_or_b32 v6, 0x438, v4, v32
	v_and_b32_e32 v4, 56, v4
	v_mov_b32_e32 v12, 0
	s_max_i32 s0, s1, 1
	s_and_b32 s29, s9, 0xffff
	v_xor_b32_e32 v7, 8, v6
	v_or3_b32 v14, v33, v4, v32
	v_add3_u32 v4, s34, v18, v17
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v13, 24, v6
	v_xor_b32_e32 v15, 32, v6
	v_xor_b32_e32 v20, 40, v6
	v_add_nc_u32_e32 v5, 32, v4
	v_mul_lo_u32 v39, s22, v4
	v_subrev_nc_u32_e32 v4, s3, v30
	v_xor_b32_e32 v21, 48, v6
	v_xor_b32_e32 v22, 56, v6
	v_mul_lo_u32 v31, s22, v5
	v_add_nc_u32_e32 v5, s34, v2
	v_mad_u64_u32 v[2:3], null, s15, v3, s[14:15]
	v_mad_u64_u32 v[3:4], null, s15, v4, s[14:15]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s15, v5, s[14:15]
	v_xor_b32_e32 v23, 8, v14
	v_xor_b32_e32 v24, 16, v14
	v_xor_b32_e32 v25, 24, v14
	v_xor_b32_e32 v26, 32, v14
	v_xor_b32_e32 v27, 40, v14
	v_xor_b32_e32 v28, 48, v14
	v_xor_b32_e32 v29, 56, v14
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshlrev_b32_e32 v36, 1, v16
	v_add3_u32 v40, v2, v1, 0x80
	v_add3_u32 v41, v3, v1, 0x80
	v_add3_u32 v42, v4, v1, 0x80
	v_add_nc_u32_e32 v43, 0, v6
	v_add_nc_u32_e32 v44, 0, v7
	v_add_nc_u32_e32 v45, 0, v8
	v_dual_mov_b32 v1, s12 :: v_dual_lshlrev_b32 v38, 1, v31
	v_mov_b32_e32 v7, s18
	v_dual_mov_b32 v4, s15 :: v_dual_lshlrev_b32 v39, 1, v39
	v_add_nc_u32_e32 v46, 0, v13
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v47, 0, v15
	v_add_nc_u32_e32 v48, 0, v20
	v_add_nc_u32_e32 v49, 0, v21
	v_add_nc_u32_e32 v50, 0, v22
	v_add_nc_u32_e32 v51, 0, v14
	v_add_nc_u32_e32 v52, 0, v23
	v_mov_b32_e32 v23, 0
	v_add_nc_u32_e32 v53, 0, v24
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v54, 0, v25
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v55, 0, v26
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v56, 0, v27
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v57, 0, v28
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v58, 0, v29
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_lshl_b32 s3, s35, 1
	s_lshl_b32 s10, s0, 7
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_add_i32 s0, s11, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v59, s12, v42
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s0, v35
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	buffer_load_b64 v[85:86], v59, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[73:76], v43 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[87:88], v51
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[77:80], v44 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[89:90], v52
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[81:84], v45 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[91:92], v53
	ds_load_b64 v[93:94], v54
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[73:74], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[87:88], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[89:90], v[77:78], v[59:66] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[75:78], v46 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[67:74], v[89:90], v[79:80], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[91:92], v[81:82], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[91:92], v[83:84], v[67:74] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[79:82], v47 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[83:84], v55
	ds_load_b64 v[87:88], v56
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[93:94], v[75:76], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[93:94], v[77:78], v[67:74] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[75:78], v48 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[89:90], v57
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[83:84], v[79:80], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[83:84], v[81:82], v[67:74] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[79:82], v49 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[83:84], v58
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[75:76], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[87:88], v[77:78], v[67:74] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[75:78], v50 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[89:90], v[79:80], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[89:90], v[81:82], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[83:84], v[75:76], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[83:84], v[77:78], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v97, v36, v37
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v87, v39, s[28:31], 0 offen
	buffer_load_u16 v88, v38, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v91, v97, s[36:39], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v78, v62
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v77, v61
	v_cvt_f32_i32_e32 v76, v60
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v88, 16, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v70, v70, v88 :: v_dual_lshlrev_b32 v87, 16, v87
	v_mul_f32_e32 v66, v66, v87
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x4
	buffer_load_u16 v79, v97, s[36:39], 0 offen offset:4
	buffer_load_u16 v80, v97, s[36:39], 0 offen offset:8
	buffer_load_u16 v81, v97, s[36:39], 0 offen offset:12
	buffer_load_u16 v82, v97, s[36:39], 0 offen offset:16
	buffer_load_u16 v89, v97, s[36:39], 0 offen offset:20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v78, v78, v87 :: v_dual_add_nc_u32 v95, s12, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v83, v97, s[36:39], 0 offen offset:24
	buffer_load_u16 v84, v97, s[36:39], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v75, v75, v87 :: v_dual_add_nc_u32 v96, s12, v40
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v59, 0x80000000, v95, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v77, v77, v87 :: v_dual_add_nc_u32 v38, 2, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v61, 0x80000000, v96, s0
	s_clause 0x1
	buffer_load_b64 v[59:60], v59, s[24:27], 0 offen
	buffer_load_b64 v[61:62], v61, s[24:27], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v64, v64, v87 :: v_dual_add_nc_u32 v37, s3, v37
	v_mul_f32_e32 v76, v76, v87
	v_mul_f32_e32 v63, v63, v87
	v_dual_mul_f32 v68, v68, v88 :: v_dual_add_nc_u32 v39, 2, v39
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v67, v67, v88 :: v_dual_lshlrev_b32 v90, 16, v91
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s12, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s10, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v72, v72, v88 :: v_dual_mul_f32 v65, v65, v87
	v_mul_f32_e32 v74, v74, v88
	v_dual_mul_f32 v69, v69, v88 :: v_dual_fmac_f32 v12, v75, v90
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v24, v67, v90
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	ds_store_b64 v34, v[85:86] offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[59:60], v[61:62] offset1:8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v79, 16, v79
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v82, 16, v82
	v_lshlrev_b32_e32 v89, 16, v89
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v30, v77, v80 :: v_dual_lshlrev_b32 v83, 16, v83
	v_dual_fmac_f32 v31, v76, v79 :: v_dual_lshlrev_b32 v84, 16, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v71, v71, v88 :: v_dual_fmac_f32 v26, v65, v83
	v_dual_mul_f32 v73, v73, v88 :: v_dual_fmac_f32 v28, v63, v82
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v29, v78, v81
	v_dual_fmac_f32 v27, v64, v89 :: v_dual_fmac_f32 v22, v69, v80
	v_dual_fmac_f32 v25, v66, v84 :: v_dual_fmac_f32 v20, v71, v82
	v_fmac_f32_e32 v23, v68, v79
	v_dual_fmac_f32 v21, v70, v81 :: v_dual_fmac_f32 v14, v73, v83
	v_fmac_f32_e32 v15, v72, v89
	v_fmac_f32_e32 v13, v74, v84
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v2, 14, v0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s23
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %._crit_edge._crit_edge
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v44, 2, v0
	s_mov_b32 s0, 0
	s_branch .LBB0_6
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr44
.LBB0_6:                                ; %Flow
	v_dual_mov_b32 v4, 0 :: v_dual_lshlrev_b32 v1, 2, v2
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_or3_b32 v66, v32, v33, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v67, 0x438, v19, v32
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s13, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v3, v66, 24, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v32, 0, v67
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v4, v66, 16, 0
	v_xad_u32 v5, v66, 8, 0
	v_add_nc_u32_e32 v6, 0, v66
	ds_load_b64 v[7:8], v3
	ds_load_b64 v[68:69], v4
	ds_load_b64 v[70:71], v5
	ds_load_b64 v[64:65], v6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[3:6], v32 offset0:16 offset1:20
	v_xad_u32 v33, v67, 8, 0
	v_xad_u32 v36, v67, 16, 0
	ds_load_2addr_stride64_b64 v[32:35], v33 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[52:55], v36 offset0:16 offset1:20
	v_xad_u32 v46, v67, 24, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v44, v66, 40, 0
	v_xad_u32 v45, v66, 32, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v43, s19
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v60, v67, 32, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v42, s18 :: v_dual_mov_b32 v39, s15
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v37, s13 :: v_dual_mov_b32 v38, s14
	v_mov_b32_e32 v36, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[56:59], v46 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[72:73], v44
	ds_load_b64 v[74:75], v45
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[60:63], v60 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v76, v66, 56, 0
	v_xad_u32 v77, v66, 48, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[64:65], v[3:4], v[36:43] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v3, v67, 40, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[36:43], v[64:65], v[5:6], v[36:43] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v66, v67, 48, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[70:71], v[32:33], v[44:51] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v32, v67, 56, 0
	ds_load_2addr_stride64_b64 v[3:6], v3 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[36:43], v[70:71], v[34:35], v[36:43] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[64:67], v66 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[68:69], v[52:53], v[44:51] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[52:53], v77
	ds_load_b64 v[70:71], v76
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[32:35], v32 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[36:43], v[68:69], v[54:55], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[56:57], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[58:59], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[74:75], v[60:61], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[74:75], v[62:63], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[72:73], v[3:4], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[72:73], v[5:6], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[52:53], v[64:65], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[52:53], v[66:67], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[70:71], v[32:33], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[70:71], v[34:35], v[36:43] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v45
	v_cvt_f32_i32_e32 v5, v46
	v_cvt_f32_i32_e32 v6, v47
	v_cvt_f32_i32_e32 v7, v48
	v_cvt_f32_i32_e32 v8, v49
	v_cvt_f32_i32_e32 v34, v50
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_mov_b32_e32 v44, v19
.LBB0_8:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v17, v18, v17
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v18, 1, v11
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s34, s22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s9, 0xffff
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v19, 32, v17
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v17, s22, v17
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v16, v16, v18
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v19, s22, v19
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v17, s0, v17, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v16, s1, v16, 1
	s_mov_b32 s11, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v18, s0, v19, 1
	s_mov_b32 s10, 0x7ffffffe
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v16, s2
	s_and_b32 s21, s21, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	v_add_nc_u32_e32 v32, 4, v16
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v45, v17, s[8:11], 0 offen
	buffer_load_u16 v46, v18, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v47, v19, s[20:23], 0 offen
	v_add_nc_u32_e32 v33, 8, v16
	v_add_nc_u32_e32 v19, 12, v16
	v_add_nc_u32_e32 v48, 24, v16
	v_cndmask_b32_e64 v17, 0x80000000, v32, s2
	v_add_nc_u32_e32 v32, 16, v16
	v_cndmask_b32_e64 v18, 0x80000000, v33, s2
	v_add_nc_u32_e32 v33, 20, v16
	v_add_nc_u32_e32 v16, 28, v16
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_clause 0x6
	buffer_load_u16 v49, v17, s[20:23], 0 offen
	buffer_load_u16 v50, v18, s[20:23], 0 offen
	buffer_load_u16 v51, v19, s[20:23], 0 offen
	buffer_load_u16 v52, v32, s[20:23], 0 offen
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	buffer_load_u16 v48, v48, s[20:23], 0 offen
	buffer_load_u16 v53, v16, s[20:23], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v16, v0, 0, 1
	v_and_b32_e32 v17, 0x78, v44
	v_lshlrev_b32_e32 v2, 11, v2
	v_lshrrev_b32_e32 v44, 1, v10
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s34, s34, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v19, 0x840, v16
	v_lshl_or_b32 v11, v11, 3, v17
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, 0
	v_xor_b32_e32 v11, v11, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v2, v2, v44, v11
	v_add_nc_u32_e32 v44, 0, v2
	v_xad_u32 v54, v2, 8, 0
	v_xad_u32 v55, v2, 16, 0
	v_xad_u32 v56, v2, 24, 0
	v_xad_u32 v57, v2, 32, 0
	v_xad_u32 v58, v2, 40, 0
	v_xad_u32 v59, v2, 48, 0
	v_xad_u32 v60, v2, 56, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v2, 16, v45
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v45, 16, v46
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v18, 0x7f, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v47
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v2
	v_mul_f32_e32 v4, v4, v2
	v_mul_f32_e32 v5, v5, v2
	v_mul_f32_e32 v6, v6, v2
	v_mul_f32_e32 v7, v7, v2
	v_mul_f32_e32 v8, v8, v2
	v_mul_f32_e32 v34, v34, v2
	v_dual_mul_f32 v2, v35, v2 :: v_dual_mul_f32 v35, v36, v45
	v_mul_f32_e32 v36, v37, v45
	v_mul_f32_e32 v37, v38, v45
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v16, s34, s33, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v46, 16, v49
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v38, v39, v45 :: v_dual_lshlrev_b32 v47, 16, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v50, 16, v52
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v32, v[16:17]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v49, 16, v51
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v39, v40, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v53
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v40, v41, v45
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v41, v42, v45
	v_mul_f32_e32 v42, v43, v45
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v11, v12
	v_fma_f32 v35, v35, v11, v24
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[18:19], 2, v[17:18]
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v46, v31
	v_fma_f32 v5, v5, v47, v30
	v_fma_f32 v36, v36, v46, v23
	v_fma_f32 v7, v7, v50, v28
	v_fma_f32 v37, v37, v47, v22
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v18, vcc_lo, s40, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v6, v49, v29
	v_fma_f32 v38, v38, v49, v21
	v_fma_f32 v39, v39, v50, v20
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v33, v27
	v_fma_f32 v34, v34, v48, v26
	v_fma_f32 v45, v2, v51, v25
	v_fma_f32 v40, v40, v33, v15
	v_fma_f32 v41, v41, v48, v14
	v_fma_f32 v42, v42, v51, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v12, v3, s2
	v_cndmask_b32_e64 v3, v24, v35, s2
	v_cndmask_b32_e64 v4, v31, v4, s2
	v_cndmask_b32_e64 v6, v30, v5, s2
	v_cndmask_b32_e64 v5, v23, v36, s2
	v_cndmask_b32_e64 v28, v28, v7, s2
	v_cndmask_b32_e64 v7, v22, v37, s2
	v_cndmask_b32_e64 v11, v29, v43, s2
	v_cndmask_b32_e64 v12, v21, v38, s2
	v_cndmask_b32_e64 v29, v20, v39, s2
	v_cndmask_b32_e64 v30, v27, v8, s2
	v_cndmask_b32_e64 v26, v26, v34, s2
	v_cndmask_b32_e64 v33, v25, v45, s2
	v_cndmask_b32_e64 v31, v15, v40, s2
	v_cndmask_b32_e64 v27, v14, v41, s2
	v_cndmask_b32_e64 v34, v13, v42, s2
	ds_store_b64 v44, v[2:3]
	ds_store_b64 v54, v[4:5]
	ds_store_b64 v55, v[6:7]
	ds_store_b64 v56, v[11:12]
	ds_store_b64 v57, v[28:29]
	ds_store_b64 v58, v[30:31]
	ds_store_b64 v59, v[26:27]
	ds_store_b64 v60, v[33:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v21, v[18:19], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v2, 1, v0
	v_bfe_i32 v0, v0, 7, 1
	v_lshlrev_b32_e32 v3, 4, v9
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v0, 0x840, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v0, v0, v2
	v_cndmask_b32_e64 v2, 0x1008, 0, vcc_lo
	v_or3_b32 v0, v0, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v2
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	v_xad_u32 v0, 0x6030, v0, 0
	ds_load_2addr_b64 v[12:15], v1 offset1:16
	ds_load_2addr_b64 v[8:11], v2 offset1:16
	ds_load_2addr_b64 v[4:7], v3 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_9:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v20, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v21
	v_mov_b32_e32 v21, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v12, 4, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v12, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_11:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v12, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v21
	v_mov_b32_e32 v21, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 3, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_13:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v8, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v21
	v_mov_b32_e32 v21, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 12, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v4, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v20, v21, v0
	global_atomic_cmpswap_b32 v4, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v21
	v_mov_b32_e32 v21, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 4, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 20, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, 24, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 28, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 5, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 36, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[12:13], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v13, vcc_lo
	global_load_b32 v19, v[12:13], off
.LBB0_27:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s35, 40, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_29:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 44, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[4:5], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s40, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s41, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_31:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_33:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 52, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_35:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_37:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 60, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_39:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 98
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_vgpr, 98
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5652
; TotalNumSgprs: 44
; NumVgprs: 98
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 98
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     98
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
