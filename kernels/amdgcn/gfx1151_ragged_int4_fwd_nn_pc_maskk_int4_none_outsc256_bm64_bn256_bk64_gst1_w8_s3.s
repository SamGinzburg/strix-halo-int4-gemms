	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v121, 1, v0
	v_and_b32_e32 v120, 0x80, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s33, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[12:13], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s12
	s_addc_u32 s3, s5, s13
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s12
	s_addc_u32 s5, s7, s13
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[42:43], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[40:41], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s33, 8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	v_or_b32_e32 v89, s7, v0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v6, s7, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v7, 1, v0
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, s40
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[36:37], s[2:3], 0x0
	s_load_b64 s[38:39], s[4:5], 0x0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v119, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v90, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 1058 13                       ; ragged.py:1058:13
	s_mov_b32 s30, 0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v145, 31, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s41, 0, s0
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[2:3]
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s28, s0, s8
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s0, s35, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[36:37], v[10:11]
	v_and_b32_e32 v2, 0x88, v2
	v_and_b32_e32 v4, 24, v121
	v_mad_u64_u32 v[90:91], null, s0, s42, v[89:90]
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v123, v119, 5, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[38:39], v[10:11]
	v_add_nc_u32_e32 v10, s40, v18
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[6:7]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[92:93], null, s34, 3, v[90:91]
	v_xor_b32_e32 v4, 16, v123
	v_mad_u64_u32 v[93:94], null, s34, 5, v[90:91]
	v_mad_u64_u32 v[94:95], null, s34, 6, v[90:91]
	v_mad_u64_u32 v[95:96], null, s34, 7, v[90:91]
	v_mad_u64_u32 v[96:97], null, s34, 9, v[90:91]
	v_add_nc_u32_e32 v135, 0, v4
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v122, v2, v3
	v_mad_u64_u32 v[97:98], null, s34, 10, v[90:91]
	v_mad_u64_u32 v[98:99], null, s34, 11, v[90:91]
	v_mad_u64_u32 v[99:100], null, s34, 12, v[90:91]
	v_mad_u64_u32 v[100:101], null, s34, 13, v[90:91]
	v_mad_u64_u32 v[101:102], null, s34, 14, v[90:91]
	v_xor_b32_e32 v2, 0x110, v122
	v_xor_b32_e32 v5, 24, v123
	v_mad_u64_u32 v[102:103], null, s34, 15, v[90:91]
	v_mad_u64_u32 v[103:104], null, s34, 17, v[90:91]
	v_mad_u64_u32 v[104:105], null, s34, 18, v[90:91]
	v_mad_u64_u32 v[105:106], null, s34, 19, v[90:91]
	v_mad_u64_u32 v[106:107], null, s34, 20, v[90:91]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[12:13]
	v_cmp_le_i64_e64 s5, s[36:37], v[14:15]
	v_cmp_le_i64_e64 s6, s[36:37], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[38:39], v[6:7]
	v_cmp_gt_i64_e64 s12, s[38:39], v[12:13]
	v_cmp_gt_i64_e64 s13, s[38:39], v[14:15]
	v_cmp_gt_i64_e64 s14, s[38:39], v[16:17]
	v_or_b32_e32 v6, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_add_nc_u32_e32 v133, 0, v2
	v_add_nc_u32_e32 v136, 0, v5
	v_mov_b32_e32 v2, v1
	v_lshrrev_b32_e32 v13, 1, v19
	v_mov_b32_e32 v5, v1
	v_add_nc_u32_e32 v15, 8, v10
	v_add_nc_u32_e32 v16, 16, v10
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[107:108], null, s34, 21, v[90:91]
	v_mad_u64_u32 v[108:109], null, s34, 22, v[90:91]
	v_mad_u64_u32 v[109:110], null, s34, 23, v[90:91]
	v_mad_u64_u32 v[110:111], null, s34, 24, v[90:91]
	v_mad_u64_u32 v[111:112], null, s34, 25, v[90:91]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[38:39], v[8:9]
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_or_b32_e32 v11, 0x1300, v0
	v_add3_u32 v124, 0, v119, v13
	v_mul_lo_u32 v125, v10, s35
	v_add_nc_u32_e32 v13, 24, v10
	v_add_nc_u32_e32 v18, 48, v10
	v_add_nc_u32_e32 v137, 0, v6
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v138, 0, v7
	v_mov_b32_e32 v6, v1
	v_mul_lo_u32 v126, v15, s35
	v_add_nc_u32_e32 v15, 32, v10
	v_mov_b32_e32 v7, v1
	v_mul_lo_u32 v127, v16, s35
	v_add_nc_u32_e32 v16, 40, v10
	v_add_nc_u32_e32 v10, 56, v10
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[112:113], null, s34, 26, v[90:91]
	v_mad_u64_u32 v[113:114], null, s34, 27, v[90:91]
	v_mad_u64_u32 v[114:115], null, s34, 28, v[90:91]
	v_xor_b32_e32 v3, 8, v123
	v_or_b32_e32 v12, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	v_or_b32_e32 v17, 0x1f00, v0
	v_mad_u64_u32 v[115:116], null, s34, 29, v[90:91]
	v_mad_u64_u32 v[116:117], null, s34, 30, v[90:91]
	v_add_nc_u32_e32 v139, 0, v8
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v140, 0, v9
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v141, 0, v11
	v_mov_b32_e32 v8, v1
	v_mul_lo_u32 v128, v13, s35
	v_mov_b32_e32 v9, v1
	v_mul_lo_u32 v130, v16, s35
	v_mov_b32_e32 v11, v1
	v_mul_lo_u32 v131, v18, s35
	v_mov_b32_e32 v13, v1
	v_mul_lo_u32 v132, v10, s35
	v_mov_b32_e32 v10, v1
	v_mul_lo_u32 v129, v15, s35
	v_mad_u64_u32 v[117:118], null, s34, 31, v[90:91]
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v134, 0, v3
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v142, 0, v12
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v143, 0, v14
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v144, 0, v17
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v26, v1
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v146, s34, v90
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_lshl_add_u32 v147, s34, 1, v90
	v_lshl_add_u32 v91, s34, 2, v90
	v_lshl_add_u32 v118, s34, 3, v90
	v_lshl_add_u32 v148, s34, 4, v90
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s15, vcc_lo, s7
	s_and_b32 s14, s6, s14
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s29, s1, s9
	s_and_b32 s2, s2, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s4, s20
	s_mov_b32 s5, s21
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	s_or_b32 s67, s30, 1
	s_or_b32 s0, s30, 2
	s_or_b32 s66, s30, 3
	s_or_b32 s65, s30, 4
	s_or_b32 s64, s30, 5
	s_or_b32 s63, s30, 6
	s_or_b32 s62, s30, 7
	s_or_b32 s61, s30, 8
	s_or_b32 s60, s30, 9
	s_or_b32 s59, s30, 10
	s_or_b32 s58, s30, 11
	s_or_b32 s57, s30, 12
	s_or_b32 s56, s30, 13
	s_or_b32 s55, s30, 14
	s_or_b32 s54, s30, 15
	s_or_b32 s53, s30, 16
	s_or_b32 s52, s30, 17
	s_or_b32 s51, s30, 18
	s_or_b32 s50, s30, 19
	s_or_b32 s49, s30, 20
	s_or_b32 s48, s30, 21
	s_or_b32 s47, s30, 22
	s_or_b32 s46, s30, 23
	s_or_b32 s45, s30, 24
	s_or_b32 s44, s30, 25
	s_or_b32 s43, s30, 26
	s_or_b32 s31, s30, 27
	s_or_b32 s23, s30, 28
	s_or_b32 s22, s30, 29
	s_or_b32 s21, s30, 30
	s_or_b32 s20, s30, 31
	.loc	1 1068 65                       ; ragged.py:1068:65
	s_mul_i32 s1, s30, s34
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cmp_lt_i32 s67, s35
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v65, s30, v145
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v66, s1, v90
	v_add_nc_u32_e32 v67, s1, v146
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s0, s35
	v_add_nc_u32_e32 v68, s1, v147
	v_add_nc_u32_e32 v69, s1, v92
	v_add_nc_u32_e32 v70, s1, v91
	v_add_nc_u32_e32 v71, s1, v93
	v_add_nc_u32_e32 v72, s1, v94
	v_add_nc_u32_e32 v73, s1, v95
	v_add_nc_u32_e32 v74, s1, v118
	v_add_nc_u32_e32 v75, s1, v96
	v_add_nc_u32_e32 v76, s1, v97
	v_add_nc_u32_e32 v77, s1, v98
	v_add_nc_u32_e32 v78, s1, v99
	v_add_nc_u32_e32 v79, s1, v100
	v_add_nc_u32_e32 v80, s1, v101
	v_add_nc_u32_e32 v81, s1, v102
	v_add_nc_u32_e32 v82, s1, v148
	v_add_nc_u32_e32 v83, s1, v103
	v_add_nc_u32_e32 v84, s1, v104
	v_add_nc_u32_e32 v85, s1, v105
	v_add_nc_u32_e32 v86, s1, v106
	v_add_nc_u32_e32 v87, s1, v107
	v_add_nc_u32_e32 v88, s1, v108
	v_add_nc_u32_e32 v149, s1, v109
	v_add_nc_u32_e32 v150, s1, v110
	v_add_nc_u32_e32 v151, s1, v111
	v_add_nc_u32_e32 v152, s1, v112
	v_add_nc_u32_e32 v153, s1, v113
	v_add_nc_u32_e32 v154, s1, v114
	v_add_nc_u32_e32 v155, s1, v115
	v_add_nc_u32_e32 v156, s1, v116
	v_add_nc_u32_e32 v157, s1, v117
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s66, s35
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v159, v126, v65
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v165, v66, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v67, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s65, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v67, 0x80000000, v68, s1
	v_cndmask_b32_e32 v68, 0x80000000, v69, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s64, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v69, 0x80000000, v70 :: v_dual_add_nc_u32 v158, v125, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s63, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v70, 0x80000000, v71 :: v_dual_add_nc_u32 v161, v128, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s62, s35
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v163, v130, v65
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v166, v66, s[8:11], 0 offen
	buffer_load_u8 v167, v67, s[8:11], 0 offen
	buffer_load_u8 v168, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v72, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s61, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v67, 0x80000000, v73, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s60, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v74, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s59, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x3
	buffer_load_u8 v170, v70, s[8:11], 0 offen
	buffer_load_u8 v171, v66, s[8:11], 0 offen
	buffer_load_u8 v172, v67, s[8:11], 0 offen
	buffer_load_u8 v173, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v75, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s58, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v67, 0x80000000, v76 :: v_dual_add_nc_u32 v160, v127, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s57, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v77, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s56, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v174, v66, s[8:11], 0 offen
	buffer_load_u8 v175, v67, s[8:11], 0 offen
	buffer_load_u8 v176, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v78, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s55, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v67, 0x80000000, v79 :: v_dual_add_nc_u32 v162, v129, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s54, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v80, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s53, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v177, v66, s[8:11], 0 offen
	buffer_load_u8 v178, v67, s[8:11], 0 offen
	buffer_load_u8 v179, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v81, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s52, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v67, 0x80000000, v82 :: v_dual_add_nc_u32 v164, v131, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	v_cmp_gt_i32_e64 s0, s35, v65
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v68, 0x80000000, v83 :: v_dual_add_nc_u32 v65, v132, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cmp_lt_i32 s51, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_u8 v180, v66, s[8:11], 0 offen
	buffer_load_u8 v181, v67, s[8:11], 0 offen
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s50, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v182, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v84, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s49, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v67, 0x80000000, v85, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s48, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v86, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s47, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v183, v66, s[8:11], 0 offen
	buffer_load_u8 v184, v67, s[8:11], 0 offen
	buffer_load_u8 v185, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v87, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s46, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v67, 0x80000000, v88, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s45, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v149, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s44, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v186, v66, s[8:11], 0 offen
	buffer_load_u8 v187, v67, s[8:11], 0 offen
	buffer_load_u8 v188, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v150, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s43, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v67, 0x80000000, v151, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s31, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v152, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s23, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v189, v66, s[8:11], 0 offen
	buffer_load_u8 v190, v67, s[8:11], 0 offen
	buffer_load_u8 v191, v68, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v153, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s22, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v67, 0x80000000, v154, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s21, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v68, 0x80000000, v155, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s20, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x2
	buffer_load_u8 v169, v69, s[8:11], 0 offen
	buffer_load_u8 v192, v66, s[8:11], 0 offen
	buffer_load_u8 v193, v67, s[8:11], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v156, vcc_lo
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s15, s0
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v75, 0x80000000, v157, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v67, 0x80000000, v158, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s28, s0
	.loc	1 1110 17 is_stmt 1             ; ragged.py:1110:17
	s_add_i32 s30, s30, 32
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v69, 0x80000000, v159, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s29, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v70, 0x80000000, v160, s1
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s2, s0
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	v_add_nc_u32_e32 v160, 0, v0
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v71, 0x80000000, v161, s1
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s1, s3, s0
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v72, 0x80000000, v162, s1
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s12, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v73, 0x80000000, v163, s1
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s13, s0
	s_and_b32 s0, s14, s0
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v74, 0x80000000, v164, s1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_u8 v157, v68, s[8:11], 0 offen
	buffer_load_u8 v158, v66, s[8:11], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v66, v67, s[4:7], 0 offen
	buffer_load_u8 v67, v70, s[4:7], 0 offen
	buffer_load_u8 v68, v72, s[4:7], 0 offen
	buffer_load_u8 v70, v74, s[4:7], 0 offen
	buffer_load_u8 v65, v65, s[4:7], 0 offen
	buffer_load_u8 v72, v73, s[4:7], 0 offen
	buffer_load_u8 v71, v71, s[4:7], 0 offen
	buffer_load_u8 v69, v69, s[4:7], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v159, v75, s[8:11], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v73, 0, v122
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s30, s35
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(8)
	ds_store_b8 v73, v66
	s_waitcnt vmcnt(7)
	ds_store_b8 v73, v67 offset:512
	v_add_nc_u32_e32 v66, 0, v123
	s_waitcnt vmcnt(6)
	ds_store_b8 v73, v68 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v70 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v133, v69
	ds_store_b8 v133, v71 offset:512
	ds_store_b8 v133, v72 offset:1024
	ds_store_b8 v133, v65 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[149:152], v66 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v134 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v134 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v135 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v135 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v136 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v136 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v160, v165
	ds_store_b8 v160, v166 offset:256
	ds_store_b8 v160, v167 offset:512
	ds_store_b8 v160, v169 offset:1024
	ds_store_b8 v160, v170 offset:1280
	ds_store_b8 v160, v171 offset:1536
	ds_store_b8 v160, v173 offset:2048
	ds_store_b8 v160, v174 offset:2304
	ds_store_b8 v160, v175 offset:2560
	ds_store_b8 v160, v177 offset:3072
	ds_store_b8 v160, v178 offset:3328
	ds_store_b8 v160, v179 offset:3584
	ds_store_b8 v160, v181 offset:4096
	ds_store_b8 v160, v182 offset:4352
	ds_store_b8 v160, v183 offset:4608
	ds_store_b8 v160, v185 offset:5120
	ds_store_b8 v160, v186 offset:5376
	ds_store_b8 v160, v187 offset:5632
	ds_store_b8 v160, v189 offset:6144
	ds_store_b8 v160, v190 offset:6400
	ds_store_b8 v160, v191 offset:6656
	ds_store_b8 v160, v193 offset:7168
	ds_store_b8 v160, v157 offset:7424
	ds_store_b8 v160, v158 offset:7680
	ds_store_b8 v137, v168
	ds_store_b8 v138, v172
	ds_store_b8 v139, v176
	ds_store_b8 v140, v180
	ds_store_b8 v141, v184
	ds_store_b8 v142, v188
	ds_store_b8 v143, v192
	s_waitcnt vmcnt(0)
	ds_store_b8 v144, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v157, v124 offset:1280
	ds_load_u8 v158, v124 offset:1024
	ds_load_u8 v159, v124 offset:1792
	ds_load_u8 v160, v124 offset:1536
	ds_load_u8 v161, v124 offset:1920
	ds_load_u8 v162, v124 offset:1664
	ds_load_u8 v163, v124 offset:1408
	ds_load_u8 v164, v124 offset:1152
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v124 offset:256
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v124
	ds_load_u8 v165, v124 offset:896
	ds_load_u8 v166, v124 offset:640
	ds_load_u8 v167, v124 offset:384
	ds_load_u8 v168, v124 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v160, v160, v158, 0xc0c0004
	ds_load_u8 v158, v124 offset:768
	ds_load_u8 v169, v124 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v158, 0xc0c0004
	v_lshl_or_b32 v158, v159, 16, v157
	v_perm_b32 v159, v164, v163, 0xc0c0004
	v_perm_b32 v163, v166, v165, 0xc0c0004
	ds_load_u8 v165, v124 offset:5888
	ds_load_u8 v166, v124 offset:5632
	v_lshl_or_b32 v157, v169, 16, v160
	v_perm_b32 v160, v162, v161, 0xc0c0004
	v_perm_b32 v161, v168, v167, 0xc0c0004
	ds_load_u8 v162, v124 offset:3328
	ds_load_u8 v167, v124 offset:6016
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v160, v160, 16, v159
	v_lshl_or_b32 v159, v163, 16, v161
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[151:152], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v161, v124 offset:3840
	ds_load_u8 v163, v124 offset:3584
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[151:152], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v149, v124 offset:2304
	ds_load_u8 v150, v124 offset:2048
	ds_load_u8 v151, v124 offset:2816
	ds_load_u8 v152, v124 offset:2560
	ds_load_u8 v157, v124 offset:3968
	ds_load_u8 v158, v124 offset:3712
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[155:156], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v124 offset:3456
	ds_load_u8 v154, v124 offset:3200
	ds_load_u8 v155, v124 offset:2944
	ds_load_u8 v156, v124 offset:2688
	ds_load_u8 v159, v124 offset:2432
	ds_load_u8 v160, v124 offset:2176
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v163, v161, 0xc0c0004
	ds_load_u8 v163, v124 offset:5120
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v152, v158, v157, 0xc0c0004
	ds_load_u8 v157, v124 offset:5760
	ds_load_u8 v158, v124 offset:5504
	v_lshl_or_b32 v149, v151, 16, v149
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v151, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v153, v160, v159, 0xc0c0004
	ds_load_u8 v160, v124 offset:4480
	ds_load_u8 v164, v124 offset:3072
	v_perm_b32 v154, v156, v155, 0xc0c0004
	ds_load_u8 v155, v124 offset:5248
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v156, v124 offset:4992
	ds_load_u8 v159, v124 offset:4736
	v_lshl_or_b32 v151, v154, 16, v153
	v_perm_b32 v154, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[151:152], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v157, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[151:152], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[151:152], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v124 offset:5376
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v159, v159, v156, 0xc0c0004
	v_lshl_or_b32 v150, v161, 16, v162
	ds_load_u8 v161, v124 offset:4352
	ds_load_u8 v162, v124 offset:4096
	v_wmma_i32_16x16x16_iu4 v[1:8], v[149:150], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[149:150], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[149:150], v[83:84], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v163, v164, 0xc0c0004
	ds_load_u8 v163, v124 offset:4224
	v_perm_b32 v155, v155, v158, 0xc0c0004
	ds_load_u8 v158, v124 offset:7936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v124 offset:4864
	ds_load_u8 v164, v124 offset:4608
	v_lshl_or_b32 v154, v154, 16, v153
	v_lshl_or_b32 v156, v157, 16, v155
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v160, v163, v160, 0xc0c0004
	ds_load_u8 v163, v124 offset:8064
	ds_load_u8 v165, v124 offset:7808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v124 offset:7680
	v_lshl_or_b32 v155, v159, 16, v160
	ds_load_u8 v157, v124 offset:7552
	ds_load_u8 v159, v124 offset:7296
	v_lshl_or_b32 v153, v162, 16, v161
	ds_load_u8 v161, v124 offset:7424
	ds_load_u8 v162, v124 offset:7168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[155:156], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[155:156], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[153:154], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[155:156], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v163, v165, v163, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v159, v159, v157, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v162, v161, 0xc0c0004
	ds_load_u8 v161, v124 offset:6400
	v_perm_b32 v158, v164, v158, 0xc0c0004
	ds_load_u8 v162, v124 offset:6144
	ds_load_u8 v164, v124 offset:7040
	ds_load_u8 v166, v124 offset:6784
	ds_load_u8 v167, v124 offset:6528
	ds_load_u8 v168, v124 offset:6272
	v_lshl_or_b32 v158, v158, 16, v160
	v_lshl_or_b32 v160, v163, 16, v159
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v124 offset:6912
	ds_load_u8 v169, v124 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v165, v168, v167, 0xc0c0004
	v_perm_b32 v164, v166, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v164, 16, v165
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[67:68], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v169, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v162, 16, v161
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[67:68], v[49:56] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v80, v1
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v84, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v82, v7
	v_cvt_f32_i32_e32 v81, v8
	v_cvt_f32_i32_e32 v90, v9
	v_cvt_f32_i32_e32 v73, v10
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v70, v12
	v_cvt_f32_i32_e32 v69, v13
	v_cvt_f32_i32_e32 v93, v14
	v_cvt_f32_i32_e32 v92, v15
	v_cvt_f32_i32_e32 v91, v16
	v_cvt_f32_i32_e32 v68, v17
	v_cvt_f32_i32_e32 v67, v18
	v_cvt_f32_i32_e32 v65, v19
	v_cvt_f32_i32_e32 v66, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v75, v23
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v85, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v23, v28
	v_cvt_f32_i32_e32 v21, v29
	v_cvt_f32_i32_e32 v88, v30
	v_cvt_f32_i32_e32 v87, v31
	v_cvt_f32_i32_e32 v86, v32
	v_cvt_f32_i32_e32 v24, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v19, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v29, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v18, v42
	v_cvt_f32_i32_e32 v17, v43
	v_cvt_f32_i32_e32 v15, v44
	v_cvt_f32_i32_e32 v13, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v11, v51
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v34, v53
	v_cvt_f32_i32_e32 v33, v54
	v_cvt_f32_i32_e32 v32, v55
	v_cvt_f32_i32_e32 v31, v56
	v_cvt_f32_i32_e32 v39, v57
	v_cvt_f32_i32_e32 v10, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v40, v64
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, v89
	v_mov_b32_e32 v7, v121
	v_mov_b32_e32 v1, v120
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 32, v119
	v_or_b32_e32 v8, 48, v119
	v_or_b32_e32 v45, 16, v119
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s1, s40, v43
	v_add_co_u32 v8, s0, s40, v8
	v_add_co_ci_u32_e64 v44, null, s41, 0, s1
	v_add_co_u32 v45, s1, s40, v45
	v_add_co_ci_u32_e64 v9, null, s41, 0, s0
	v_add_co_ci_u32_e64 v46, null, s41, 0, s1
	v_add_co_u32 v47, s1, s40, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v48, null, s41, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[8:9]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[36:37], v[45:46]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[36:37], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[47:48]
	v_cmp_gt_i64_e64 s4, s[38:39], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[43:44]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[38:39], v[43:44]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v9, 1, v47
	v_lshlrev_b32_e32 v44, 1, v45
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s16
	s_clause 0x3
	buffer_load_u16 v45, v9, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v46, v8, s[28:31], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	s_mul_i32 s0, s34, s42
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s29, s19, 0xffff
	v_add_lshl_u32 v6, v6, s0, 1
	s_mov_b32 s28, s18
	s_mov_b32 s0, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v96, 3, v1
