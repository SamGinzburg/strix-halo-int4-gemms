	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v76, 2, v0
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_and_b32_e32 v66, 3, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v77, 1, v0
	v_mov_b32_e32 v9, 0
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v75, 3, v0
	v_bfe_i32 v69, v0, 3, 1
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_lshlrev_b32_e32 v78, 2, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v22, v9 :: v_dual_lshlrev_b32 v67, 4, v0
	v_mov_b32_e32 v14, v9
	v_dual_mov_b32 v19, v9 :: v_dual_and_b32 v4, 0x778, v75
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s24, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v28, v9
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v29, v9
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v35, v9
	v_mov_b32_e32 v36, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v40, v9
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v41, v9
	v_mov_b32_e32 v42, v9
	v_mov_b32_e32 v43, v9
	v_mov_b32_e32 v44, v9
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v45, v9
	v_mov_b32_e32 v46, v9
	v_mov_b32_e32 v47, v9
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v48, v9
	v_mov_b32_e32 v49, v9
	v_mov_b32_e32 v50, v9
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v51, v9
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v52, v9
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v53, v9
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v54, v9
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v55, v9
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v56, v9
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v57, v9
	s_sub_i32 s14, s4, s8
	v_mov_b32_e32 v58, v9
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s15, s14, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s14, s14, s12
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s15
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s14
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s16, s4, 4
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	v_mov_b32_e32 v59, v9
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_mov_b32_e32 v60, v9
	v_mov_b32_e32 v61, v9
	v_rcp_iflag_f32_e32 v1, s4
	v_mov_b32_e32 v62, v9
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v64, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_readfirstlane_b32 s4, v1
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v16, v9
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	v_mov_b32_e32 v17, v9
	s_cvt_u32_f32 s18, s18
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s18, s19
	s_add_i32 s18, s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s12, s17
	s_ashr_i32 s27, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s14, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s12, s18, s12
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s14, s13, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s29, s12, s27
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s12, s13, s14
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s14, s29, s27
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s28, s12, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s12, s14, s16
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_mul_lo_u32 v1, s28, v76
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s12
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s14, 8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s15
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s24, s2, 6
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_mov_b32 s22, s6
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	s_mul_i32 s2, s24, s28
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_mov_b32 s23, s7
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add3_u32 v74, v1, v78, s2
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	s_lshl_b32 s2, s3, 4
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_gt_i32 s13, 1
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	s_mul_i32 s3, s26, s28
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_and_b32_e32 v68, 1, v0
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	s_add_i32 s3, s3, s2
	s_lshl_b32 s12, s28, 7
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_lshlrev_b32_e32 v65, 3, v68
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmpk_lt_i32 s13, 0x82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	v_mad_u64_u32 v[1:2], null, s28, v77, v[65:66]
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add_nc_u32_e32 v2, s2, v74
	.loc	1 129 30                        ; generate_amdgcn.py:129:30
	v_add_nc_u32_e32 v72, s3, v1
	v_add3_u32 v73, s3, s12, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_mov_b32 s12, 0
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_dual_cndmask_b32 v2, 0x80000000, v72 :: v_dual_cndmask_b32 v3, 0x80000000, v73
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_b32 v83, v1, s[4:7], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_clause 0x1
	buffer_load_b64 v[79:80], v2, s[20:23], 0 offen
	buffer_load_b64 v[81:82], v3, s[20:23], 0 offen
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_lshlrev_b32_e32 v1, 2, v0
	v_bfe_i32 v2, v0, 5, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_bfe_i32 v3, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_and_b32_e32 v1, 0x37c, v1
	v_and_b32_e32 v2, 0x88, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_and_b32_e32 v3, 0x88, v3
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_xor_b32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_xor_b32_e32 v2, v3, v4
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v70, 0, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_add_nc_u32_e32 v71, 0, v2
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v70, v83 offset:4096
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v71, v[79:80], v[81:82] offset1:4
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add3_u32 v1, s2, 64, v74
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_b32 v103, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_clause 0x1
	buffer_load_b64 v[99:100], v72, s[20:23], 0 offen offset:64
	buffer_load_b64 v[101:102], v73, s[20:23], 0 offen offset:64
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x70, v67
	v_and_b32_e32 v2, 0x88, v69
	v_and_b32_e32 v3, 0x700, v75
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:106:32 ]
	s_add_i32 s3, s28, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:106:32 ]
	s_lshr_b32 s3, s3, 6
	v_or_b32_e32 v4, v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_or3_b32 v1, v1, v3, v2
