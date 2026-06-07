	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v65, 2, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v69, 3, v0
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v80, 3, v0
	v_and_b32_e32 v71, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v66, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v68, 2, v69
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v12, v9 :: v_dual_lshlrev_b32 v67, 3, v71
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v7, 0x778, v80
	v_bfe_i32 v72, v0, 3, 1
	v_dual_mov_b32 v15, v9 :: v_dual_lshlrev_b32 v70, 4, v0
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v22, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v23, v9
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v24, v9
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v35, v9
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v36, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v40, v9
	v_mov_b32_e32 v41, v9
	v_mov_b32_e32 v42, v9
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v43, v9
	v_mov_b32_e32 v44, v9
	v_mov_b32_e32 v45, v9
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v46, v9
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v47, v9
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v48, v9
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v49, v9
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v50, v9
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v51, v9
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v52, v9
	s_sub_i32 s14, s4, s8
	v_mov_b32_e32 v53, v9
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	v_mov_b32_e32 v54, v9
	v_mov_b32_e32 v55, v9
	v_mov_b32_e32 v56, v9
	v_rcp_iflag_f32_e32 v1, s18
	v_mov_b32_e32 v57, v9
	v_mov_b32_e32 v58, v9
	v_mov_b32_e32 v59, v9
	v_mov_b32_e32 v60, v9
	v_mov_b32_e32 v61, v9
	v_mov_b32_e32 v62, v9
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v64, v9
	v_mov_b32_e32 v13, v9
	v_readfirstlane_b32 s18, v1
	v_mov_b32_e32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s27, s7
	s_mov_b64 s[20:21], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s30, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	s_add_i32 s18, s12, 1
	s_sub_i32 s14, s14, s19
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s18, s12
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s34, s12, s30
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s31, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s34, s30
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s33, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s12, s16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v5, s33, v65
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v3, s31, v68
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s15
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[1:2], null, s33, v66, v[67:68]
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s2, 6
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s31, v67
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s3, s28, s33
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s12, 8
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v79, v5, v68, s3
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s3, s22, s33
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s33, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s23, -1, 0
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_add_i32 s3, s3, s31
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v2, s31, v79
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_lshl_b32 s12, s33, 7
	v_add_nc_u32_e32 v78, s3, v1
	v_add3_u32 v77, s3, s12, v1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s25, s25, 0xffff
	v_dual_cndmask_b32 v2, 0x80000000, v78 :: v_dual_cndmask_b32 v3, 0x80000000, v77
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v83, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[75:76], v2, s[24:27], 0 offen
	buffer_load_b64 v[81:82], v3, s[24:27], 0 offen
	s_load_b64 s[2:3], s[0:1], 0x20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshlrev_b32_e32 v2, 2, v0
	v_bfe_i32 v3, v0, 5, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v4, v0, 4, 1
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v19, v9
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v5, 0x37c, v2
	v_and_b32_e32 v6, 0x88, v3
	v_dual_mov_b32 v1, v9 :: v_dual_and_b32 v8, 0x88, v4
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v73, v6, v5
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v8, v8, v7
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v73, 0, v73
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v74, 0, v8
	v_mov_b32_e32 v8, v9
	s_mov_b32 s12, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_lt_i32 s13, 0x102
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v73, v83 offset:4096
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v74, v[75:76], v[81:82] offset1:4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v75, s33, v67
	v_sub_nc_u32_e32 v76, s33, v68
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s0, s31, 0x80
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v75
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, s0, v79
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v2, 0x80, v78
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s0, v76
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v3, 0x80, v77
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_and_b32_e32 v4, 0x700, v80
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s33, 0x7f
.Ltmp13:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v105, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[101:102], v2, s[24:27], 0 offen
	buffer_load_b64 v[103:104], v3, s[24:27], 0 offen
	v_and_b32_e32 v1, 0x70, v70
	v_and_b32_e32 v2, 0x88, v72
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s0, s0, 2
	v_or_b32_e32 v3, v2, v1
	v_or3_b32 v1, v1, v4, v2
	s_cmp_eq_u32 s0, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v5, 0, v3
	v_xor_b32_e32 v3, 8, v3
	v_add_nc_u32_e32 v78, 0, v1
	v_xor_b32_e32 v1, 8, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v77, 0x1000, v5
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v80, 0, v1
	ds_load_2addr_b64 v[39:42], v77 offset1:32
	v_add_nc_u32_e32 v79, 0x1000, v2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v1, s12
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[81:84], v78 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[85:88], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[89:92], v79 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[93:96], v80 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[97:100], v79 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v73, v105 offset:4096
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v74, v[101:102], v[103:104] offset1:4
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[91:92], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[97:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[95:96], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[93:94], v[99:100], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[99:100], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v66, s34, 8, v66
	s_lshl_b32 s1, s30, 8
	v_add_nc_u32_e32 v82, s28, v65
	s_add_i32 s10, s31, 0x100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v66, s1, v66
	s_add_i32 s1, s0, -2
	v_or_b32_e32 v81, 0x80, v66
	v_mad_u64_u32 v[65:66], null, s33, v66, v[67:68]
	s_delay_alu instid0(VALU_DEP_2)
	v_mad_u64_u32 v[66:67], null, s33, v81, v[67:68]
	v_mad_u64_u32 v[67:68], null, s33, v82, v[68:69]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v68, s10, v67
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v81, s10, v65
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s10, v75
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s10, v76
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v82, s10, v66
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s1, -1
	s_addk_i32 s10, 0x80
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v68, v68, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[105:106], v81, s[24:27], 0 offen
	buffer_load_b64 v[107:108], v82, s[24:27], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[81:84], v77 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[85:88], v78 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[89:92], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[93:96], v79 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[97:100], v80 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[101:104], v79 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v73, v68 offset:4096
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v74, v[105:106], v[107:108] offset1:4
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[83:84], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[89:90], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[91:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[91:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[93:94], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[95:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[97:98], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[101:102], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[97:98], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[103:104], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v67, 32, v0
	v_and_b32_e32 v66, 16, v0
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_and_b32_e32 v65, 7, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v73, 0xe0, v0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s23
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshlrev_b32_e32 v68, 4, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v68, 0x88, v72, v68
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_lshl_or_b32 v72, v73, 3, v68
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v74, 0, v68
	v_xad_u32 v68, v68, 8, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v75, 0, v72
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v82, 0x1000, v74
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xad_u32 v72, v72, 8, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v68, 0x1000, v68
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[74:77], v75 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[78:81], v82 offset1:32
	ds_load_2addr_b64 v[82:85], v82 offset0:64 offset1:96
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[86:89], v72 offset1:4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[90:93], v68 offset1:32
	ds_load_2addr_b64 v[94:97], v68 offset0:64 offset1:96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[78:79], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[74:75], v[84:85], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[84:85], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[92:93], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[94:95], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[88:89], v[94:95], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[96:97], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[96:97], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_and_or_b32 v74, v0, 15, s28
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s9, s9, 0xffff
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	v_or_b32_e32 v68, s22, v0
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v74, 1, v74
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s28, s29
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v79, v10
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add_nc_u32_e32 v9, s0, v68
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v75, 32, v74
	v_or_b32_e32 v76, 64, v74
	v_or_b32_e32 v77, 0x60, v74
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v86, v17
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v10, 31, v9
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v87, v18
	v_cvt_f32_i32_e32 v88, v21
	v_cvt_f32_i32_e32 v107, v64
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s21, s21, 0xffff
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[17:18], 2, v[9:10]
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v108, v1
	v_cvt_f32_i32_e32 v109, v2
	v_cvt_f32_i32_e32 v110, v3
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v64, vcc_lo, s2, v17
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v112, v5
	v_cvt_f32_i32_e32 v82, v13
	v_cvt_f32_i32_e32 v111, v4
	v_cvt_f32_i32_e32 v113, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshl_or_b32 v6, v67, 1, v66
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v80, v11
	v_cvt_f32_i32_e32 v81, v12
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v84, v15
	v_cvt_f32_i32_e32 v85, v16
	v_cvt_f32_i32_e32 v67, v7
	v_cvt_f32_i32_e32 v89, v25
	v_cvt_f32_i32_e32 v99, v49
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v90, v29
	v_cvt_f32_i32_e32 v92, v34
	v_cvt_f32_i32_e32 v94, v38
	v_cvt_f32_i32_e32 v95, v41
	v_cvt_f32_i32_e32 v97, v45
	v_cvt_f32_i32_e32 v100, v50
	v_cvt_f32_i32_e32 v104, v57
	v_cvt_f32_i32_e32 v105, v58
	v_cvt_f32_i32_e32 v106, v59
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v96, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v91, v33
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v101, v53
	v_cvt_f32_i32_e32 v102, v54
	v_cvt_f32_i32_e32 v103, v55
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v98, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v93, v37
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	s_mov_b32 s1, 0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v76
	v_lshlrev_b32_e32 v17, 16, v74
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v72, 1, v68
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 0xf0, v0
	v_lshlrev_b32_e32 v3, 5, v71
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_and_b32_e32 v4, 0xcf0, v70
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	buffer_load_u16 v72, v72, s[20:23], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v1, 28, v1
	v_lshl_add_u32 v5, v2, 2, 0
	v_lshl_add_u32 v13, v2, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v70, v8
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v1, v5, v3, v1
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_xor_b32_e32 v5, v6, v4
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v65, 13, v5
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v65, null, s3, v18, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v72
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v72, v11, 32, 0
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v126, v1, v21 :: v_dual_add_nc_u32 v71, 0, v11
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	v_dual_mul_f32 v29, v1, v17 :: v_dual_lshlrev_b32 v18, 16, v75
	v_mul_f32_e32 v34, v3, v17
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v38, v5, v17
	v_mul_f32_e32 v41, v6, v17
	v_mul_f32_e32 v45, v8, v17
	v_mul_f32_e32 v42, v7, v17
	v_mul_f32_e32 v33, v2, v17
	v_mul_f32_e32 v37, v4, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v49, v10, v17
	v_dual_mul_f32 v114, v5, v18 :: v_dual_lshlrev_b32 v25, 16, v77
	v_mul_f32_e32 v50, v11, v17
	v_dual_mul_f32 v58, v16, v17 :: v_dual_mul_f32 v59, v1, v18
	v_dual_mul_f32 v119, v10, v18 :: v_dual_mul_f32 v134, v9, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v142, v1, v25
	v_dual_mul_f32 v57, v15, v17 :: v_dual_mul_f32 v122, v13, v18
	v_mul_f32_e32 v76, v3, v18
	v_dual_mul_f32 v77, v4, v18 :: v_dual_mul_f32 v128, v3, v21
	v_dual_mul_f32 v144, v3, v25 :: v_dual_mul_f32 v1, v29, v78
	v_dual_mul_f32 v53, v12, v17 :: v_dual_mul_f32 v116, v7, v18
	v_dual_mul_f32 v54, v13, v17 :: v_dual_mul_f32 v75, v2, v18
	v_dual_mul_f32 v55, v14, v17 :: v_dual_mul_f32 v118, v9, v18
	v_dual_mul_f32 v115, v6, v18 :: v_dual_mul_f32 v130, v5, v21
	v_dual_mul_f32 v125, v16, v18 :: v_dual_mul_f32 v140, v15, v21
	v_mul_f32_e32 v146, v5, v25
	v_dual_mul_f32 v46, v9, v17 :: v_dual_mul_f32 v117, v8, v18
	v_mul_f32_e32 v132, v7, v21
	v_dual_mul_f32 v120, v11, v18 :: v_dual_mul_f32 v127, v2, v21
	v_dual_mul_f32 v148, v7, v25 :: v_dual_mul_f32 v5, v33, v79
	v_dual_mul_f32 v121, v12, v18 :: v_dual_mul_f32 v136, v11, v21
	v_dual_mul_f32 v123, v14, v18 :: v_dual_mul_f32 v138, v13, v21
	v_mul_f32_e32 v150, v9, v25
	v_dual_mul_f32 v124, v15, v18 :: v_dual_mul_f32 v129, v4, v21
	v_mul_f32_e32 v131, v6, v21
	v_dual_mul_f32 v133, v8, v21 :: v_dual_mul_f32 v74, v58, v24
	v_mul_f32_e32 v135, v10, v21
	v_mul_f32_e32 v137, v12, v21
	v_mul_f32_e32 v139, v14, v21
	v_dual_mul_f32 v141, v16, v21 :: v_dual_mul_f32 v18, v114, v90
	v_mul_f32_e32 v143, v2, v25
	v_mul_f32_e32 v145, v4, v25
	v_mul_f32_e32 v147, v6, v25
	v_mul_f32_e32 v149, v8, v25
	v_mul_f32_e32 v151, v10, v25
	v_dual_mul_f32 v152, v11, v25 :: v_dual_mul_f32 v21, v41, v83
	v_mul_f32_e32 v153, v12, v25
	v_dual_mul_f32 v154, v13, v25 :: v_dual_mul_f32 v33, v46, v86
	v_mul_f32_e32 v155, v14, v25
	v_mul_f32_e32 v156, v15, v25
	v_mul_f32_e32 v157, v16, v25
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v9, v34, v80
	v_mul_f32_e32 v17, v38, v82
	v_dual_mul_f32 v29, v45, v85 :: v_dual_mul_f32 v4, v142, v104
	v_dual_mul_f32 v41, v50, v19 :: v_dual_mul_f32 v2, v59, v89
	v_dual_mul_f32 v38, v119, v92 :: v_dual_mul_f32 v3, v126, v95
	v_dual_mul_f32 v24, v147, v62 :: v_dual_mul_f32 v25, v42, v84
	v_dual_mul_f32 v57, v57, v23 :: v_dual_mul_f32 v12, v144, v106
	v_mul_f32_e32 v10, v76, v27
	v_mul_f32_e32 v11, v128, v43
	v_dual_mul_f32 v45, v53, v20 :: v_dual_mul_f32 v50, v122, v93
	v_mul_f32_e32 v6, v75, v26
	v_dual_mul_f32 v34, v118, v91 :: v_dual_mul_f32 v75, v125, v40
	v_mul_f32_e32 v20, v146, v61
	v_dual_mul_f32 v19, v130, v97 :: v_dual_mul_f32 v14, v77, v28
	v_dual_mul_f32 v26, v116, v31 :: v_dual_mul_f32 v7, v127, v96
	v_mul_f32_e32 v28, v148, v63
	v_mul_f32_e32 v27, v132, v47
	v_dual_mul_f32 v13, v37, v81 :: v_dual_mul_f32 v58, v124, v39
	v_mul_f32_e32 v37, v49, v87
	v_dual_mul_f32 v49, v54, v88 :: v_dual_mul_f32 v8, v143, v105
	v_mul_f32_e32 v42, v120, v35
	v_mul_f32_e32 v46, v121, v36
	v_dual_mul_f32 v54, v123, v94 :: v_dual_mul_f32 v35, v134, v99
	v_dual_mul_f32 v36, v150, v108 :: v_dual_mul_f32 v53, v55, v22
	v_mul_f32_e32 v22, v115, v30
	v_mul_f32_e32 v30, v117, v32
	v_dual_mul_f32 v15, v129, v44 :: v_dual_mul_f32 v40, v151, v109
	v_mul_f32_e32 v23, v131, v98
	v_dual_mul_f32 v31, v133, v48 :: v_dual_mul_f32 v44, v152, v110
	v_mul_f32_e32 v39, v135, v100
	v_mul_f32_e32 v43, v136, v51
	v_mul_f32_e32 v47, v137, v52
	v_mul_f32_e32 v51, v138, v101
	v_mul_f32_e32 v55, v139, v102
	v_dual_mul_f32 v59, v140, v103 :: v_dual_mul_f32 v76, v141, v56
	v_mul_f32_e32 v16, v145, v60
	v_mul_f32_e32 v32, v149, v107
	v_mul_f32_e32 v48, v153, v111
	v_mul_f32_e32 v52, v154, v112
	v_mul_f32_e32 v56, v155, v113
	v_dual_mul_f32 v60, v156, v67 :: v_dual_mul_f32 v77, v157, v70
	ds_store_b128 v71, v[1:4]
	ds_store_b128 v71, v[9:12] offset:256
	ds_store_b128 v71, v[17:20] offset:512
	ds_store_b128 v71, v[25:28] offset:768
	ds_store_b128 v71, v[33:36] offset:4096
	ds_store_b128 v71, v[41:44] offset:4352
	ds_store_b128 v71, v[49:52] offset:4608
	ds_store_b128 v71, v[57:60] offset:4864
	ds_store_b128 v72, v[5:8]
	ds_store_b128 v72, v[13:16] offset:256
	ds_store_b128 v72, v[21:24] offset:512
	ds_store_b128 v72, v[29:32] offset:768
	ds_store_b128 v72, v[37:40] offset:4096
	ds_store_b128 v72, v[45:48] offset:4352
	ds_store_b128 v72, v[53:56] offset:4608
	ds_store_b128 v72, v[74:77] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	global_load_b32 v67, v[64:65], off
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v1, 5, v73
	v_lshlrev_b32_e32 v2, 4, v69
	v_lshlrev_b32_e32 v3, 2, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, 0x300, v0, v1
	v_or3_b32 v0, v0, v2, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	ds_load_b128 v[60:63], v1
	ds_load_b128 v[28:31], v1 offset:128
	v_xad_u32 v1, 0x6030, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	ds_load_b128 v[56:59], v2
	ds_load_b128 v[24:27], v2 offset:128
	ds_load_b128 v[52:55], v3
	ds_load_b128 v[20:23], v3 offset:128
	v_xad_u32 v2, 0x8040, v0, 0
	ds_load_b128 v[48:51], v1
	ds_load_b128 v[16:19], v1 offset:128
	v_xad_u32 v1, 0xa050, v0, 0
	v_xad_u32 v3, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[44:47], v2
	ds_load_b128 v[12:15], v2 offset:128
	ds_load_b128 v[40:43], v1
	ds_load_b128 v[8:11], v1 offset:128
	ds_load_b128 v[36:39], v3
	ds_load_b128 v[4:7], v3 offset:128
	ds_load_b128 v[32:35], v0
	ds_load_b128 v[0:3], v0 offset:128
.LBB0_7:                                ; %atomicrmw.start374
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v66, v67, v60
	global_atomic_cmpswap_b32 v66, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v66, v67
	v_mov_b32_e32 v67, v66
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end373
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v64, s0, s29, v68
	s_mov_b32 s1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v64, vcc_lo, s2, v64
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_9:                                ; %atomicrmw.start368
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v66, v67, v56
	global_atomic_cmpswap_b32 v60, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v60, v67
	v_mov_b32_e32 v67, v60
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end367
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s29, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_11:                               ; %atomicrmw.start362
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v66, v67, v52
	global_atomic_cmpswap_b32 v56, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v56, v67
	v_mov_b32_e32 v67, v56
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end361
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_13:                               ; %atomicrmw.start356
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v66, v67, v48
	global_atomic_cmpswap_b32 v52, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v52, v67
	v_mov_b32_e32 v67, v52
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end355
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s29, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_15:                               ; %atomicrmw.start350
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v66, v67, v44
	global_atomic_cmpswap_b32 v48, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v48, v67
	v_mov_b32_e32 v67, v48
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end349
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_17:                               ; %atomicrmw.start344
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v66, v67, v40
	global_atomic_cmpswap_b32 v44, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v44, v67
	v_mov_b32_e32 v67, v44
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end343
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_19:                               ; %atomicrmw.start338
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v66, v67, v36
	global_atomic_cmpswap_b32 v40, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v40, v67
	v_mov_b32_e32 v67, v40
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end337
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_21:                               ; %atomicrmw.start332
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v66, v67, v32
	global_atomic_cmpswap_b32 v36, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v36, v67
	v_mov_b32_e32 v67, v36
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end331
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s29, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_23:                               ; %atomicrmw.start326
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v28
	global_atomic_cmpswap_b32 v32, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v32, v67
	v_mov_b32_e32 v67, v32
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end325
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_25:                               ; %atomicrmw.start320
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v24
	global_atomic_cmpswap_b32 v28, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v67
	v_mov_b32_e32 v67, v28
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end319
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_27:                               ; %atomicrmw.start314
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v20
	global_atomic_cmpswap_b32 v24, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v67
	v_mov_b32_e32 v67, v24
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end313
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_29:                               ; %atomicrmw.start308
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v16
	global_atomic_cmpswap_b32 v20, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v67
	v_mov_b32_e32 v67, v20
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end307
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_31:                               ; %atomicrmw.start302
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v12
	global_atomic_cmpswap_b32 v16, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v67
	v_mov_b32_e32 v67, v16
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end301
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_33:                               ; %atomicrmw.start296
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v8
	global_atomic_cmpswap_b32 v12, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v67
	v_mov_b32_e32 v67, v12
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end295
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_35:                               ; %atomicrmw.start290
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v4
	global_atomic_cmpswap_b32 v8, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v67
	v_mov_b32_e32 v67, v8
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end289
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_37:                               ; %atomicrmw.start284
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v66, v67, v0
	global_atomic_cmpswap_b32 v4, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v67
	v_mov_b32_e32 v67, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end283
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s29, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v65, 31, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[64:65], 2, v[64:65]
	v_add_co_u32 v64, vcc_lo, s2, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v65, null, s3, v65, vcc_lo
	global_load_b32 v67, v[64:65], off
.LBB0_39:                               ; %atomicrmw.start278
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v61
	global_atomic_cmpswap_b32 v0, v[64:65], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v67
	v_mov_b32_e32 v67, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end277
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v61, 31, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[60:61], 2, v[60:61]
	v_add_co_u32 v60, vcc_lo, s2, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v61, null, s3, v61, vcc_lo
	global_load_b32 v65, v[60:61], off
.LBB0_41:                               ; %atomicrmw.start272
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v64, v65, v57
	global_atomic_cmpswap_b32 v0, v[60:61], v[64:65], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v65
	v_mov_b32_e32 v65, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end271
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v56, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v57, 31, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[56:57], 2, v[56:57]
	v_add_co_u32 v56, vcc_lo, s2, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v57, null, s3, v57, vcc_lo
	global_load_b32 v61, v[56:57], off
.LBB0_43:                               ; %atomicrmw.start266
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v60, v61, v53
	global_atomic_cmpswap_b32 v0, v[56:57], v[60:61], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v61
	v_mov_b32_e32 v61, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end265
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v53, 31, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[52:53], 2, v[52:53]
	v_add_co_u32 v52, vcc_lo, s2, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v53, null, s3, v53, vcc_lo
	global_load_b32 v57, v[52:53], off
.LBB0_45:                               ; %atomicrmw.start260
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v56, v57, v49
	global_atomic_cmpswap_b32 v0, v[52:53], v[56:57], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v57
	v_mov_b32_e32 v57, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end259
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v49, 31, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[48:49], 2, v[48:49]
	v_add_co_u32 v48, vcc_lo, s2, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v49, null, s3, v49, vcc_lo
	global_load_b32 v53, v[48:49], off
.LBB0_47:                               ; %atomicrmw.start254
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v52, v53, v45
	global_atomic_cmpswap_b32 v0, v[48:49], v[52:53], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v53
	v_mov_b32_e32 v53, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end253
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v44, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v45, 31, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[44:45], 2, v[44:45]
	v_add_co_u32 v44, vcc_lo, s2, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v45, null, s3, v45, vcc_lo
	global_load_b32 v49, v[44:45], off
.LBB0_49:                               ; %atomicrmw.start248
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v48, v49, v41
	global_atomic_cmpswap_b32 v0, v[44:45], v[48:49], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v49
	v_mov_b32_e32 v49, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end247
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v41, 31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[40:41], 2, v[40:41]
	v_add_co_u32 v40, vcc_lo, s2, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v41, null, s3, v41, vcc_lo
	global_load_b32 v45, v[40:41], off
.LBB0_51:                               ; %atomicrmw.start242
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v45, v37
	global_atomic_cmpswap_b32 v0, v[40:41], v[44:45], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v45
	v_mov_b32_e32 v45, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end241
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v36, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v37, 31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	v_add_co_u32 v36, vcc_lo, s2, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s3, v37, vcc_lo
	global_load_b32 v41, v[36:37], off
.LBB0_53:                               ; %atomicrmw.start236
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v40, v41, v33
	global_atomic_cmpswap_b32 v0, v[36:37], v[40:41], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v41
	v_mov_b32_e32 v41, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end235
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v32, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s2, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s3, v33, vcc_lo
	global_load_b32 v37, v[32:33], off
.LBB0_55:                               ; %atomicrmw.start230
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end229
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s2, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s3, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_57:                               ; %atomicrmw.start224
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end223
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s2, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s3, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_59:                               ; %atomicrmw.start218
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end217
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s2, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s3, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_61:                               ; %atomicrmw.start212
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end211
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s2, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s3, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_63:                               ; %atomicrmw.start206
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end205
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s2, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s3, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_65:                               ; %atomicrmw.start200
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end199
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s2, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s3, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_67:                               ; %atomicrmw.start194
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end193
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s2, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s3, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_69:                               ; %atomicrmw.start188
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end187
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s1, s29, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_71:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v62
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_73:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v58
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_75:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v54
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_77:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v50
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_77
; %bb.78:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_79:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v46
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_79
; %bb.80:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_81:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v42
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_81
; %bb.82:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_83:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v38
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_83
; %bb.84:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_85:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v34
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_85
; %bb.86:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_87:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v30
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_87
; %bb.88:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_89:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v26
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_89
; %bb.90:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_91:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v22
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_91
; %bb.92:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_93:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v18
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_93
; %bb.94:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_95:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v14
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_95
; %bb.96:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_97:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_97
; %bb.98:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_99:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v6
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_99
; %bb.100:                              ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_101:                              ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v2
	global_atomic_cmpswap_b32 v4, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_101
; %bb.102:                              ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_103:                              ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v63
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_103
; %bb.104:                              ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_105:                              ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v59
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_105
; %bb.106:                              ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_107:                              ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v55
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_107
; %bb.108:                              ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_109:                              ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v51
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_109
; %bb.110:                              ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_111:                              ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v47
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_111
; %bb.112:                              ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_113:                              ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v43
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_113
; %bb.114:                              ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_115:                              ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v39
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_115
; %bb.116:                              ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_117:                              ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v35
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_117
; %bb.118:                              ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_119:                              ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_119
; %bb.120:                              ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_121:                              ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_121
; %bb.122:                              ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_123:                              ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_123
; %bb.124:                              ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_125:                              ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_125
; %bb.126:                              ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_127:                              ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_127
; %bb.128:                              ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_129:                              ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_129
; %bb.130:                              ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s1, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_131:                              ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_131
; %bb.132:                              ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s1, s29, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s0, s1, v68
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s3, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_133:                              ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_133
; %bb.134:                              ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 158
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10784
; TotalNumSgprs: 37
; NumVgprs: 158
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.byte	105                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     158
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