.Ltmp6:
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v47, v6, s[28:31], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v57, v76, v45 :: v_dual_and_b32 v48, 28, v7
	v_mul_f32_e32 v76, v88, v44
	v_dual_mul_f32 v55, v80, v45 :: v_dual_and_b32 v6, 0xf0, v0
	v_dual_mul_f32 v61, v84, v45 :: v_dual_lshlrev_b32 v8, 5, v0
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v49, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v51, v6, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v56, v78, v45 :: v_dual_and_b32 v89, 4, v0
	v_dual_mul_f32 v59, v81, v45 :: v_dual_and_b32 v50, 32, v8
	v_dual_mul_f32 v58, v74, v45 :: v_dual_lshlrev_b32 v95, 4, v0
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v52, v49, 9, 0
.Ltmp10:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v53, v6, 1, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v48, v51, v50, v48
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v62, v83, v45 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v71, v71, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v74, v70, v45 :: v_dual_lshlrev_b32 v47, 16, v47
	v_dual_mul_f32 v54, v91, v45 :: v_dual_and_b32 v9, 0x60, v0
	v_dual_mul_f32 v63, v82, v45 :: v_dual_and_b32 v94, 8, v0
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v99, v89, 2, v52
.Ltmp12:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v50, v90, v45
	v_mul_f32_e32 v51, v93, v45
	v_mul_f32_e32 v52, v92, v45
	v_mul_f32_e32 v73, v73, v45
	v_dual_mul_f32 v64, v85, v44 :: v_dual_lshlrev_b32 v7, 1, v1
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v8, 5, v49
.Ltmp14:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v45, v69, v45 :: v_dual_mul_f32 v78, v87, v44
	v_dual_mul_f32 v87, v86, v44 :: v_dual_mul_f32 v88, v36, v43
	v_mul_f32_e32 v41, v41, v46
	v_dual_mul_f32 v40, v40, v46 :: v_dual_mul_f32 v67, v67, v44
	v_dual_mul_f32 v90, v68, v44 :: v_dual_mul_f32 v105, v30, v43
	v_dual_mul_f32 v66, v66, v44 :: v_dual_mul_f32 v103, v20, v43
	v_dual_mul_f32 v91, v65, v44 :: v_dual_mul_f32 v24, v24, v43
	v_dual_mul_f32 v92, v79, v44 :: v_dual_mul_f32 v29, v29, v43
	v_dual_mul_f32 v93, v77, v44 :: v_dual_mul_f32 v102, v22, v43
	v_dual_mul_f32 v75, v75, v44 :: v_dual_mul_f32 v28, v28, v43
	v_dual_mul_f32 v100, v72, v44 :: v_dual_mul_f32 v27, v27, v43
	v_dual_mul_f32 v26, v26, v44 :: v_dual_mul_f32 v17, v17, v43
	v_dual_mul_f32 v25, v25, v44 :: v_dual_mul_f32 v104, v19, v43
	v_dual_mul_f32 v101, v23, v44 :: v_dual_mul_f32 v18, v18, v43
	v_dual_mul_f32 v44, v21, v44 :: v_dual_mul_f32 v109, v14, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v48, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v53 offset:512
	ds_load_b128 v[20:23], v53 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v107, v13, v43 :: v_dual_mul_f32 v108, v16, v46
	v_mul_f32_e32 v110, v12, v46
	v_mul_f32_e32 v111, v11, v46
	v_mul_f32_e32 v116, v10, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[10:13], v53
	ds_load_b128 v[83:86], v53 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v38, v38, v43 :: v_dual_mul_f32 v39, v39, v46
	v_mul_f32_e32 v35, v35, v43
	v_dual_mul_f32 v37, v37, v43 :: v_dual_mul_f32 v42, v42, v46
	v_mul_f32_e32 v114, v32, v46
	v_mul_f32_e32 v115, v31, v46
	v_mul_f32_e32 v3, v3, v46
	v_mul_f32_e32 v2, v2, v46
	v_dual_mul_f32 v106, v15, v43 :: v_dual_mul_f32 v113, v33, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v68, v64, v79 :: v_dual_mul_f32 v65, v51, v21
	v_dual_mul_f32 v69, v52, v22 :: v_dual_mul_f32 v36, v35, v79
	v_mul_f32_e32 v70, v54, v23
	v_mul_f32_e32 v48, v78, v22
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v32, v38, v21 :: v_dual_mul_f32 v51, v55, v10
	v_mul_f32_e32 v16, v40, v23
	v_mul_f32_e32 v54, v57, v13
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v52, v56, v11 :: v_dual_mul_f32 v57, v63, v85
	v_dual_mul_f32 v56, v62, v84 :: v_dual_mul_f32 v75, v75, v85
	v_mul_f32_e32 v55, v61, v83
	v_dual_mul_f32 v64, v45, v20 :: v_dual_mul_f32 v63, v74, v82
	v_dual_mul_f32 v62, v71, v81 :: v_dual_mul_f32 v71, v26, v80
	v_dual_mul_f32 v61, v73, v80 :: v_dual_mul_f32 v112, v34, v46
	v_dual_mul_f32 v47, v87, v23 :: v_dual_mul_f32 v4, v4, v46
	v_mul_f32_e32 v53, v58, v12
	v_mul_f32_e32 v60, v50, v79
	v_dual_mul_f32 v50, v76, v21 :: v_dual_mul_f32 v15, v41, v22
	v_dual_mul_f32 v30, v37, v22 :: v_dual_mul_f32 v77, v66, v13
	v_dual_mul_f32 v19, v39, v79 :: v_dual_mul_f32 v14, v42, v21
	v_mul_f32_e32 v59, v59, v86
	v_mul_f32_e32 v76, v91, v12
	v_dual_mul_f32 v73, v67, v11 :: v_dual_mul_f32 v72, v90, v10
	v_mul_f32_e32 v43, v104, v12
	v_dual_mul_f32 v74, v100, v86 :: v_dual_mul_f32 v45, v102, v11
	v_dual_mul_f32 v78, v93, v84 :: v_dual_mul_f32 v39, v28, v85
	v_mul_f32_e32 v79, v92, v83
	v_dual_mul_f32 v58, v44, v20 :: v_dual_mul_f32 v41, v105, v83
	v_dual_mul_f32 v66, v101, v82 :: v_dual_mul_f32 v33, v107, v20
	v_mul_f32_e32 v67, v25, v81
	v_dual_mul_f32 v44, v103, v13 :: v_dual_mul_f32 v37, v18, v80
	v_dual_mul_f32 v46, v24, v10 :: v_dual_mul_f32 v35, v17, v81
	v_dual_mul_f32 v40, v29, v84 :: v_dual_mul_f32 v29, v108, v10
	v_dual_mul_f32 v28, v109, v11 :: v_dual_mul_f32 v17, v2, v20
	v_mul_f32_e32 v18, v3, v82
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v51|, |v52|
	v_max3_f32 v3, |v54|, |v55|, |v56|
	v_max3_f32 v10, |v61|, |v62|, |v63|
	v_max3_f32 v11, |v64|, |v65|, |v69|
