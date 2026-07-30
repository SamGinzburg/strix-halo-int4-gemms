	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v70, 15, v0
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_lshrrev_b32_e32 v67, 4, v0
	v_or_b32_e32 v72, 0x3f0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v69, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v65, 2, v70
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v66, 4, v70
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	v_lshlrev_b32_e32 v71, 2, v0
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_dual_mov_b32 v5, v8 :: v_dual_add_nc_u32 v74, 0, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v4, v8 :: v_dual_add_nc_u32 v73, 0, v71
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s16, 63
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
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v13, v8
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v12, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v38, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v37, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v36, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v35, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v34, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v33, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v56, v8
	s_sub_i32 s15, s4, s8
	v_mov_b32_e32 v55, v8
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s18, s15, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s15, s15, s14
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s18
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s15
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s23, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s21, s23
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s21
	s_load_b64 s[0:1], s[0:1], 0x20
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_rcp_iflag_f32_e32 v1, s12
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_readfirstlane_b32 s12, v1
	.loc	1 125 30                        ; generate_amdgcn.py:125:30
	v_mad_u64_u32 v[1:2], null, s16, v67, v[65:66]
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_mad_u64_u32 v[2:3], null, s17, v67, v[66:67]
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s20, s12, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s7, 0, s21
	v_mov_b32_e32 v59, v8
	s_cvt_u32_f32 s6, s20
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v48, v8
	s_mul_i32 s7, s7, s6
	v_mov_b32_e32 v47, v8
	s_mul_hi_u32 s7, s6, s7
	v_mov_b32_e32 v46, v8
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s15, s14, s6
	s_xor_b32 s6, s2, s23
	s_mul_i32 s22, s15, s21
	s_ashr_i32 s20, s6, 31
	s_sub_i32 s14, s14, s22
	s_add_i32 s22, s15, 1
	s_sub_i32 s24, s14, s21
	s_cmp_ge_u32 s14, s21
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s15, s22, s15
	s_cselect_b32 s14, s24, s14
	s_add_i32 s22, s15, 1
	s_cmp_ge_u32 s14, s21
	v_mov_b32_e32 v45, v8
	s_cselect_b32 s14, s22, s15
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s15, s19, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s21, s14, s20
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	s_lshl_b32 s22, s3, 4
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s3, s19, s15
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s15, s21, s20
	.loc	1 108 18                        ; generate_amdgcn.py:108:18
	v_or_b32_e32 v3, s22, v67
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s25, s15, s23
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s23, s3, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s25
	.loc	1 125 30                        ; generate_amdgcn.py:125:30
	s_mul_i32 s14, s16, s22
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s18
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s3, s15, 8
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v3
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s2, 6
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	s_mul_i32 s24, s17, s22
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_gt_i32 s19, 1
	.loc	1 125 30                        ; generate_amdgcn.py:125:30
	v_add3_u32 v1, s14, s2, v1
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_add3_u32 v2, s24, s3, v2
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cselect_b32 s18, -1, 0
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s14, s6
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	buffer_load_b32 v68, v1, s[4:7], 0 offen
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b128 v[75:78], v2, s[12:15], 0 offen
	v_mov_b32_e32 v3, v8
	v_dual_mov_b32 v2, v8 :: v_dual_add_nc_u32 v71, 0, v70
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmpk_lt_i32 s19, 0x102
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v73, v68 offset:4096
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v74, v[75:78]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_add_i32 s19, s22, 0x80
	v_sub_nc_u32_e32 v75, s23, v67
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:106:32 ]
	s_addk_i32 s23, 0x7f
.Ltmp13:
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_lshl_b32 s14, s21, 8
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_add_nc_u32_e32 v1, s19, v67
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:106:32 ]
	s_lshr_b32 s15, s23, 7
	v_add_nc_u32_e32 v76, 0, v72