.Ltmp13:
	.loc	1 106 9 is_stmt 1               ; generate_amdgcn.py:106:9
	s_max_u32 s3, s3, 2
	s_cmp_eq_u32 s3, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v2, 0, v4
	v_add_nc_u32_e32 v72, 0, v1
	v_xor_b32_e32 v1, 8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v73, 0x1000, v2
	v_xor_b32_e32 v2, 8, v4
	v_add_nc_u32_e32 v74, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v2
	v_add_nc_u32_e32 v75, 0x1000, v2
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_2addr_stride64_b64 v[79:82], v72 offset1:4
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[39:42], v73 offset1:32
	ds_load_2addr_b64 v[83:86], v73 offset0:64 offset1:96
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_mov_b32_e32 v8, s19
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_2addr_stride64_b64 v[87:90], v74 offset1:4
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[91:94], v75 offset1:32
	ds_load_2addr_b64 v[95:98], v75 offset0:64 offset1:96
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v7, s18
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v70, v103 offset:4096
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v71, v[99:100], v[101:102] offset1:4
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[79:80], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[93:94], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[95:96], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[89:90], v[95:96], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[97:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v77, s29, 8, v77
	s_lshl_b32 s12, s27, 8
	v_add_nc_u32_e32 v81, s24, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v77, s12, v77
	v_or_b32_e32 v79, 0x80, v77
	v_mad_u64_u32 v[76:77], null, s28, v77, s[2:3]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[79:80], null, s28, v79, s[2:3]
	v_mad_u64_u32 v[80:81], null, s28, v81, s[2:3]
	v_add3_u32 v76, v76, v65, 0x80
	s_add_i32 s2, s3, -2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v79, v65, 0x80
	v_add3_u32 v77, v80, v78, 0x80
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_b32 v106, v77, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_clause 0x1
	buffer_load_b64 v[102:103], v76, s[20:23], 0 offen
	buffer_load_b64 v[104:105], v65, s[20:23], 0 offen
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[78:81], v73 offset1:32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_2addr_stride64_b64 v[82:85], v72 offset1:4
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[86:89], v73 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v75 offset1:32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_2addr_stride64_b64 v[94:97], v74 offset1:4
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[98:101], v75 offset0:64 offset1:96
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_add_nc_u32_e32 v65, 64, v65
	v_add_nc_u32_e32 v76, 64, v76
	v_add_nc_u32_e32 v77, 64, v77
	s_add_i32 s2, s2, -1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_lg_u32 s2, 0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v70, v106 offset:4096
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v71, v[102:103], v[104:105] offset1:4
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[78:79], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[82:83], v[86:87], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[86:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[82:83], v[88:89], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[88:89], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[94:95], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[94:95], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[98:99], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[94:95], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[100:101], v[1:8] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v72, 32, v0
	v_and_b32_e32 v70, 16, v0
	.loc	1 127 22 is_stmt 1              ; generate_amdgcn.py:127:22
	v_and_b32_e32 v65, 7, v0
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_and_b32_e32 v71, 0xe0, v0
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_lshlrev_b32_e32 v73, 4, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v69, 0x88, v69, v73
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshl_or_b32 v81, v71, 3, v69
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v73, 0, v69
	v_xad_u32 v69, v69, 8, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_add_nc_u32_e32 v74, 0, v81
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v82, 0x1000, v73
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_xad_u32 v85, v81, 8, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v69, 0x1000, v69
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_2addr_stride64_b64 v[73:76], v74 offset1:4
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[77:80], v82 offset1:32
	ds_load_2addr_b64 v[81:84], v82 offset0:64 offset1:96
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	ds_load_2addr_stride64_b64 v[85:88], v85 offset1:4
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[89:92], v69 offset1:32
	ds_load_2addr_b64 v[93:96], v69 offset0:64 offset1:96
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[79:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[81:82], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[83:84], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[83:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[91:92], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[91:92], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[93:94], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[95:96], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[95:96], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_and_or_b32 v73, v0, 15, s24
	.loc	1 142 14 is_stmt 0              ; generate_amdgcn.py:142:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_lshlrev_b32_e32 v73, 1, v73
	.loc	1 100 14 is_stmt 1              ; generate_amdgcn.py:100:14
	v_or_b32_e32 v69, s26, v0
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v71, 5, v71
	v_lshl_or_b32 v72, v72, 1, v70
	v_lshlrev_b32_e32 v66, 4, v66
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_or_b32_e32 v74, 32, v73
	v_or_b32_e32 v75, 64, v73
	v_or_b32_e32 v76, 0x60, v73
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v70, 2, v70
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_clause 0x3
	buffer_load_u16 v82, v73, s[4:7], 0 offen
	buffer_load_u16 v83, v74, s[4:7], 0 offen
	buffer_load_u16 v84, v75, s[4:7], 0 offen
	buffer_load_u16 v85, v76, s[4:7], 0 offen
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_and_b32_e32 v74, 0xf0, v0
	v_lshlrev_b32_e32 v75, 1, v0
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshl_add_u32 v76, v74, 2, 0
	v_lshl_add_u32 v78, v74, 1, 0
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_and_or_b32 v0, 0x300, v0, v71
	.loc	1 141 15 is_stmt 1              ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_or3_b32 v0, v0, v66, v70
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_add_nc_u32_e32 v116, 0, v0
	v_xad_u32 v117, 0x2010, v0, 0
	v_xad_u32 v118, 0x4020, v0, 0
	v_xad_u32 v119, 0x6030, v0, 0
	v_xad_u32 v120, 0x8040, v0, 0
	v_xad_u32 v121, 0xa050, v0, 0
	v_xad_u32 v122, 0xc060, v0, 0
	v_xad_u32 v123, 0xe070, v0, 0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s17, s25, 15
	s_mul_i32 s70, s25, 17
	s_mul_i32 s2, s25, 28
	s_mul_i32 s3, s25, 29
	s_mul_i32 s8, s25, 5
	s_mul_i32 s9, s25, 6
	s_mul_i32 s10, s25, 7
	s_mul_i32 s11, s25, 9
	s_mul_i32 s12, s25, 10
	s_mul_i32 s13, s25, 11
	s_mul_i32 s14, s25, 12
	s_mul_i32 s15, s25, 13
	s_mul_i32 s16, s25, 14
	s_mul_i32 s71, s25, 18
	s_mul_i32 s72, s25, 19
	s_mul_i32 s73, s25, 20
	s_mul_i32 s74, s25, 21
	s_mul_i32 s75, s25, 22
	s_mul_i32 s76, s25, 23
	s_mul_i32 s77, s25, 24
	s_mul_i32 s78, s25, 25
	s_mul_i32 s79, s25, 26
	s_mul_i32 s80, s25, 27
	s_mul_i32 s37, s25, 30
	s_mul_i32 s38, s25, 31
	s_lshl_b32 s39, s25, 5
	s_mul_i32 s40, s25, 33
	s_mul_i32 s41, s25, 34
	s_mul_i32 s42, s25, 35
	s_mul_i32 s43, s25, 36
	s_mul_i32 s44, s25, 37
	s_mul_i32 s45, s25, 38
	s_mul_i32 s46, s25, 39
	s_mul_i32 s47, s25, 40
	s_mul_i32 s48, s25, 41
	s_mul_i32 s49, s25, 42
	s_mul_i32 s50, s25, 43
	s_mul_i32 s51, s25, 44
	s_mul_i32 s52, s25, 45
	s_mul_i32 s53, s25, 46
	s_mul_i32 s54, s25, 47
	s_mul_i32 s55, s25, 48
	s_mul_i32 s56, s25, 49
	s_mul_i32 s57, s25, 50
	s_mul_i32 s58, s25, 51
	s_mul_i32 s59, s25, 52
	s_mul_i32 s60, s25, 53
	s_mul_i32 s61, s25, 54
	s_mul_i32 s62, s25, 55
	s_mul_i32 s63, s25, 56
	s_mul_i32 s64, s25, 57
	s_mul_i32 s65, s25, 58
	s_mul_i32 s66, s25, 59
	s_mul_i32 s67, s25, 60
	s_mul_i32 s68, s25, 61
	s_mul_i32 s69, s25, 62
	s_mul_i32 s33, s25, 63
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v82
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v77, 1, v69
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_b32_e32 v67, 0xcf0, v67
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	v_and_b32_e32 v75, 28, v75
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v82, 16, v83
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshlrev_b32_e32 v68, 5, v68
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	buffer_load_u16 v73, v77, s[4:7], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xor_b32_e32 v67, v72, v67
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v68, v76, v68, v75
	.loc	1 218 23 is_stmt 1              ; generate_amdgcn.py:218:23
	s_mul_i32 s4, s24, s25
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshl_or_b32 v72, v65, 13, v67
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s5, s25, 3
	s_add_i32 s36, s4, s25
	s_lshl1_add_u32 s35, s25, s4
	s_add_i32 s34, s4, s5
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_add_nc_u32_e32 v114, 0, v72
	v_xad_u32 v115, v72, 32, 0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_lshl2_add_u32 s31, s25, s4
	s_lshl3_add_u32 s27, s25, s4
	s_add_i32 s19, s4, s17
	s_lshl4_add_u32 s18, s25, s4
	s_add_i32 s17, s4, s70
	s_add_i32 s25, s4, s2
	s_add_i32 s70, s4, s3
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_add_i32 s30, s4, s8
	s_add_i32 s29, s4, s9
	s_add_i32 s28, s4, s10
	s_add_i32 s26, s4, s11
	s_add_i32 s24, s4, s12
	s_add_i32 s23, s4, s13
	s_add_i32 s22, s4, s14
	s_add_i32 s21, s4, s15
	s_add_i32 s20, s4, s16
	s_add_i32 s16, s4, s71
	s_add_i32 s15, s4, s72
	s_add_i32 s14, s4, s73
	s_add_i32 s13, s4, s74
	s_add_i32 s12, s4, s75
	s_add_i32 s11, s4, s76
	s_add_i32 s10, s4, s77
	s_add_i32 s8, s4, s78
	s_add_i32 s5, s4, s79
	s_add_i32 s9, s4, s80
	s_add_i32 s37, s4, s37
	s_add_i32 s38, s4, s38
	s_add_i32 s39, s4, s39
	s_add_i32 s40, s4, s40
	s_add_i32 s41, s4, s41
	s_add_i32 s42, s4, s42
	s_add_i32 s43, s4, s43
	s_add_i32 s44, s4, s44
	s_add_i32 s45, s4, s45
	s_add_i32 s46, s4, s46
	s_add_i32 s47, s4, s47
	s_add_i32 s48, s4, s48
	s_add_i32 s49, s4, s49
	s_add_i32 s50, s4, s50
	s_add_i32 s51, s4, s51
	s_add_i32 s52, s4, s52
	s_add_i32 s53, s4, s53
	s_add_i32 s54, s4, s54
	s_add_i32 s55, s4, s55
	s_add_i32 s56, s4, s56
	s_add_i32 s57, s4, s57
	s_add_i32 s58, s4, s58
	s_add_i32 s59, s4, s59
	s_add_i32 s60, s4, s60
	s_add_i32 s61, s4, s61
	s_add_i32 s62, s4, s62
	s_add_i32 s63, s4, s63
	s_add_i32 s64, s4, s64
	s_add_i32 s65, s4, s65
	s_add_i32 s66, s4, s66
	s_add_i32 s67, s4, s67
	s_add_i32 s68, s4, s68
	s_add_i32 s69, s4, s69
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v73
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	ds_store_b32 v68, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v78
	ds_load_b128 v[70:73], v78 offset:16
	ds_load_b128 v[74:77], v78 offset:512
	ds_load_b128 v[78:81], v78 offset:528
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_lshlrev_b32_e32 v83, 16, v84
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	v_dual_mul_f32 v131, v66, v83 :: v_dual_lshlrev_b32 v84, 16, v85
	v_mul_f32_e32 v91, v72, v0
	v_mul_f32_e32 v85, v65, v0
	v_mul_f32_e32 v86, v66, v0
	v_mul_f32_e32 v87, v67, v0
	v_mul_f32_e32 v88, v68, v0
	v_mul_f32_e32 v89, v70, v0
	v_mul_f32_e32 v101, v65, v82
	v_mul_f32_e32 v108, v71, v82
	v_dual_mul_f32 v127, v79, v82 :: v_dual_mul_f32 v130, v65, v83
	v_dual_mul_f32 v133, v68, v83 :: v_dual_mul_f32 v146, v65, v84
	v_dual_mul_f32 v99, v79, v0 :: v_dual_mul_f32 v126, v78, v82
	v_dual_mul_f32 v100, v80, v0 :: v_dual_mul_f32 v111, v73, v82
	v_mul_f32_e32 v104, v67, v82
	v_dual_mul_f32 v125, v77, v82 :: v_dual_mul_f32 v132, v67, v83
	v_dual_mul_f32 v129, v81, v82 :: v_dual_mul_f32 v134, v70, v83
	v_dual_mul_f32 v137, v73, v83 :: v_dual_mul_f32 v148, v67, v84
	v_dual_mul_f32 v141, v77, v83 :: v_dual_mul_f32 v154, v74, v84
	v_mul_f32_e32 v90, v71, v0
	v_dual_mul_f32 v92, v73, v0 :: v_dual_mul_f32 v107, v70, v82
	v_dual_mul_f32 v135, v71, v83 :: v_dual_mul_f32 v150, v70, v84
	v_dual_mul_f32 v93, v74, v0 :: v_dual_mul_f32 v124, v76, v82
	v_mul_f32_e32 v94, v75, v0
	v_dual_mul_f32 v95, v76, v0 :: v_dual_mul_f32 v112, v74, v82
	v_dual_mul_f32 v96, v77, v0 :: v_dual_mul_f32 v109, v72, v82
	v_dual_mul_f32 v136, v72, v83 :: v_dual_mul_f32 v147, v66, v84
	v_dual_mul_f32 v139, v75, v83 :: v_dual_mul_f32 v152, v72, v84
	v_dual_mul_f32 v145, v81, v83 :: v_dual_mul_f32 v158, v78, v84
	v_dual_mul_f32 v97, v78, v0 :: v_dual_mul_f32 v128, v80, v82
	v_dual_mul_f32 v0, v81, v0 :: v_dual_mul_f32 v113, v75, v82
	v_dual_mul_f32 v138, v74, v83 :: v_dual_mul_f32 v149, v68, v84
	v_dual_mul_f32 v140, v76, v83 :: v_dual_mul_f32 v151, v71, v84
	v_dual_mul_f32 v142, v78, v83 :: v_dual_mul_f32 v153, v73, v84
	v_mul_f32_e32 v103, v66, v82
	v_mul_f32_e32 v105, v68, v82
	v_dual_mul_f32 v143, v79, v83 :: v_dual_mul_f32 v156, v76, v84
	v_dual_mul_f32 v144, v80, v83 :: v_dual_mul_f32 v155, v75, v84
	v_dual_mul_f32 v157, v77, v84 :: v_dual_mul_f32 v70, v87, v11
	v_dual_mul_f32 v159, v79, v84 :: v_dual_mul_f32 v78, v90, v14
	v_dual_mul_f32 v160, v80, v84 :: v_dual_mul_f32 v9, v85, v9
	v_dual_mul_f32 v161, v81, v84 :: v_dual_mul_f32 v82, v91, v15
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v65, v86, v10 :: v_dual_mul_f32 v74, v88, v12
	v_dual_mul_f32 v10, v101, v25 :: v_dual_mul_f32 v79, v108, v30
	v_dual_mul_f32 v11, v130, v41 :: v_dual_mul_f32 v80, v135, v46
	v_mul_f32_e32 v12, v146, v57
	v_dual_mul_f32 v102, v99, v22 :: v_dual_mul_f32 v71, v104, v27
	v_dual_mul_f32 v106, v100, v23 :: v_dual_mul_f32 v75, v105, v28
	v_mul_f32_e32 v87, v111, v32
	v_dual_mul_f32 v111, v129, v40 :: v_dual_mul_f32 v72, v132, v43
	v_dual_mul_f32 v100, v141, v52 :: v_dual_mul_f32 v73, v148, v59
	v_dual_mul_f32 v13, v89, v13 :: v_dual_mul_f32 v86, v92, v16
	v_dual_mul_f32 v14, v107, v29 :: v_dual_mul_f32 v99, v125, v36
	v_dual_mul_f32 v15, v134, v45 :: v_dual_mul_f32 v88, v137, v48
	v_mul_f32_e32 v16, v150, v61
	v_dual_mul_f32 v17, v93, v17 :: v_dual_mul_f32 v90, v94, v18
	v_dual_mul_f32 v98, v96, v20 :: v_dual_mul_f32 v83, v109, v31
	v_dual_mul_f32 v18, v112, v33 :: v_dual_mul_f32 v67, v131, v42
	v_mul_f32_e32 v84, v136, v47
	v_dual_mul_f32 v112, v145, v56 :: v_dual_mul_f32 v85, v152, v63
	v_dual_mul_f32 v94, v95, v19 :: v_dual_mul_f32 v21, v97, v21
	v_dual_mul_f32 v110, v0, v24 :: v_dual_mul_f32 v91, v113, v34
	v_mul_f32_e32 v22, v126, v37
	v_dual_mul_f32 v19, v138, v49 :: v_dual_mul_f32 v92, v139, v50
	v_dual_mul_f32 v96, v140, v51 :: v_dual_mul_f32 v23, v142, v53
	v_dual_mul_f32 v20, v154, v1 :: v_dual_mul_f32 v101, v157, v4
	v_dual_mul_f32 v24, v158, v5 :: v_dual_mul_f32 v105, v159, v6
	v_dual_mul_f32 v66, v103, v26 :: v_dual_mul_f32 v95, v124, v35
	v_mul_f32_e32 v103, v127, v38
	v_dual_mul_f32 v107, v128, v39 :: v_dual_mul_f32 v76, v133, v44
	v_dual_mul_f32 v104, v143, v54 :: v_dual_mul_f32 v77, v149, v60
	v_dual_mul_f32 v108, v144, v55 :: v_dual_mul_f32 v81, v151, v62
	v_dual_mul_f32 v68, v147, v58 :: v_dual_mul_f32 v97, v156, v3
	v_mul_f32_e32 v89, v153, v64
	v_mul_f32_e32 v93, v155, v2
	v_mul_f32_e32 v109, v160, v7
	v_mul_f32_e32 v113, v161, v8
	ds_store_b128 v114, v[9:12]
	ds_store_b128 v114, v[70:73] offset:256
	ds_store_b128 v114, v[13:16] offset:512
	ds_store_b128 v114, v[82:85] offset:768
	ds_store_b128 v114, v[17:20] offset:4096
	ds_store_b128 v114, v[94:97] offset:4352
	ds_store_b128 v114, v[21:24] offset:4608
	ds_store_b128 v114, v[106:109] offset:4864
	ds_store_b128 v115, v[65:68]
	ds_store_b128 v115, v[74:77] offset:256
	ds_store_b128 v115, v[78:81] offset:512
	ds_store_b128 v115, v[86:89] offset:768
	ds_store_b128 v115, v[90:93] offset:4096
	ds_store_b128 v115, v[98:101] offset:4352
	ds_store_b128 v115, v[102:105] offset:4608
	ds_store_b128 v115, v[110:113] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v116
	ds_load_b128 v[4:7], v116 offset:128
	ds_load_b128 v[8:11], v117
	ds_load_b128 v[12:15], v117 offset:128
	ds_load_b128 v[16:19], v118
	ds_load_b128 v[20:23], v118 offset:128
	ds_load_b128 v[24:27], v119
	ds_load_b128 v[28:31], v119 offset:128
	ds_load_b128 v[32:35], v120
	ds_load_b128 v[36:39], v120 offset:128
	ds_load_b128 v[40:43], v121
	ds_load_b128 v[44:47], v121 offset:128
	ds_load_b128 v[48:51], v122
	ds_load_b128 v[52:55], v122 offset:128
	ds_load_b128 v[56:59], v123
	ds_load_b128 v[60:63], v123 offset:128
	.loc	1 218 9 is_stmt 1               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v64, s4, v69, 2
	v_add_lshl_u32 v65, s36, v69, 2
	v_add_lshl_u32 v66, s35, v69, 2
	v_add_lshl_u32 v67, s34, v69, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[0:3], 0 offen
	v_add_lshl_u32 v0, s31, v69, 2
	v_add_lshl_u32 v8, s30, v69, 2
	v_add_lshl_u32 v16, s29, v69, 2
	v_add_lshl_u32 v24, s28, v69, 2
	v_add_lshl_u32 v64, s27, v69, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v32, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v40, v8, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v48, v16, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v56, v24, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v64, s[0:3], 0 offen
	v_add_lshl_u32 v0, s26, v69, 2
	v_add_lshl_u32 v4, s24, v69, 2
	v_add_lshl_u32 v8, s23, v69, 2
	v_add_lshl_u32 v16, s22, v69, 2
	v_add_lshl_u32 v24, s21, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v24, s[0:3], 0 offen
	v_add_lshl_u32 v0, s20, v69, 2
	v_add_lshl_u32 v4, s19, v69, 2
	v_add_lshl_u32 v8, s18, v69, 2
	v_add_lshl_u32 v12, s17, v69, 2
	v_add_lshl_u32 v16, s16, v69, 2
	buffer_atomic_add_f32 v52, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s15, v69, 2
	v_add_lshl_u32 v1, s14, v69, 2
	v_add_lshl_u32 v4, s13, v69, 2
	v_add_lshl_u32 v8, s12, v69, 2
	v_add_lshl_u32 v9, s11, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s10, v69, 2
	v_add_lshl_u32 v1, s8, v69, 2
	v_add_lshl_u32 v4, s5, v69, 2
	v_add_lshl_u32 v8, s9, v69, 2
	v_add_lshl_u32 v9, s25, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s70, v69, 2
	v_add_lshl_u32 v1, s37, v69, 2
	v_add_lshl_u32 v4, s38, v69, 2
	v_add_lshl_u32 v5, s39, v69, 2
	v_add_lshl_u32 v8, s40, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s41, v69, 2
	v_add_lshl_u32 v1, s42, v69, 2
	v_add_lshl_u32 v2, s43, v69, 2
	v_add_lshl_u32 v4, s44, v69, 2
	v_add_lshl_u32 v5, s45, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v34, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s46, v69, 2
	v_add_lshl_u32 v1, s47, v69, 2
	v_add_lshl_u32 v2, s48, v69, 2
	v_add_lshl_u32 v4, s49, v69, 2
	v_add_lshl_u32 v5, s50, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s51, v69, 2
	v_add_lshl_u32 v1, s52, v69, 2
	v_add_lshl_u32 v2, s53, v69, 2
	v_add_lshl_u32 v4, s54, v69, 2
	v_add_lshl_u32 v5, s55, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v54, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s56, v69, 2
	v_add_lshl_u32 v1, s57, v69, 2
	v_add_lshl_u32 v2, s58, v69, 2
	v_add_lshl_u32 v3, s59, v69, 2
	v_add_lshl_u32 v4, s60, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s61, v69, 2
	v_add_lshl_u32 v1, s62, v69, 2
	v_add_lshl_u32 v2, s63, v69, 2
	v_add_lshl_u32 v3, s64, v69, 2
	v_add_lshl_u32 v4, s65, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s66, v69, 2
	v_add_lshl_u32 v1, s67, v69, 2
	.loc	1 218 23 is_stmt 0              ; generate_amdgcn.py:218:23
	s_add_i32 s4, s4, s33
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v2, s68, v69, 2
	v_add_lshl_u32 v3, s69, v69, 2
	v_add_lshl_u32 v4, s4, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v4, s[0:3], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 81
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_vgpr, 162
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5152
; TotalNumSgprs: 83
; NumVgprs: 162
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 83
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     162
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