.Ltmp16:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v31, v88, v23 :: v_dual_mul_f32 v38, v27, v86
	v_dual_mul_f32 v25, v112, v83 :: v_dual_mul_f32 v34, v106, v82
	v_dual_mul_f32 v27, v111, v12 :: v_dual_mul_f32 v26, v110, v13
	v_dual_mul_f32 v21, v115, v86 :: v_dual_mul_f32 v22, v114, v85
	v_mul_f32_e32 v23, v116, v80
	v_mul_f32_e32 v20, v4, v81
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v57|, |v59|, |v60|
	v_max_f32_e64 v12, |v72|, |v73|
	v_max3_f32 v13, |v77|, |v79|, |v78|
	v_max3_f32 v80, |v71|, |v67|, |v66|
	v_max3_f32 v81, |v58|, |v50|, |v48|
	v_max3_f32 v2, v2, |v53|, v3
	v_max3_f32 v3, v10, v11, |v70|
	v_max3_f32 v42, |v75|, |v74|, |v68|
	v_max3_f32 v10, v12, |v76|, v13
	v_max3_f32 v11, v80, v81, |v47|
	v_max_f32_e64 v82, |v46|, |v45|
	v_max3_f32 v2, v2, v4, v3
	v_max3_f32 v83, |v44|, |v41|, |v40|
	v_max3_f32 v85, |v37|, |v35|, |v34|
	v_max3_f32 v3, v10, v42, v11
	v_max3_f32 v86, |v33|, |v32|, |v30|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v24, v113, v84
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v87, |v29|, |v28|
	v_max3_f32 v91, |v23|, |v20|, |v18|
	v_max3_f32 v92, |v17|, |v14|, |v15|
	v_max_f32_e32 v11, v11, v11
	v_max3_f32 v88, |v26|, |v25|, |v24|
	v_max3_f32 v84, |v39|, |v38|, |v36|
	v_max3_f32 v90, |v22|, |v21|, |v19|
	v_max3_f32 v12, v82, |v43|, v83
	v_max3_f32 v13, v85, v86, |v31|
	v_max3_f32 v80, v87, |v27|, v88
	v_max3_f32 v81, v91, v92, |v16|
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v82, 0x680, v95, v8
	v_lshl_add_u32 v97, v89, 6, 0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v12, v84, v13
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v80, v90, v81
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v98, v8, v9
	v_lshl_add_u32 v10, v94, 4, v99
	v_permlanex16_b32 v42, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v81, v82, v9
	v_permlanex16_b32 v80, v13, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v82, v10, v7, v98
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v42, v42
	v_dual_max_f32 v10, v2, v11 :: v_dual_add_nc_u32 v1, 0, v1
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v11, v3, v12 :: v_dual_max_f32 v12, v4, v42
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v97, v96, v81
	s_waitcnt lgkmcnt(0)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v80
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	v_lshrrev_b32_e32 v80, 1, v9
	v_lshl_add_u32 v49, v49, 4, 0
	ds_store_b128 v82, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v2
	v_lshlrev_b32_e32 v82, 5, v89
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v10
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v3, v2
	v_max_f32_e32 v10, v11, v11
	v_max_f32_e32 v42, v13, v13
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_mov_b32 v4, v11
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v42, v13
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v10, v4 :: v_dual_max_f32 v4, v12, v11
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v2 :: v_dual_mov_b32 v42, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v42, v42, v42
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v10, v13
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v11 :: v_dual_max_f32 v11, v4, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v81, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v13, v10 :: v_dual_mov_b32 v13, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v81, v81, v81 :: v_dual_mov_b32 v4, v10
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_mov_b32 v12, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v4, v4
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v10, v4
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v3, v12 :: v_dual_lshlrev_b32 v12, 3, v94
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v42, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v80, v1, v80, v12
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v2, v13
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v10, v49, v82, v12
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v42, v42
	v_max_f32_e32 v2, v3, v42
	v_max_f32_e32 v3, v11, v81
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 4, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.h, 0
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v80, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v10
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v10, 63, v0
	v_or_b32_e32 v12, 48, v11
	v_or_b32_e32 v49, 32, v11
	v_or_b32_e32 v84, 16, v11
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, v42.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s40, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s41, 0, s0
	v_add_co_u32 v3, s0, s40, v11
	v_add_co_ci_u32_e64 v4, null, s41, 0, s0
	v_add_co_u32 v12, s0, s40, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v13, null, s41, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v80, v80, v80
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v81, v81, v81
	v_max_f32_e32 v83, v83, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, v42.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v87, 0x2b8cbccc, v80
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v80, s0, s40, v49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v89, 0x2b8cbccc, v82 :: v_dual_max_f32 v88, 0x2b8cbccc, v81
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v87
	v_div_scale_f32 v98, vcc_lo, v87, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v89
	v_rcp_f32_e32 v49, v91
	v_max_f32_e32 v90, 0x2b8cbccc, v83
	v_div_scale_f32 v93, null, 0x40e00000, 0x40e00000, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s41, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v94, null, 0x40e00000, 0x40e00000, v90
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v91, v49, 1.0
	v_div_scale_f32 v99, s1, v89, 0x40e00000, v89
	v_rcp_f32_e32 v97, v94
	v_div_scale_f32 v100, s2, v88, 0x40e00000, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v49, v82, v49
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s40, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v83, -v92, v95, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v101, -v93, v96, 1.0
	v_mul_f32_e32 v84, v98, v49
	v_div_scale_f32 v103, s3, v90, 0x40e00000, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v95, v83, v95
	v_fma_f32 v102, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v105, -v91, v84, v98
	v_fmac_f32_e32 v96, v101, v96
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s41, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v101, v99, v95 :: v_dual_fmac_f32 v84, v105, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v97, v102, v97 :: v_dual_mul_f32 v102, v100, v96
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[12:13]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v106, -v92, v101, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v3, -v91, v84, v98
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v107, -v93, v102, v100
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v101, v106, v95
	v_div_fmas_f32 v3, v3, v49, v84
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v102, v107, v96
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[12:13]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v92, v101, v99
	v_div_fixup_f32 v3, v3, 0x40e00000, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v93, v102, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v95, v101
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v3.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v49, v91, v96, v102
	s_mov_b32 vcc_lo, s3
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v12, 1, v85
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v12, v3, v12, 0x7fff
	v_mov_b16_e32 v42.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v12
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v81, v81, v51
	v_div_scale_f32 v95, s13, v57, v81, v57
	v_div_scale_f32 v106, null, v81, v81, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v115, v82
	v_div_scale_f32 v102, null, v81, v81, v62
	v_rcp_f32_e32 v128, v106
	v_div_scale_f32 v87, s9, v53, v81, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v126, v102
	v_div_scale_f32 v110, null, v81, v81, v69
	v_div_scale_f32 v91, s11, v55, v81, v55
	v_fma_f32 v133, -v82, v115, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v130, v110
	v_fma_f32 v145, -v106, v128, 1.0
	v_div_scale_f32 v98, null, v81, v81, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v115, v133, v115 :: v_dual_mul_f32 v104, v103, v97
	v_fmac_f32_e32 v128, v145, v128
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v143, -v102, v126, 1.0
	v_div_scale_f32 v107, s20, v64, v81, v64
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v108, -v94, v104, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v124, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v126, v143, v126
	v_fma_f32 v147, -v110, v130, 1.0
	v_dual_mul_f32 v145, v107, v128 :: v_dual_fmac_f32 v104, v108, v97
	v_div_scale_f32 v108, null, v81, v81, v65
	v_div_scale_f32 v111, s22, v69, v81, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v94, v104, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v94, null, v81, v81, v57
	v_rcp_f32_e32 v129, v108
	v_div_scale_f32 v103, s17, v62, v81, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v122, v94
	v_fmac_f32_e32 v130, v147, v130
	v_fma_f32 v141, -v98, v124, 1.0
	v_mul_f32_e32 v143, v103, v126
	v_div_scale_f32 v96, null, v81, v81, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v147, v111, v130
	v_fma_f32 v146, -v108, v129, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v159, -v102, v143, v103
	v_div_scale_f32 v99, s15, v60, v81, v60
	v_fma_f32 v139, -v94, v122, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v129, v146, v129
	v_fmac_f32_e32 v143, v159, v126
	v_fma_f32 v163, -v110, v147, v111
	v_fmac_f32_e32 v124, v141, v124
	v_fmac_f32_e32 v122, v139, v122
	v_fma_f32 v161, -v106, v145, v107
	v_div_scale_f32 v100, null, v81, v81, v61
	v_rcp_f32_e32 v123, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v139, v95, v122
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v84, v92, v97, v104
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v104, null, v81, v81, v63
	v_div_scale_f32 v92, null, v81, v81, v56
	v_div_scale_f32 v83, vcc_lo, v51, v81, v51
	v_rcp_f32_e32 v127, v104
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v121, v92
	v_fmac_f32_e32 v147, v163, v130
	v_mul_f32_e32 v141, v99, v124
	v_div_scale_f32 v85, s8, v52, v81, v52
	v_fma_f32 v155, -v94, v139, v95
	v_fmac_f32_e32 v145, v161, v128
	v_rcp_f32_e32 v125, v100
	v_mul_f32_e32 v133, v83, v115
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v144, -v104, v127, 1.0
	v_fma_f32 v138, -v92, v121, 1.0
	v_div_scale_f32 v89, s10, v54, v81, v54
	v_fma_f32 v157, -v98, v141, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v127, v144, v127
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v13, v49, 0x40e00000, v88
	v_div_fixup_f32 v49, v84, 0x40e00000, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v81, v81, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v84, 1, v42
	v_mov_b16_e32 v86.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v49.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v120, v90
	v_div_scale_f32 v88, null, v81, v81, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v81, v81, v53
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v4, v84, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v81, v81, v52
	v_rcp_f32_e32 v117, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v137, -v90, v120, 1.0
	v_rcp_f32_e32 v118, v88
	v_rcp_f32_e32 v116, v84
	v_fmac_f32_e32 v139, v155, v122
	v_fma_f32 v140, -v96, v123, 1.0
	v_fmac_f32_e32 v120, v137, v120
	v_div_scale_f32 v93, s12, v56, v81, v56
	v_fmac_f32_e32 v121, v138, v121
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v135, -v86, v117, 1.0
	v_mul_f32_e32 v137, v91, v120
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v136, -v88, v118, 1.0
	v_fma_f32 v134, -v84, v116, 1.0
	v_fma_f32 v149, -v82, v133, v83
	v_fmac_f32_e32 v117, v135, v117
	v_fma_f32 v153, -v90, v137, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v42, 1, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v116, v134, v116
	v_dual_fmac_f32 v118, v136, v118 :: v_dual_fmac_f32 v141, v157, v124
	v_mul_f32_e32 v135, v87, v117
	v_fmac_f32_e32 v137, v153, v120
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v49, v42, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v134, v85, v116
	v_mul_f32_e32 v136, v89, v118
	v_fma_f32 v151, -v86, v135, v87
	v_fma_f32 v142, -v100, v125, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v42, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v150, -v84, v134, v85
	v_div_scale_f32 v97, s14, v59, v81, v59
	v_fmac_f32_e32 v135, v151, v117
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v13, v13, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v123, v140, v123 :: v_dual_mul_f32 v138, v93, v121
	v_fmac_f32_e32 v133, v149, v115
	v_fma_f32 v152, -v88, v136, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v134, v150, v116
	v_div_scale_f32 v101, s16, v61, v81, v61
	v_dual_fmac_f32 v125, v142, v125 :: v_dual_mul_f32 v140, v97, v123
	v_fma_f32 v154, -v92, v138, v93
	v_fma_f32 v82, -v82, v133, v83
	v_fmac_f32_e32 v136, v152, v118
	v_fma_f32 v83, -v84, v134, v85
	v_mul_f32_e32 v142, v101, v125
	v_fma_f32 v156, -v96, v140, v97
	v_fma_f32 v84, -v86, v135, v87
	v_fmac_f32_e32 v138, v154, v121
	v_div_fmas_f32 v82, v82, v115, v133
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v85, -v88, v136, v89
	v_div_fmas_f32 v83, v83, v116, v134
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v158, -v100, v142, v101
	v_fma_f32 v86, -v90, v137, v91
	v_fmac_f32_e32 v140, v156, v123
	v_div_fmas_f32 v84, v84, v117, v135
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v112, null, v81, v81, v70
	v_fma_f32 v87, -v92, v138, v93
	v_div_fixup_f32 v51, v82, v81, v51
	v_div_fmas_f32 v82, v85, v118, v136
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v88, -v94, v139, v95
	v_fmac_f32_e32 v142, v158, v125
	v_div_fixup_f32 v52, v83, v81, v52
	v_div_fmas_f32 v83, v86, v120, v137
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v89, -v96, v140, v97
	v_rcp_f32_e32 v131, v112
	v_div_fixup_f32 v53, v84, v81, v53
	v_div_fmas_f32 v84, v87, v121, v138
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v90, -v98, v141, v99
	v_div_fixup_f32 v54, v82, v81, v54
	v_div_fmas_f32 v82, v88, v122, v139
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v91, -v100, v142, v101
	v_div_fixup_f32 v55, v83, v81, v55
	v_div_fmas_f32 v83, v89, v123, v140
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v92, -v102, v143, v103
	v_div_fixup_f32 v56, v84, v81, v56
	v_div_fmas_f32 v84, v90, v124, v141
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v57, v82, v81, v57
	v_div_fmas_f32 v82, v91, v125, v142
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v148, -v112, v131, 1.0
	v_div_fixup_f32 v59, v83, v81, v59
	v_div_fmas_f32 v83, v92, v126, v143
	v_div_scale_f32 v105, s19, v63, v81, v63
	v_div_scale_f32 v113, s18, v70, v81, v70
	v_fmac_f32_e32 v131, v148, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v83, v81, v62
	v_div_scale_f32 v83, null, v80, v80, v73
	v_div_scale_f32 v109, s21, v65, v81, v65
	v_mul_f32_e32 v144, v105, v127
	v_mul_f32_e32 v148, v113, v131
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v146, v109, v129
	v_div_scale_f32 v114, null, v80, v80, v72
	v_fma_f32 v160, -v104, v144, v105
	v_fma_f32 v86, -v112, v148, v113
	v_fma_f32 v162, -v108, v146, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v132, v114
	v_fma_f32 v94, -v106, v145, v107
	v_fmac_f32_e32 v144, v160, v127
	v_fmac_f32_e32 v148, v86, v131
	v_fma_f32 v86, -v83, v85, 1.0
	v_fmac_f32_e32 v146, v162, v129
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v93, -v104, v144, v105
	v_div_scale_f32 v90, s9, v73, v80, v73
	v_fmac_f32_e32 v85, v86, v85
	v_fma_f32 v95, -v108, v146, v109
	v_div_fixup_f32 v60, v84, v81, v60
	v_div_fmas_f32 v84, v93, v127, v144
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v61, v82, v81, v61
	v_mul_f32_e32 v93, v90, v85
	v_div_fmas_f32 v82, v94, v128, v145
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v63, v84, v81, v63
	v_div_fmas_f32 v84, v95, v129, v146
	v_fma_f32 v87, -v114, v132, 1.0
	v_div_fixup_f32 v64, v82, v81, v64
	v_fma_f32 v82, -v110, v147, v111
	v_fma_f32 v88, -v112, v148, v113
	v_div_fixup_f32 v65, v84, v81, v65
	v_fmac_f32_e32 v132, v87, v132
	v_div_scale_f32 v84, s8, v72, v80, v72
	v_div_scale_f32 v87, null, v80, v80, v76
	v_div_scale_f32 v91, null, v80, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v132
	v_rcp_f32_e32 v86, v87
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_scale_f32 v97, null, v80, v80, v78
	v_fma_f32 v92, -v114, v89, v84
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v49, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v92, v132
	v_div_fmas_f32 v82, v82, v130, v147
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v87, v86, 1.0
	v_div_fmas_f32 v88, v88, v131, v148
	v_fma_f32 v92, -v91, v95, 1.0
	v_div_fixup_f32 v69, v82, v81, v69
	v_div_scale_f32 v82, s10, v76, v80, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v70, v88, v81, v70
	v_fma_f32 v81, -v83, v93, v90
	v_div_scale_f32 v88, null, v80, v80, v79
	v_fmac_f32_e32 v86, v94, v86
	v_fma_f32 v84, -v114, v89, v84
	v_fmac_f32_e32 v93, v81, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v88
	v_fmac_f32_e32 v95, v92, v95
	v_mul_f32_e32 v81, v82, v86
	v_div_scale_f32 v92, s11, v77, v80, v77
	v_fma_f32 v83, -v83, v93, v90
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v84, v84, v132, v89
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v87, v81, v82
	v_mul_f32_e32 v90, v92, v95
	v_fma_f32 v96, -v88, v94, 1.0
	v_div_fmas_f32 v83, v83, v85, v93
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v89, v86
	v_fma_f32 v89, -v91, v90, v92
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v93, s8, v79, v80, v79
	v_div_fixup_f32 v72, v84, v80, v72
	v_div_fixup_f32 v73, v83, v80, v73
	v_fma_f32 v82, -v87, v81, v82
	v_fmac_f32_e32 v90, v89, v95
	v_mul_f32_e32 v83, v93, v94
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v80, v80, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v78, v80, v78
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v91, v90, v92
	v_fma_f32 v86, -v88, v83, v93
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v91, null, v80, v80, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v94
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v76, v81, v80, v76
	v_rcp_f32_e32 v86, v91
	v_div_fmas_f32 v82, v82, v95, v90
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v81, -v88, v83, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v84, 1.0
	v_div_scale_f32 v93, null, v80, v80, v68
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v77, v82, v80, v77
	v_fma_f32 v82, -v97, v90, v89
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v88, s10, v75, v80, v75
	v_fma_f32 v92, -v91, v86, 1.0
	v_div_fmas_f32 v81, v81, v94, v83
	v_rcp_f32_e32 v83, v93
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v88, v84
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s8, v74, v80, v74
	v_div_scale_f32 v94, null, v80, v80, v71
	v_div_fixup_f32 v79, v81, v80, v79
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v88
	v_mul_f32_e32 v95, v92, v86
	v_rcp_f32_e32 v96, v94
	v_fma_f32 v97, -v93, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v89, v84
	v_div_fmas_f32 v81, v81, v85, v90
	v_fma_f32 v85, -v91, v95, v92
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v68, v80, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v78, v81, v80, v78
	v_fma_f32 v90, -v94, v96, 1.0
	v_fma_f32 v81, -v87, v82, v88
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v85, v89, v83
	v_div_scale_f32 v88, null, v80, v80, v67
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v87, s11, v71, v80, v71
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v91, v95, v92
	v_fma_f32 v84, -v93, v85, v89
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v80, v80, v66
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v94, v91, v87
	v_div_fixup_f32 v75, v81, v80, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v90, 1.0
	v_fma_f32 v81, -v93, v85, v89
	v_div_fixup_f32 v74, v82, v80, v74
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s8, v67, v80, v67
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v86, -v92, v84, 1.0
	v_div_scale_f32 v89, null, v80, v80, v58
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v80, v80, v50
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v94, v91, v87
	v_mul_f32_e32 v85, v82, v90
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v87, s9, v66, v80, v66
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v68, v81, v80, v68
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v85, v82
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v86, 1.0
	v_fmac_f32_e32 v85, v91, v90
	v_fma_f32 v81, -v92, v94, v87
	v_div_fixup_f32 v71, v83, v80, v71
	v_div_scale_f32 v83, s10, v58, v80, v58
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v91, null, v80, v80, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v85, v82
	v_dual_fmac_f32 v94, v81, v84 :: v_dual_mul_f32 v81, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v50, v80, v50
	v_div_fmas_f32 v82, v82, v90, v85
	v_fma_f32 v85, -v92, v94, v87
	v_div_scale_f32 v97, null, v80, v80, v47
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v89, v81, v83
	v_mul_f32_e32 v90, v95, v96
	v_div_fmas_f32 v84, v85, v84, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v92, -v91, v88, 1.0
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v90, v95
	v_div_fixup_f32 v66, v84, v80, v66
	v_div_fixup_f32 v67, v82, v80, v67
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v48, v80, v48
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v49, v49, v46
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v92, v88
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v47, v80, v47
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v86, -v91, v83, v92
	v_div_scale_f32 v93, null, v49, v49, v45
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v87, v84, 1.0
	v_fmac_f32_e32 v83, v86, v88
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v85
	v_div_fixup_f32 v58, v81, v80, v58
	v_fma_f32 v81, -v91, v83, v92
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v49, v49, v43
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v50, v82, v80, v50
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s10, v46, v49, v46
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_fmas_f32 v81, v81, v88, v83
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v91, v84
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v88, s8, v45, v49, v45
	v_div_scale_f32 v92, null, v49, v49, v44
	v_div_fixup_f32 v48, v81, v80, v48
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v89, v84
	v_div_fmas_f32 v81, v81, v85, v90
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v43, v49, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v81, v80, v47
	v_fma_f32 v90, -v92, v96, 1.0
	v_fma_f32 v80, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v81, v89, v83
	v_div_scale_f32 v87, null, v49, v49, v41
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v85, s11, v44, v49, v44
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v81, v89
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v49, v49, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v85, v96 :: v_dual_fmac_f32 v81, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v82, v82, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v92, v90, v85
	v_div_fixup_f32 v46, v80, v49, v46
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v80, -v94, v81, v89
	v_div_fixup_f32 v45, v82, v49, v45
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v82, s8, v41, v49, v41
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v86, -v91, v84, 1.0
	v_div_scale_f32 v89, null, v49, v49, v39
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v90, v85
	v_mul_f32_e32 v83, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v86, s9, v40, v49, v40
	v_div_scale_f32 v92, null, v49, v49, v38
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v81, v81, v96, v90
	v_fma_f32 v90, -v87, v83, v82
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fixup_f32 v43, v80, v49, v43
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v49, v49, v36
	v_div_fixup_f32 v44, v81, v49, v44
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v81, s10, v39, v49, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v82, -v87, v83, v82
	v_fmac_f32_e32 v93, v80, v84
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v80, v81, v85 :: v_dual_fmac_f32 v95, v94, v95
	v_div_scale_f32 v94, s11, v38, v49, v38
	v_div_fmas_f32 v82, v82, v88, v83
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v96, null, v49, v49, v37
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v89, v80, v81
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v36, v49, v36
	v_div_fixup_f32 v41, v82, v49, v41
	v_div_fixup_f32 v40, v83, v49, v40
	v_fma_f32 v81, -v89, v80, v81
	v_fmac_f32_e32 v88, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v49, v49, v35
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, s9, v37, v49, v37
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	v_fma_f32 v85, -v90, v82, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v49, v49, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v39, v80, v49, v39
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v80, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v38, v81, v49, v38
	v_fma_f32 v81, -v96, v88, v89
	v_div_scale_f32 v90, s10, v35, v49, v35
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v49, v49, v33
	v_div_fmas_f32 v80, v80, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v84 :: v_dual_fmac_f32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v49, v49, v32
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s8, v34, v49, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v36, v80, v49, v36
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v88
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v33, v49, v33
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v37, v80, v49, v37
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v49, v49, v30
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v32, v49, v32
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v49, v49, v31
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v35, v80, v49, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v34, v81, v49, v34
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s8, v30, v49, v30
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v42, v42, v28
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v42, v42, v29
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s9, v31, v49, v31
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v33, v80, v49, v33
	v_div_fixup_f32 v32, v82, v49, v32
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v42, v42, v26
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v42, v42, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s10, v29, v42, v29
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v80, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s8, v28, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v80
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v96, v87, v82
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v27, v42, v27
	v_div_fixup_f32 v30, v81, v49, v30
	v_div_fixup_f32 v31, v83, v49, v31
	v_fma_f32 v49, -v85, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v92, v90
	v_div_scale_f32 v83, null, v42, v42, v25
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v81, -v95, v97, 1.0
	v_fma_f32 v80, -v89, v91, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v84, v82 :: v_dual_fmac_f32 v97, v81, v97
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s9, v26, v42, v26
	v_div_fmas_f32 v49, v49, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v42, v42, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v81, v97
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v29, v49, v42, v29
	v_fma_f32 v87, -v83, v80, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v81
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s8, v25, v42, v25
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v91
	v_mul_f32_e32 v49, v87, v80
	v_div_fixup_f32 v28, v82, v42, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v81, -v95, v85, v81
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v83, v49, v87
	v_div_fixup_f32 v27, v84, v42, v27
	v_div_scale_f32 v84, null, v42, v42, v22
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s10, v24, v42, v24
	v_div_fmas_f32 v81, v81, v97, v85
	v_fmac_f32_e32 v49, v89, v80
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v82, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v81, v42, v26
	v_fma_f32 v81, -v83, v49, v87
	v_div_scale_f32 v89, null, v42, v42, v21
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v49, v81, v80, v49
	v_div_scale_f32 v80, null, v42, v42, v19
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v81, s8, v22, v42, v22
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v42, v42, v23
	v_div_fixup_f32 v25, v49, v42, v25
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v89, v91, 1.0
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v80, v83, 1.0
	v_mul_f32_e32 v86, v81, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v49, v91
	v_div_scale_f32 v49, s9, v21, v42, v21
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v42, v42, v20
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_mul_f32_e32 v88, v49, v91
	v_div_scale_f32 v94, s10, v19, v42, v19
	v_fma_f32 v95, -v87, v93, 1.0
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v49
	v_mul_f32_e32 v97, v94, v83
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s11, v23, v42, v23
	v_div_fixup_f32 v24, v82, v42, v24
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v82, -v80, v97, v94
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v49, -v89, v88, v49
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s8, v20, v42, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v80, v97, v94
	v_fmac_f32_e32 v84, v82, v93
	v_div_fmas_f32 v81, v81, v90, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v85, v96
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v86, null, v42, v42, v18
	v_div_fmas_f32 v49, v49, v91, v88
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v22, v81, v42, v22
	v_div_fmas_f32 v80, v80, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v21, v49, v42, v21
	v_div_fixup_f32 v19, v80, v42, v19
	v_div_scale_f32 v80, null, v42, v42, v17
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v90, null, v42, v42, v16
	v_div_fmas_f32 v83, v83, v93, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v49, -v92, v82, v85
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v86, v88, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fixup_f32 v23, v83, v42, v23
	v_div_fmas_f32 v49, v49, v96, v82
	v_rcp_f32_e32 v82, v80
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v84, vcc_lo, v18, v42, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v49, v42, v20
	v_div_scale_f32 v81, null, v42, v42, v14
	v_mul_f32_e32 v89, v84, v88
	v_div_scale_f32 v83, null, v42, v42, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v80, v82, 1.0
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v86, v89, v84
	v_rcp_f32_e32 v87, v83
	v_fma_f32 v96, -v90, v92, 1.0
	v_fmac_f32_e32 v82, v49, v82
	v_div_scale_f32 v49, s8, v17, v42, v17
	v_fmac_f32_e32 v89, v93, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s11, v16, v42, v16
	v_mul_f32_e32 v95, v49, v82
	v_fma_f32 v91, -v81, v85, 1.0
	v_fma_f32 v84, -v86, v89, v84
	v_fma_f32 v94, -v83, v87, 1.0
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v93, -v80, v95, v49
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s9, v14, v42, v14
	v_div_fmas_f32 v84, v84, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v95, v93, v82
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s10, v15, v42, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v49, -v80, v95, v49
	v_mul_f32_e32 v97, v91, v85
	v_div_fixup_f32 v18, v84, v42, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_cvt_i32_f32_e32 v84, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v94, v87
	v_div_fmas_f32 v49, v49, v82, v95
	v_fma_f32 v86, -v81, v97, v91
	v_fma_f32 v80, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v83, v98, v94
	v_div_fixup_f32 v17, v49, v42, v17
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v52, v54
	v_rndne_f32_e32 v54, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v61, v63
	v_rndne_f32_e32 v63, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v86, v85 :: v_dual_fmac_f32 v98, v93, v87
	v_fmac_f32_e32 v99, v80, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v81, v97, v91
	v_fma_f32 v80, -v83, v98, v94
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v94, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v97
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v63, 15, v94
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	v_div_fixup_f32 v14, v81, v42, v14
	v_div_fixup_f32 v15, v80, v42, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v65, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v82, v42, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v51
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v53, v55
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v62
	v_rndne_f32_e32 v62, v64
	v_rndne_f32_e32 v64, v69
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v76, v79
	v_rndne_f32_e32 v77, v78
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v78, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v90, v32
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 10, v0
	v_and_b32_e32 v78, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v85, v36
	v_cvt_i32_f32_e32 v86, v37
	v_cvt_i32_f32_e32 v87, v35
	v_and_b32_e32 v34, 15, v76
	v_and_b32_e32 v35, 15, v77
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v74, 4, v119
	v_and_b32_e32 v75, 0x1800, v72
	v_lshlrev_b32_e32 v76, 6, v78
	v_lshlrev_b32_e32 v77, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v80, v44
	v_and_b32_e32 v44, 15, v48
	v_and_b32_e32 v48, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v9, v74, v9
	v_add3_u32 v79, 0, v75, v76
	v_and_or_b32 v8, 0x1b00, v77, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_cvt_i32_f32_e32 v89, v33
	v_cvt_i32_f32_e32 v91, v30
	v_cvt_i32_f32_e32 v92, v31
	v_cvt_i32_f32_e32 v105, v17
	v_cvt_i32_f32_e32 v106, v14
	v_cvt_i32_f32_e32 v107, v15
	v_cvt_i32_f32_e32 v108, v16
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v15, 15, v49
	v_and_b32_e32 v17, 15, v52
	v_and_b32_e32 v30, 15, v69
	v_and_b32_e32 v31, 15, v70
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v46, 15, v46
	v_and_b32_e32 v49, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v79, v79, v9, v7
	v_xad_u32 v80, v8, v6, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v16, 15, v51
	v_cvt_i32_f32_e32 v81, v41
	v_cvt_i32_f32_e32 v82, v40
	v_cvt_i32_f32_e32 v83, v39
	v_cvt_i32_f32_e32 v97, v25
	v_cvt_i32_f32_e32 v98, v24
	v_cvt_i32_f32_e32 v99, v22
	v_cvt_i32_f32_e32 v100, v21
	v_cvt_i32_f32_e32 v101, v19
	v_cvt_i32_f32_e32 v102, v23
	v_cvt_i32_f32_e32 v103, v20
	v_and_b32_e32 v19, 15, v54
	v_and_b32_e32 v20, 15, v55
	v_and_b32_e32 v21, 15, v56
	v_and_b32_e32 v22, 15, v57
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v71
	v_and_b32_e32 v40, 15, v67
	v_and_b32_e32 v41, 15, v66
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v88
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v93, v29
	v_cvt_i32_f32_e32 v96, v26
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_cvt_i32_f32_e32 v104, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v79, v[14:17]
	ds_store_b128 v79, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v80
	ds_load_b128 v[14:17], v80 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[30:33]
	ds_store_b128 v79, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v80
	ds_load_b128 v[30:33], v80 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[46:49]
	ds_store_b128 v79, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v80
	ds_load_b128 v[46:49], v80 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v53
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v28, 15, v64
	v_and_b32_e32 v29, 15, v65
	v_and_b32_e32 v62, 15, v93
	v_and_b32_e32 v64, 15, v95
	v_and_b32_e32 v65, 15, v96
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v50, v50
	v_and_b32_e32 v70, 15, v101
	v_and_b32_e32 v71, 15, v102
	v_and_b32_e32 v72, 15, v103
	v_and_b32_e32 v73, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[62:65]
	ds_store_b128 v79, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v80
	ds_load_b128 v[62:65], v80 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[18:21]
	ds_store_b128 v79, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v80
	ds_load_b128 v[26:29], v80 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v53, 15, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[34:37]
	ds_store_b128 v79, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v80
	ds_load_b128 v[42:45], v80 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v61, 15, v92
	v_and_b32_e32 v66, 15, v97
	v_and_b32_e32 v67, 15, v98
	v_and_b32_e32 v68, 15, v99
	v_and_b32_e32 v69, 15, v100
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v75, 15, v106
	v_and_b32_e32 v76, 15, v107
	v_and_b32_e32 v77, 15, v108
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[50:53]
	ds_store_b128 v79, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v80
	ds_load_b128 v[58:61], v80 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v31, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v119
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[66:69]
	ds_store_b128 v79, v[74:77] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v74, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, v11, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v80
	ds_load_b128 v[70:73], v80 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s34, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s33, 7, v46
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s34, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 16, v14
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v9, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 32, v14
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v26, 4, v18
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 48, v14
	v_mad_u64_u32 v[14:15], null, v14, s8, v[6:7]
	v_mad_u64_u32 v[15:16], null, v16, s8, v[6:7]
	v_mad_u64_u32 v[16:17], null, v17, s8, v[6:7]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v29, v44, 4, v36
	v_lshl_or_b32 v30, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[17:18], null, v18, s8, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v9.l
	v_and_b16 v4.l, 0xff, v8.l
	v_lshlrev_b16 v6.l, 8, v7.l
	v_and_b16 v6.h, 0xff, v74.l
	v_lshlrev_b16 v7.l, 8, v21.l
	v_and_b16 v7.h, 0xff, v20.l
	v_lshlrev_b16 v8.l, 8, v19.l
	v_and_b16 v8.h, 0xff, v26.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v25, v33, 4, v25
	v_lshl_or_b32 v27, v42, 4, v34
	v_lshl_or_b32 v28, v43, 4, v35
	v_lshl_or_b32 v37, v60, 4, v52
	v_lshl_or_b32 v38, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v4.l, v3.l
	v_or_b16 v18.l, v6.h, v6.l
	v_or_b16 v19.h, v7.h, v7.l
	v_or_b16 v19.l, v8.h, v8.l
	v_cndmask_b32_e32 v9, 0x80000000, v14, vcc_lo
	v_lshlrev_b16 v7.l, 8, v30.l
	v_and_b16 v7.h, 0xff, v29.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v47, 4, v39
	v_lshl_or_b32 v33, v48, 4, v40
	v_lshl_or_b32 v34, v49, 4, v41
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v72, 4, v68
	v_lshl_or_b32 v47, v73, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v6.h, 0xff, v22.l
	v_lshlrev_b16 v8.l, 8, v28.l
	v_and_b16 v8.h, 0xff, v27.l
	buffer_store_b64 v[18:19], v9, s[28:31], 0 offen
	v_or_b16 v19.h, v7.h, v7.l
	v_lshlrev_b16 v7.l, 8, v38.l
	v_and_b16 v7.h, 0xff, v37.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v62, 4, v54
	v_lshl_or_b32 v40, v63, 4, v55
	v_lshl_or_b32 v41, v64, 4, v56
	v_lshl_or_b32 v42, v65, 4, v57
	v_lshl_or_b32 v43, v70, 4, v66
	v_lshl_or_b32 v44, v71, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v4.l, v3.l
	v_or_b16 v18.l, v6.h, v6.l
	v_or_b16 v19.l, v8.h, v8.l
	v_cndmask_b32_e32 v9, 0x80000000, v15, vcc_lo
	v_lshlrev_b16 v3.l, 8, v34.l
	v_and_b16 v4.l, 0xff, v33.l
	v_lshlrev_b16 v6.l, 8, v32.l
	v_and_b16 v6.h, 0xff, v31.l
	v_lshlrev_b16 v8.l, 8, v36.l
	v_and_b16 v8.h, 0xff, v35.l
	v_or_b16 v15.h, v7.h, v7.l
	v_lshlrev_b16 v7.l, 8, v47.l
	v_and_b16 v7.h, 0xff, v45.l
	buffer_store_b64 v[18:19], v9, s[28:31], 0 offen
	v_or_b16 v14.h, v4.l, v3.l
	v_or_b16 v14.l, v6.h, v6.l
	v_or_b16 v15.l, v8.h, v8.l
	v_lshlrev_b16 v3.l, 8, v42.l
	v_and_b16 v4.l, 0xff, v41.l
	v_lshlrev_b16 v6.l, 8, v40.l
	v_and_b16 v6.h, 0xff, v39.l
	v_lshlrev_b16 v8.l, 8, v44.l
	v_and_b16 v8.h, 0xff, v43.l
	v_or_b16 v19.h, v7.h, v7.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v4.l, v3.l
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.l, v6.h, v6.l
	v_or_b16 v19.l, v8.h, v8.l
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v8, 2, v11
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s34, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[14:15], v9, s[28:31], 0 offen
	buffer_store_b64 v[18:19], v6, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v46
	v_mov_b16_e32 v4.l, v13.h
	v_mov_b16_e32 v3.l, v12.h
	v_add3_u32 v7, v7, v8, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, v10, v5
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v6, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v7
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 68
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16196
; TotalNumSgprs: 70
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 70
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