.Ltmp15:
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_sub_nc_u32_e64 v4, s15, 2 clamp
	v_mov_b32_e32 v42, v41
	v_mul_lo_u32 v3, s17, v1
	v_mul_lo_u32 v1, s16, v1
	s_lshl_b32 s15, s20, 8
	v_readfirstlane_b32 s21, v4
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v77, v71, v2
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v45, v41
	v_add3_u32 v3, v3, s14, v66
	v_add3_u32 v78, v1, s2, v65
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v48, v41
	v_subrev_nc_u32_e32 v79, s15, v3
	v_mov_b32_e32 v57, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v59, v41
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	s_lshl_b32 s20, s17, 7
	s_add_i32 s21, s21, 1
	s_lshl_b32 s16, s16, 7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s19, v75
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_add_i32 s21, s21, -1
	s_addk_i32 s19, 0x80
	s_cmp_lg_u32 s21, 0
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	v_dual_cndmask_b32 v65, 0x80000000, v78 :: v_dual_cndmask_b32 v66, 0x80000000, v79
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_add_nc_u32_e32 v78, s16, v78
	v_add_nc_u32_e32 v79, s20, v79
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	buffer_load_b32 v80, v65, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b128 v[65:68], v66, s[12:15], 0 offen
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v81, v77 offset:256
	ds_load_u8 v82, v77
	ds_load_u8 v83, v77 offset:768
	ds_load_u8 v84, v77 offset:512
	ds_load_u8 v85, v77 offset:2304
	ds_load_u8 v86, v77 offset:2048
	ds_load_u8 v87, v77 offset:2816
	ds_load_u8 v88, v77 offset:2560
	ds_load_u8 v89, v77 offset:2688
	ds_load_u8 v90, v77 offset:2432
	ds_load_u8 v91, v77 offset:2176
	ds_load_u8 v92, v77 offset:1920
	ds_load_u8 v93, v77 offset:1280
	ds_load_u8 v94, v77 offset:1024
	ds_load_u8 v95, v77 offset:1792
	ds_load_u8 v96, v77 offset:1536
	ds_load_u8 v97, v77 offset:1664
	ds_load_u8 v98, v77 offset:1408
	ds_load_u8 v99, v77 offset:1152
	ds_load_u8 v100, v77 offset:896
	ds_load_u8 v101, v71 offset:4160
	ds_load_u8 v102, v71 offset:4096
	ds_load_u8 v103, v71 offset:4112
	ds_load_u8 v104, v71 offset:4128
	ds_load_u8 v105, v71 offset:4176
	ds_load_u8 v106, v71 offset:4192
	ds_load_u8 v107, v71 offset:4144
	ds_load_u8 v108, v77 offset:3968
	ds_load_u8 v109, v77 offset:3328
	ds_load_u8 v110, v77 offset:3072
	ds_load_u8 v111, v77 offset:3840
	ds_load_u8 v112, v77 offset:3584
	ds_load_u8 v113, v77 offset:3712
	ds_load_u8 v114, v77 offset:3456
	ds_load_u8 v115, v77 offset:3200
	ds_load_u8 v116, v77 offset:2944
	ds_load_u8 v117, v71 offset:4544
	ds_load_u8 v118, v71 offset:4480
	ds_load_u8 v119, v71 offset:4560
	ds_load_u8 v120, v71 offset:4496
	ds_load_u8 v121, v71 offset:4576
	ds_load_u8 v122, v71 offset:4512
	ds_load_u8 v123, v71 offset:4528
	ds_load_u8 v124, v71 offset:4464
	ds_load_u8 v125, v71 offset:4672
	ds_load_u8 v126, v71 offset:4608
	ds_load_u8 v127, v71 offset:4688
	ds_load_u8 v128, v71 offset:4624
	ds_load_u8 v129, v71 offset:4704
	ds_load_u8 v130, v71 offset:4640
	ds_load_u8 v131, v71 offset:4656
	ds_load_u8 v132, v71 offset:4592
	ds_load_u8 v133, v71 offset:4288
	ds_load_u8 v134, v71 offset:4224
	ds_load_u8 v135, v71 offset:4304
	ds_load_u8 v136, v71 offset:4240
	ds_load_u8 v137, v71 offset:4320
	ds_load_u8 v138, v71 offset:4256
	ds_load_u8 v139, v71 offset:4272
	ds_load_u8 v140, v71 offset:4208
	ds_load_u8 v141, v71 offset:4416
	ds_load_u8 v142, v71 offset:4352
	ds_load_u8 v143, v71 offset:4432
	ds_load_u8 v144, v71 offset:4368
	ds_load_u8 v145, v71 offset:4448
	ds_load_u8 v146, v71 offset:4384
	ds_load_u8 v147, v71 offset:4400
	ds_load_u8 v148, v71 offset:4336
	ds_load_u8 v149, v71 offset:4800
	ds_load_u8 v150, v71 offset:4736
	ds_load_u8 v151, v71 offset:4816
	ds_load_u8 v152, v71 offset:4752
	ds_load_u8 v153, v71 offset:4832
	ds_load_u8 v154, v71 offset:4768
	ds_load_u8 v155, v71 offset:4784
	ds_load_u8 v156, v71 offset:4720
	ds_load_u8 v157, v71 offset:4928
	ds_load_u8 v158, v71 offset:4864
	ds_load_u8 v159, v71 offset:4944
	ds_load_u8 v160, v71 offset:4880
	ds_load_u8 v161, v71 offset:4960
	ds_load_u8 v162, v71 offset:4896
	ds_load_u8 v163, v71 offset:4912
	ds_load_u8 v164, v71 offset:4848
	ds_load_u8 v165, v71 offset:5056
	ds_load_u8 v166, v71 offset:4992
	ds_load_u8 v167, v71 offset:5072
	ds_load_u8 v168, v71 offset:5008
	ds_load_u8 v169, v71 offset:5088
	ds_load_u8 v170, v71 offset:5024
	ds_load_u8 v171, v71 offset:5040
	ds_load_u8 v172, v71 offset:4976
	ds_load_u8 v173, v77 offset:640
	ds_load_u8 v174, v77 offset:384
	ds_load_u8 v175, v77 offset:128
	ds_load_u8 v176, v76 offset:4096
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v102, v134, v133, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	v_perm_b32 v95, v82, v81, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v92, v97, v92, 0xc0c0004
	v_perm_b32 v108, v113, v108, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v113, v144, v143, 0xc0c0004
	v_perm_b32 v103, v103, v105, 0xc0c0004
	v_perm_b32 v105, v136, v135, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v104, v104, v106, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v99, v173, v100, 0xc0c0004
	v_perm_b32 v100, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v97, v175, v174, 0xc0c0004
	v_perm_b32 v114, v120, v119, 0xc0c0004
	v_perm_b32 v119, v128, v127, 0xc0c0004
	v_perm_b32 v127, v146, v145, 0xc0c0004
	v_perm_b32 v106, v138, v137, 0xc0c0004
	v_perm_b32 v124, v147, v124, 0xc0c0004
	v_perm_b32 v123, v123, v132, 0xc0c0004
	v_perm_b32 v107, v107, v140, 0xc0c0004
	v_perm_b32 v132, v139, v148, 0xc0c0004
	v_perm_b32 v96, v158, v157, 0xc0c0004
	v_perm_b32 v118, v166, v165, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v126, v150, v149, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_perm_b32 v111, v86, v85, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v91, v91, v90, 0xc0c0004
	v_perm_b32 v112, v89, v116, 0xc0c0004
	v_perm_b32 v115, v160, v159, 0xc0c0004
	v_perm_b32 v116, v168, v167, 0xc0c0004
	v_perm_b32 v120, v152, v151, 0xc0c0004
	v_perm_b32 v122, v162, v161, 0xc0c0004
	v_perm_b32 v128, v170, v169, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v130, v154, v153, 0xc0c0004
	v_perm_b32 v131, v131, v156, 0xc0c0004
	v_perm_b32 v133, v155, v164, 0xc0c0004
	v_perm_b32 v134, v163, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v171, v176, 0xc0c0004
	v_lshl_or_b32 v82, v117, 16, v141
	v_lshl_or_b32 v81, v102, 16, v101
	v_lshl_or_b32 v84, v94, 16, v93
	v_lshl_or_b32 v83, v83, 16, v95
	v_lshl_or_b32 v90, v92, 16, v98
	v_lshl_or_b32 v89, v99, 16, v97
	v_lshl_or_b32 v94, v114, 16, v113
	v_lshl_or_b32 v93, v105, 16, v103
	v_lshl_or_b32 v98, v121, 16, v127
	v_lshl_or_b32 v97, v106, 16, v104
	v_lshl_or_b32 v102, v123, 16, v124
	v_lshl_or_b32 v101, v132, 16, v107
	v_lshl_or_b32 v86, v118, 16, v96
	v_lshl_or_b32 v85, v126, 16, v125
	v_lshl_or_b32 v88, v110, 16, v109
	v_lshl_or_b32 v87, v87, 16, v111
	v_lshl_or_b32 v92, v108, 16, v100
	v_lshl_or_b32 v91, v112, 16, v91
	v_lshl_or_b32 v96, v116, 16, v115
	v_lshl_or_b32 v95, v120, 16, v119
	v_lshl_or_b32 v100, v128, 16, v122
	v_lshl_or_b32 v99, v130, 16, v129
	v_lshl_or_b32 v103, v133, 16, v131
	v_lshl_or_b32 v104, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[93:94], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[97:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[97:98], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[101:102], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[101:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[91:92], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[95:96], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[95:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[103:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[103:104], v[1:8] neg_lo:[1,1,0]
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v73, v80 offset:4096
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v74, v[65:68]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow200
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v66, 0xf0, v0
	.loc	1 131 22 is_stmt 1              ; generate_amdgcn.py:131:22
	v_and_b32_e32 v65, 0xe0, v0
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v67, v71 offset:4416
	ds_load_u8 v68, v71 offset:4352
	ds_load_u8 v73, v71 offset:4544
	ds_load_u8 v74, v71 offset:4480
	ds_load_u8 v76, v71 offset:4160
	ds_load_u8 v77, v71 offset:4096
	ds_load_u8 v80, v71 offset:4432
	ds_load_u8 v81, v71 offset:4368
	ds_load_u8 v82, v71 offset:4448
	ds_load_u8 v83, v71 offset:4384
	ds_load_u8 v86, v71 offset:4400
	ds_load_u8 v87, v71 offset:4336
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_lshrrev_b32_e32 v75, 1, v65
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	v_add_nc_u32_e32 v72, 0, v72
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v84, v71 offset:4560
	ds_load_u8 v85, v71 offset:4496
	ds_load_u8 v88, v71 offset:4576
	ds_load_u8 v89, v71 offset:4512
	ds_load_u8 v90, v71 offset:4528
	ds_load_u8 v91, v71 offset:4464
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_add_nc_u32_e32 v78, v71, v75
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	v_perm_b32 v68, v74, v73, 0xc0c0004
	ds_load_u8 v73, v71 offset:4288
	ds_load_u8 v74, v71 offset:4224
	ds_load_u8 v75, v78 offset:1280
	ds_load_u8 v79, v78 offset:1024
	ds_load_u8 v92, v78 offset:1792
	ds_load_u8 v93, v78 offset:1536
	ds_load_u8 v94, v71 offset:4112
	ds_load_u8 v95, v71 offset:4128
	ds_load_u8 v96, v71 offset:4176
	ds_load_u8 v97, v71 offset:4192
	ds_load_u8 v98, v71 offset:4144
	ds_load_u8 v99, v72 offset:4096
	v_perm_b32 v72, v77, v76, 0xc0c0004
	ds_load_u8 v76, v78 offset:256
	ds_load_u8 v77, v78
	ds_load_u8 v100, v78 offset:768
	ds_load_u8 v101, v78 offset:512
	ds_load_u8 v102, v71 offset:4304
	ds_load_u8 v103, v71 offset:4240
	ds_load_u8 v104, v71 offset:4320
	ds_load_u8 v105, v71 offset:4256
	ds_load_u8 v106, v71 offset:4272
	ds_load_u8 v107, v71 offset:4208
	v_lshl_or_b32 v81, v81, 16, v80
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v78 offset:1920
	ds_load_u8 v108, v78 offset:1664
	ds_load_u8 v109, v78 offset:1408
	ds_load_u8 v110, v78 offset:1152
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v71 offset:5056
	ds_load_u8 v115, v71 offset:4992
	v_perm_b32 v79, v93, v92, 0xc0c0004
	ds_load_u8 v92, v71 offset:4928
	ds_load_u8 v93, v71 offset:4864
	ds_load_u8 v111, v78 offset:896
	ds_load_u8 v112, v78 offset:640
	ds_load_u8 v113, v78 offset:384
	ds_load_u8 v114, v78 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_lshl_or_b32 v67, v73, 16, v72
	v_perm_b32 v84, v94, v96, 0xc0c0004
	v_lshl_or_b32 v73, v79, 16, v75
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v85, v103, v102, 0xc0c0004
	v_lshl_or_b32 v72, v100, 16, v76
	ds_load_u8 v100, v71 offset:4944
	ds_load_u8 v101, v71 offset:4880
	ds_load_u8 v116, v71 offset:4960
	ds_load_u8 v117, v71 offset:4896
	ds_load_u8 v118, v71 offset:4912
	ds_load_u8 v119, v71 offset:4848
	v_perm_b32 v94, v83, v82, 0xc0c0004
	v_perm_b32 v89, v95, v97, 0xc0c0004
	v_lshl_or_b32 v80, v85, 16, v84
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[67:68], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v108, v108, v74, 0xc0c0004
	v_perm_b32 v95, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[72:73], v[80:81], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v93, v92, 0xc0c0004
	ds_load_u8 v92, v71 offset:5072
	ds_load_u8 v93, v71 offset:5008
	ds_load_u8 v120, v71 offset:5088
	ds_load_u8 v121, v71 offset:5024
	ds_load_u8 v122, v71 offset:5040
	ds_load_u8 v123, v71 offset:4976
	v_perm_b32 v76, v115, v77, 0xc0c0004
	ds_load_u8 v77, v71 offset:4672
	ds_load_u8 v79, v71 offset:4608
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v110, v114, v113, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_perm_b32 v87, v106, v87, 0xc0c0004
	v_lshl_or_b32 v75, v76, 16, v75
	ds_load_u8 v76, v71 offset:4800
	ds_load_u8 v115, v71 offset:4736
	ds_load_u8 v124, v78 offset:3328
	ds_load_u8 v125, v78 offset:3072
	ds_load_u8 v126, v78 offset:3840
	ds_load_u8 v127, v78 offset:3584
	ds_load_u8 v128, v78 offset:2304
	ds_load_u8 v129, v78 offset:2048
	ds_load_u8 v130, v78 offset:2816
	ds_load_u8 v131, v78 offset:2560
	ds_load_u8 v132, v71 offset:4688
	ds_load_u8 v133, v71 offset:4624
	ds_load_u8 v134, v71 offset:4704
	ds_load_u8 v135, v71 offset:4640
	ds_load_u8 v136, v71 offset:4656
	ds_load_u8 v137, v71 offset:4592
	ds_load_u8 v138, v78 offset:3968
	ds_load_u8 v139, v78 offset:3712
	ds_load_u8 v140, v78 offset:3456
	ds_load_u8 v141, v78 offset:3200
	ds_load_u8 v142, v78 offset:2944
	ds_load_u8 v143, v78 offset:2688
	ds_load_u8 v144, v78 offset:2432
	ds_load_u8 v145, v78 offset:2176
	ds_load_u8 v146, v71 offset:4816
	ds_load_u8 v147, v71 offset:4752
	ds_load_u8 v148, v71 offset:4832
	ds_load_u8 v149, v71 offset:4768
	ds_load_u8 v150, v71 offset:4784
	ds_load_u8 v71, v71 offset:4720
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v84, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v76, v115, v76, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v78, v125, v124, 0xc0c0004
	v_perm_b32 v85, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v115, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v124, v131, v130, 0xc0c0004
	v_perm_b32 v77, v79, v77, 0xc0c0004
	v_perm_b32 v79, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v92, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v147, v146, 0xc0c0004
	v_lshl_or_b32 v83, v85, 16, v84
	v_lshl_or_b32 v74, v76, 16, v77
	v_lshl_or_b32 v77, v79, 16, v78
	v_lshl_or_b32 v79, v108, 16, v109
	v_lshl_or_b32 v78, v111, 16, v110
	v_perm_b32 v108, v141, v140, 0xc0c0004
	v_perm_b32 v109, v139, v138, 0xc0c0004
	v_perm_b32 v110, v145, v144, 0xc0c0004
	v_perm_b32 v111, v143, v142, 0xc0c0004
	v_lshl_or_b32 v76, v124, 16, v115
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[67:68], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[33:40], v[78:79], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[41:48], v[76:77], v[74:75], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v80, v86, v91, 0xc0c0004
	v_perm_b32 v81, v90, v137, 0xc0c0004
	v_perm_b32 v86, v98, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[74:75], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v74, v117, v116, 0xc0c0004
	v_perm_b32 v75, v121, v120, 0xc0c0004
	v_lshl_or_b32 v85, v88, 16, v94
	v_lshl_or_b32 v84, v95, 16, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v149, v148, 0xc0c0004
	v_lshl_or_b32 v81, v81, 16, v80
	v_lshl_or_b32 v75, v75, 16, v74
	v_perm_b32 v74, v135, v134, 0xc0c0004
	v_lshl_or_b32 v80, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v136, v71, 0xc0c0004
	v_perm_b32 v86, v150, v119, 0xc0c0004
	v_perm_b32 v87, v118, v123, 0xc0c0004
	v_perm_b32 v89, v122, v99, 0xc0c0004
	v_lshl_or_b32 v82, v93, 16, v92
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[84:85], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v88, 16, v74
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[84:85], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v86, 16, v71
	v_lshl_or_b32 v72, v89, 16, v87
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[82:83], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[71:72], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_or_b32_e32 v68, s2, v70
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_or_b32_e32 v67, s3, v0
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 142 22 is_stmt 0              ; generate_amdgcn.py:142:22
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v73, 1, v67
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_mov_b32 s4, s8
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_b32_e32 v75, 16, v0
	v_and_b32_e32 v74, 0xcf0, v69
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_or_b32_e32 v70, 32, v68
	v_or_b32_e32 v71, 64, v68
	v_or_b32_e32 v72, 0x60, v68
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v65, 5, v65
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_clause 0x3
	buffer_load_u16 v84, v68, s[4:7], 0 offen
	buffer_load_u16 v85, v70, s[4:7], 0 offen
	buffer_load_u16 v86, v71, s[4:7], 0 offen
	buffer_load_u16 v87, v72, s[4:7], 0 offen
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshlrev_b32_e32 v70, 1, v0
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	buffer_load_u16 v68, v73, s[4:7], 0 offen
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshlrev_b32_e32 v71, 5, v0
	v_lshl_add_u32 v72, v66, 2, 0
	v_lshl_add_u32 v66, v66, 1, 0
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_and_or_b32 v76, v70, 64, v75
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_and_b32_e32 v70, 28, v70
	v_and_b32_e32 v71, 32, v71
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v73, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v70, v72, v71, v70
	.loc	1 141 15 is_stmt 1              ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_or_b32 v0, 0x300, v0, v65
	v_xor_b32_e32 v65, v76, v74
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_or_b32 v65, 0xe000, v73, v65
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s4, s2, s17
	s_mul_i32 s5, s17, 3
	s_add_i32 s34, s4, s17
	s_lshl1_add_u32 s33, s17, s4
	s_mul_i32 s15, s17, 13
	s_mul_i32 s16, s17, 14
	s_mul_i32 s70, s17, 17
	s_mul_i32 s2, s17, 26
	s_mul_i32 s3, s17, 27
	s_add_i32 s31, s4, s5
	s_mul_i32 s8, s17, 5
	s_mul_i32 s9, s17, 6
	s_mul_i32 s10, s17, 7
	s_mul_i32 s11, s17, 9
	s_mul_i32 s12, s17, 10
	s_mul_i32 s13, s17, 11
	s_mul_i32 s14, s17, 12
	s_mul_i32 s18, s17, 15
	s_mul_i32 s71, s17, 18
	s_mul_i32 s72, s17, 19
	s_mul_i32 s73, s17, 20
	s_mul_i32 s74, s17, 21
	s_mul_i32 s75, s17, 22
	s_mul_i32 s76, s17, 23
	s_mul_i32 s77, s17, 24
	s_mul_i32 s78, s17, 25
	s_mul_i32 s35, s17, 28
	s_mul_i32 s36, s17, 29
	s_mul_i32 s37, s17, 30
	s_mul_i32 s38, s17, 31
	s_lshl_b32 s39, s17, 5
	s_mul_i32 s40, s17, 33
	s_mul_i32 s41, s17, 34
	s_mul_i32 s42, s17, 35
	s_mul_i32 s43, s17, 36
	s_mul_i32 s44, s17, 37
	s_mul_i32 s45, s17, 38
	s_mul_i32 s46, s17, 39
	s_mul_i32 s47, s17, 40
	s_mul_i32 s48, s17, 41
	s_mul_i32 s49, s17, 42
	s_mul_i32 s50, s17, 43
	s_mul_i32 s51, s17, 44
	s_mul_i32 s52, s17, 45
	s_mul_i32 s53, s17, 46
	s_mul_i32 s54, s17, 47
	s_mul_i32 s55, s17, 48
	s_mul_i32 s56, s17, 49
	s_mul_i32 s57, s17, 50
	s_mul_i32 s58, s17, 51
	s_mul_i32 s59, s17, 52
	s_mul_i32 s60, s17, 53
	s_mul_i32 s61, s17, 54
	s_mul_i32 s62, s17, 55
	s_mul_i32 s63, s17, 56
	s_mul_i32 s64, s17, 57
	s_mul_i32 s65, s17, 58
	s_mul_i32 s66, s17, 59
	s_mul_i32 s67, s17, 60
	s_mul_i32 s68, s17, 61
	s_mul_i32 s69, s17, 62
	s_mul_i32 s30, s17, 63
	s_lshl2_add_u32 s29, s17, s4
	s_lshl3_add_u32 s25, s17, s4
	s_add_i32 s20, s4, s15
	s_add_i32 s19, s4, s16
	s_lshl4_add_u32 s16, s17, s4
	s_add_i32 s15, s4, s70
	s_add_i32 s17, s4, s2
	s_add_i32 s70, s4, s3
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_add_i32 s28, s4, s8
	s_add_i32 s27, s4, s9
	s_add_i32 s26, s4, s10
	s_add_i32 s24, s4, s11
	s_add_i32 s23, s4, s12
	s_add_i32 s22, s4, s13
	s_add_i32 s21, s4, s14
	s_add_i32 s18, s4, s18
	s_add_i32 s14, s4, s71
	s_add_i32 s13, s4, s72
	s_add_i32 s12, s4, s73
	s_add_i32 s11, s4, s74
	s_add_i32 s10, s4, s75
	s_add_i32 s8, s4, s76
	s_add_i32 s5, s4, s77
	s_add_i32 s9, s4, s78
	s_add_i32 s35, s4, s35
	s_add_i32 s36, s4, s36
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
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	ds_store_b32 v70, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v66 offset:512
	ds_load_b128 v[80:83], v66 offset:528
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_and_b32_e32 v69, 48, v69
	v_lshlrev_b32_e32 v75, 2, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_or3_b32 v0, v0, v69, v75
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	ds_load_b128 v[68:71], v66
	ds_load_b128 v[72:75], v66 offset:16
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	v_lshlrev_b32_e32 v66, 16, v84
	v_lshlrev_b32_e32 v84, 16, v85
	v_lshlrev_b32_e32 v85, 16, v86
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v117, 0x2010, v0, 0
	v_xad_u32 v118, 0x4020, v0, 0
	v_xad_u32 v119, 0x6030, v0, 0
	v_xad_u32 v120, 0x8040, v0, 0
	v_xad_u32 v121, 0xa050, v0, 0
	v_xad_u32 v122, 0xc060, v0, 0
	v_xad_u32 v123, 0xe070, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v131, v69, v85
	v_dual_mul_f32 v101, v81, v66 :: v_dual_lshlrev_b32 v86, 16, v87
	v_mul_f32_e32 v105, v69, v84
	v_mul_f32_e32 v87, v68, v66
	v_mul_f32_e32 v88, v69, v66
	v_mul_f32_e32 v89, v70, v66
	v_mul_f32_e32 v90, v71, v66
	v_dual_mul_f32 v98, v79, v66 :: v_dual_mul_f32 v103, v68, v84
	v_mul_f32_e32 v106, v70, v84
	v_dual_mul_f32 v107, v71, v84 :: v_dual_mul_f32 v130, v68, v85
	v_dual_mul_f32 v143, v81, v85 :: v_dual_mul_f32 v146, v68, v86
	v_mul_f32_e32 v92, v73, v66
	v_dual_mul_f32 v94, v75, v66 :: v_dual_mul_f32 v109, v72, v84
	v_dual_mul_f32 v132, v70, v85 :: v_dual_mul_f32 v113, v75, v84
	v_mul_f32_e32 v136, v74, v85
	v_dual_mul_f32 v126, v80, v84 :: v_dual_mul_f32 v139, v77, v85
	v_dual_mul_f32 v129, v83, v84 :: v_dual_mul_f32 v144, v82, v85
	v_dual_mul_f32 v145, v83, v85 :: v_dual_mul_f32 v148, v70, v86
	v_mul_f32_e32 v91, v72, v66
	v_mul_f32_e32 v93, v74, v66
	v_dual_mul_f32 v111, v74, v84 :: v_dual_mul_f32 v134, v72, v85
	v_dual_mul_f32 v150, v72, v86 :: v_dual_mul_f32 v41, v87, v41
	v_mul_f32_e32 v96, v77, v66
	v_dual_mul_f32 v114, v76, v84 :: v_dual_mul_f32 v135, v73, v85
	v_dual_mul_f32 v152, v74, v86 :: v_dual_mul_f32 v45, v91, v45
	v_dual_mul_f32 v97, v78, v66 :: v_dual_add_nc_u32 v116, 0, v0
	v_dual_mul_f32 v99, v80, v66 :: v_dual_add_nc_u32 v0, 0, v65
	v_mul_f32_e32 v95, v76, v66
	v_dual_mul_f32 v102, v82, v66 :: v_dual_mul_f32 v115, v77, v84
	v_mul_f32_e32 v138, v76, v85
	v_dual_mul_f32 v124, v78, v84 :: v_dual_mul_f32 v137, v75, v85
	v_dual_mul_f32 v127, v81, v84 :: v_dual_mul_f32 v142, v80, v85
	v_dual_mul_f32 v154, v76, v86 :: v_dual_mul_f32 v57, v95, v57
	v_mul_f32_e32 v66, v83, v66
	v_dual_mul_f32 v110, v73, v84 :: v_dual_mul_f32 v133, v71, v85
	v_dual_mul_f32 v125, v79, v84 :: v_dual_mul_f32 v140, v78, v85
	v_dual_mul_f32 v128, v82, v84 :: v_dual_mul_f32 v141, v79, v85
	v_dual_mul_f32 v147, v69, v86 :: v_dual_mul_f32 v76, v90, v44
	v_dual_mul_f32 v149, v71, v86 :: v_dual_mul_f32 v72, v89, v43
	v_mul_f32_e32 v151, v73, v86
	v_dual_mul_f32 v153, v75, v86 :: v_dual_mul_f32 v84, v93, v47
	v_dual_mul_f32 v155, v77, v86 :: v_dual_mul_f32 v100, v98, v60
	v_dual_mul_f32 v156, v78, v86 :: v_dual_mul_f32 v61, v99, v61
	v_mul_f32_e32 v157, v79, v86
	v_dual_mul_f32 v158, v80, v86 :: v_dual_mul_f32 v73, v106, v51
	v_dual_mul_f32 v159, v81, v86 :: v_dual_mul_f32 v108, v102, v63
	v_dual_mul_f32 v160, v82, v86 :: v_dual_mul_f32 v77, v107, v52
	v_dual_mul_f32 v161, v83, v86 :: v_dual_mul_f32 v112, v66, v64
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v68, v88, v42 :: v_dual_mul_f32 v85, v111, v55
	v_dual_mul_f32 v42, v103, v49 :: v_dual_mul_f32 v69, v105, v50
	v_dual_mul_f32 v43, v130, v25 :: v_dual_mul_f32 v78, v133, v28
	v_dual_mul_f32 v44, v146, v9 :: v_dual_mul_f32 v95, v155, v2
	v_dual_mul_f32 v80, v92, v46 :: v_dual_mul_f32 v89, v113, v56
	v_mul_f32_e32 v88, v94, v48
	v_dual_mul_f32 v113, v129, v40 :: v_dual_mul_f32 v74, v132, v27
	v_dual_mul_f32 v94, v139, v18 :: v_dual_mul_f32 v75, v148, v11
	v_dual_mul_f32 v46, v109, v53 :: v_dual_mul_f32 v81, v110, v54
	v_dual_mul_f32 v47, v134, v29 :: v_dual_mul_f32 v82, v135, v30
	v_dual_mul_f32 v48, v150, v13 :: v_dual_mul_f32 v99, v156, v3
	v_mul_f32_e32 v92, v96, v58
	v_dual_mul_f32 v58, v114, v33 :: v_dual_mul_f32 v93, v115, v34
	v_mul_f32_e32 v86, v136, v31
	v_dual_mul_f32 v114, v145, v24 :: v_dual_mul_f32 v87, v152, v15
	v_mul_f32_e32 v96, v97, v59
	v_dual_mul_f32 v104, v101, v62 :: v_dual_mul_f32 v97, v124, v35
	v_dual_mul_f32 v62, v126, v37 :: v_dual_mul_f32 v105, v127, v38
	v_dual_mul_f32 v90, v137, v32 :: v_dual_mul_f32 v63, v142, v21
	v_mul_f32_e32 v59, v138, v17
	v_dual_mul_f32 v60, v154, v1 :: v_dual_mul_f32 v103, v157, v4
	v_xad_u32 v65, v65, 32, 0
	v_mul_f32_e32 v101, v125, v36
	v_dual_mul_f32 v109, v128, v39 :: v_dual_mul_f32 v70, v131, v26
	v_dual_mul_f32 v98, v140, v19 :: v_dual_mul_f32 v71, v147, v10
	v_dual_mul_f32 v102, v141, v20 :: v_dual_mul_f32 v83, v151, v14
	v_dual_mul_f32 v106, v143, v22 :: v_dual_mul_f32 v79, v149, v12
	v_dual_mul_f32 v110, v144, v23 :: v_dual_mul_f32 v91, v153, v16
	v_dual_mul_f32 v64, v158, v5 :: v_dual_mul_f32 v107, v159, v6
	v_mul_f32_e32 v111, v160, v7
	v_mul_f32_e32 v115, v161, v8
	ds_store_b128 v0, v[41:44]
	ds_store_b128 v0, v[72:75] offset:256
	ds_store_b128 v0, v[45:48] offset:512
	ds_store_b128 v0, v[84:87] offset:768
	ds_store_b128 v0, v[57:60] offset:4096
	ds_store_b128 v0, v[96:99] offset:4352
	ds_store_b128 v0, v[61:64] offset:4608
	ds_store_b128 v0, v[108:111] offset:4864
	ds_store_b128 v65, v[68:71]
	ds_store_b128 v65, v[76:79] offset:256
	ds_store_b128 v65, v[80:83] offset:512
	ds_store_b128 v65, v[88:91] offset:768
	ds_store_b128 v65, v[92:95] offset:4096
	ds_store_b128 v65, v[100:103] offset:4352
	ds_store_b128 v65, v[104:107] offset:4608
	ds_store_b128 v65, v[112:115] offset:4864
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
	v_add_lshl_u32 v64, s4, v67, 2
	v_add_lshl_u32 v65, s34, v67, 2
	v_add_lshl_u32 v66, s33, v67, 2
	v_add_lshl_u32 v68, s31, v67, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v68, s[0:3], 0 offen
	v_add_lshl_u32 v0, s29, v67, 2
	v_add_lshl_u32 v8, s28, v67, 2
	v_add_lshl_u32 v16, s27, v67, 2
	v_add_lshl_u32 v24, s26, v67, 2
	v_add_lshl_u32 v64, s25, v67, 2
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
	v_add_lshl_u32 v0, s24, v67, 2
	v_add_lshl_u32 v4, s23, v67, 2
	v_add_lshl_u32 v8, s22, v67, 2
	v_add_lshl_u32 v16, s21, v67, 2
	v_add_lshl_u32 v24, s20, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v24, s[0:3], 0 offen
	v_add_lshl_u32 v0, s19, v67, 2
	v_add_lshl_u32 v4, s18, v67, 2
	v_add_lshl_u32 v8, s16, v67, 2
	v_add_lshl_u32 v12, s15, v67, 2
	v_add_lshl_u32 v16, s14, v67, 2
	buffer_atomic_add_f32 v52, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s13, v67, 2
	v_add_lshl_u32 v1, s12, v67, 2
	v_add_lshl_u32 v4, s11, v67, 2
	v_add_lshl_u32 v8, s10, v67, 2
	v_add_lshl_u32 v9, s8, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s5, v67, 2
	v_add_lshl_u32 v1, s9, v67, 2
	v_add_lshl_u32 v4, s17, v67, 2
	v_add_lshl_u32 v8, s70, v67, 2
	v_add_lshl_u32 v9, s35, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s36, v67, 2
	v_add_lshl_u32 v1, s37, v67, 2
	v_add_lshl_u32 v4, s38, v67, 2
	v_add_lshl_u32 v5, s39, v67, 2
	v_add_lshl_u32 v8, s40, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s41, v67, 2
	v_add_lshl_u32 v1, s42, v67, 2
	v_add_lshl_u32 v2, s43, v67, 2
	v_add_lshl_u32 v4, s44, v67, 2
	v_add_lshl_u32 v5, s45, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v34, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s46, v67, 2
	v_add_lshl_u32 v1, s47, v67, 2
	v_add_lshl_u32 v2, s48, v67, 2
	v_add_lshl_u32 v4, s49, v67, 2
	v_add_lshl_u32 v5, s50, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s51, v67, 2
	v_add_lshl_u32 v1, s52, v67, 2
	v_add_lshl_u32 v2, s53, v67, 2
	v_add_lshl_u32 v4, s54, v67, 2
	v_add_lshl_u32 v5, s55, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v54, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s56, v67, 2
	v_add_lshl_u32 v1, s57, v67, 2
	v_add_lshl_u32 v2, s58, v67, 2
	v_add_lshl_u32 v3, s59, v67, 2
	v_add_lshl_u32 v4, s60, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s61, v67, 2
	v_add_lshl_u32 v1, s62, v67, 2
	v_add_lshl_u32 v2, s63, v67, 2
	v_add_lshl_u32 v3, s64, v67, 2
	v_add_lshl_u32 v4, s65, v67, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s66, v67, 2
	v_add_lshl_u32 v1, s67, v67, 2
	.loc	1 218 23 is_stmt 0              ; generate_amdgcn.py:218:23
	s_add_i32 s4, s4, s30
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v2, s68, v67, 2
	v_add_lshl_u32 v3, s69, v67, 2
	v_add_lshl_u32 v4, s4, v67, 2
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
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 79
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 177
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7864
; TotalNumSgprs: 81
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 81
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
