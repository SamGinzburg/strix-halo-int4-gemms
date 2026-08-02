	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v4, 0 :: v_dual_lshlrev_b32 v71, 4, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v68, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s45, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s45, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s45, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[42:43], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v5, s2, s34, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v6, null, s35, 0, s2
	v_add_nc_u32_e32 v65, s34, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[5:6]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v69, 0xf0, v0
	v_dual_mov_b32 v7, 0 :: v_dual_lshlrev_b32 v70, 4, v68
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s46, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v1, s34, v68
	v_add_co_u32 v5, vcc_lo, v3, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v4, vcc_lo
	v_add_co_u32 v7, vcc_lo, v3, 32
	v_add_co_ci_u32_e64 v8, null, 0, v4, vcc_lo
	v_add_co_u32 v9, vcc_lo, v3, 48
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x58
	s_load_b32 s48, s[0:1], 0x50
	v_add_co_ci_u32_e64 v10, null, 0, v4, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[3:4]
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v4, 16, v1
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[7:8]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[7:8]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v76, v4, s44
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_dual_mov_b32 v162, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[42:43], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[5:6]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v73, 3, v69
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v5, 32, v1
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v6, 48, v1
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v7, 24, v7
	v_xor_b32_e32 v11, v4, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[9:10]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v77, v5, s44
	v_mul_lo_u32 v78, v6, s44
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v6, 5, v68
	v_xor_b32_e32 v7, v7, v73
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v17, 0xe00, v71
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v11, 24, v11
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v20, 5, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s4, s6
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v74, 24, v3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s4, s45, 8
	v_xor3_b32 v3, v4, v5, v3
	v_and_or_b32 v79, v4, 24, v6
	v_lshl_or_b32 v102, v68, 9, v7
	v_or3_b32 v105, v17, v11, v6
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v24, 2, v69
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v20, 32, v20
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v75, v1, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s4, v70
	v_lshl_add_u32 v2, v2, 5, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s5
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s5, s47, s33
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v5, 8, v79
	v_xor_b32_e32 v8, 16, v79
	v_xor_b32_e32 v9, 24, v79
	v_xor_b32_e32 v10, 0x208, v79
	v_xor_b32_e32 v12, 0x218, v79
	v_xor_b32_e32 v13, 0x210, v79
	v_xor_b32_e32 v14, 0x410, v79
	v_xor_b32_e32 v15, 0x418, v79
	v_xor_b32_e32 v16, 0x408, v79
	v_xor_b32_e32 v7, 0x618, v79
	v_xor_b32_e32 v18, 0x610, v79
	v_xor_b32_e32 v19, 0x608, v79
	v_xor_b32_e32 v6, 0x88, v102
	v_xor_b32_e32 v11, 0x110, v102
	v_xor_b32_e32 v17, 0x198, v102
	v_xor_b32_e32 v21, 8, v105
	v_xor_b32_e32 v22, 16, v105
	v_xor_b32_e32 v23, 24, v105
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v20, 0, v24, v20
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v24, 1, v69
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, s5, s7, v[1:2]
	v_or_b32_e32 v119, s4, v0
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v127, v2, v3
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v129, 0, v5
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v131, 0, v8
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v133, 0, v9
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v135, 0, v10
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v137, 0, v12
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v138, 0, v13
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v139, 0, v14
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v140, 0, v15
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v141, 0, v16
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v143, 0, v7
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v145, 0, v18
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v147, 0, v19
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v149, 0, v6
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v151, 0, v11
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v152, 0, v17
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v153, 0, v21
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v154, 0, v22
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v155, 0, v23
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v157, v20, v4
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v159, 0, v24
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v80, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s49, s44, s7
	s_mov_b32 s50, 0
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s14
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v72
	v_mov_b32_e32 v3, v72
	v_dual_mov_b32 v4, v72 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v72
	v_dual_mov_b32 v6, v72 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v72
	v_dual_mov_b32 v8, v72 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v72 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v72
	v_dual_mov_b32 v12, v72 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v72
	v_dual_mov_b32 v14, v72 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v72
	v_dual_mov_b32 v16, v72 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v72
	v_mov_b32_e32 v19, v72
	v_mov_b32_e32 v20, v72
	v_mov_b32_e32 v21, v72
	v_mov_b32_e32 v22, v72
	v_mov_b32_e32 v23, v72
	v_mov_b32_e32 v24, v72
	v_mov_b32_e32 v26, v72
	v_mov_b32_e32 v27, v72
	v_mov_b32_e32 v28, v72
	v_mov_b32_e32 v29, v72
	v_mov_b32_e32 v30, v72
	v_mov_b32_e32 v31, v72
	v_mov_b32_e32 v32, v72
	v_mov_b32_e32 v34, v72
	v_mov_b32_e32 v35, v72
	v_mov_b32_e32 v36, v72
	v_mov_b32_e32 v37, v72
	v_mov_b32_e32 v38, v72
	v_mov_b32_e32 v39, v72
	v_mov_b32_e32 v40, v72
	v_mov_b32_e32 v42, v72
	v_mov_b32_e32 v43, v72
	v_mov_b32_e32 v44, v72
	v_mov_b32_e32 v45, v72
	v_mov_b32_e32 v46, v72
	v_mov_b32_e32 v47, v72
	v_mov_b32_e32 v48, v72
	v_mov_b32_e32 v50, v72
	v_mov_b32_e32 v51, v72
	v_mov_b32_e32 v52, v72
	v_mov_b32_e32 v53, v72
	v_mov_b32_e32 v54, v72
	v_mov_b32_e32 v55, v72
	v_mov_b32_e32 v56, v72
	v_mov_b32_e32 v58, v72
	v_mov_b32_e32 v59, v72
	v_mov_b32_e32 v60, v72
	v_mov_b32_e32 v61, v72
	v_mov_b32_e32 v62, v72
	v_mov_b32_e32 v63, v72
	v_mov_b32_e32 v64, v72
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s13, s50, 6
	s_mov_b32 s14, -1
	s_mov_b32 s4, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s4, s4, s13
	v_or_b32_e32 v167, s4, v74
	v_or_b32_e32 v176, s4, v73
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v169, 1, v167
	v_or_b32_e32 v170, 2, v167
	v_or_b32_e32 v171, 3, v167
	v_or_b32_e32 v172, 4, v167
	v_or_b32_e32 v173, 5, v167
	v_or_b32_e32 v174, 6, v167
	v_or_b32_e32 v175, 7, v167
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s47, v167
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[167:168], null, v167, s48, v[65:66]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s47, v169
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[168:169], null, v169, s48, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s46, vcc_lo
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s5, s47, v170
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[169:170], null, v170, s48, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s46, s4
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s6, s47, v171
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[170:171], null, v171, s48, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	buffer_load_u8 v178, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v168, s4
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s5, s46, s5
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s7, s47, v172
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[171:172], null, v172, s48, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	buffer_load_u8 v179, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v169, s5
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s6, s46, s6
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s8, s47, v173
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[172:173], null, v173, s48, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	buffer_load_u8 v180, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v170, s6
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s7, s46, s7
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s9, s47, v174
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[173:174], null, v174, s48, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	buffer_load_u8 v181, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v171, s7
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s8, s46, s8
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s10, s47, v175
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[174:175], null, v175, s48, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	buffer_load_u8 v182, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v172, s8
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s9, s46, s9
	s_and_b32 s10, s46, s10
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v177, 1, v176
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s11, s47, v176
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v183, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v173, s9
	s_mov_b32 s4, 32
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[171:172], null, v177, s33, v[66:67]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s12, s47, v177
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v184, v167, s[20:23], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v174, s10
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s14
	s_mov_b32 s14, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v171, 0x80000000, v171, s12
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v175, v167, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[167:168], null, v176, s33, v[66:67]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[171:174], v171, s[24:27], 0 offen
	v_cndmask_b32_e64 v167, 0x80000000, v167, s11
	buffer_load_b128 v[167:170], v167, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v175.l, 8, v175.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v176.h, v184.l, v175.l
	v_lshlrev_b16 v175.l, 8, v183.l
	v_or_b16 v176.l, v182.l, v175.l
	v_lshlrev_b16 v175.l, 8, v181.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_perm_b32 v183, v171, v167, 0x5010400
	v_perm_b32 v184, v172, v168, 0x5010400
	v_perm_b32 v168, v172, v168, 0x7030602
	v_perm_b32 v172, v173, v169, 0x5010400
	v_perm_b32 v169, v173, v169, 0x7030602
	v_perm_b32 v173, v174, v170, 0x5010400
	v_perm_b32 v170, v174, v170, 0x7030602
	v_lshrrev_b32_e32 v174, 8, v183
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v175.h, v180.l, v175.l
	v_lshlrev_b16 v175.l, 8, v179.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v171, v171, v167, 0x7030602
	v_and_b16 v167.l, 0xff, v183.l
	v_lshlrev_b16 v167.h, 8, v174.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v179, 0, v79
	v_or_b16 v175.l, v178.l, v175.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v174, 0, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v167.l, v167.l, v167.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v127, v[175:176]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[175:178], v179 offset1:1
	ds_load_b64 v[191:192], v129
	ds_load_b64 v[193:194], v131
	ds_load_b64 v[195:196], v133
	ds_load_b64 v[197:198], v135
	ds_load_b64 v[199:200], v137
	ds_load_b64 v[201:202], v138
	ds_load_b64 v[203:204], v139
	ds_load_b64 v[205:206], v140
	ds_load_2addr_stride64_b64 v[179:182], v179 offset0:2 offset1:3
	ds_load_b64 v[207:208], v141
	ds_load_b64 v[209:210], v143
	ds_load_b64 v[211:212], v145
	ds_load_b64 v[213:214], v147
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v174, v167
	v_lshrrev_b32_e32 v167, 24, v183
	v_and_b16 v167.h, 0xff, v183.h
	v_lshrrev_b32_e32 v183, 8, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.l, 8, v167.l
	v_or_b16 v167.l, v167.h, v167.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.h, 8, v183.l
	ds_store_b16 v174, v167 offset:32
	v_and_b16 v167.l, 0xff, v171.l
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v174, v167 offset:64
	v_lshrrev_b32_e32 v167, 24, v171
	v_and_b16 v167.h, 0xff, v171.h
	v_lshrrev_b32_e32 v171, 8, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.l, 8, v167.l
	v_or_b16 v167.l, v167.h, v167.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.h, 8, v171.l
	v_lshrrev_b32_e32 v171, 8, v168
	ds_store_b16 v174, v167 offset:96
	v_and_b16 v167.l, 0xff, v184.l
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v149, v167
	v_lshrrev_b32_e32 v167, 24, v184
	v_and_b16 v167.h, 0xff, v184.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.l, 8, v167.l
	v_or_b16 v167.l, v167.h, v167.l
	v_lshlrev_b16 v167.h, 8, v171.l
	ds_store_b16 v149, v167 offset:32
	v_and_b16 v167.l, 0xff, v168.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v149, v167 offset:64
	v_lshrrev_b32_e32 v167, 24, v168
	v_and_b16 v167.h, 0xff, v168.h
	v_lshrrev_b32_e32 v168, 8, v172
	v_lshlrev_b16 v167.l, 8, v167.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v167.l, v167.h, v167.l
	v_lshlrev_b16 v167.h, 8, v168.l
	v_lshrrev_b32_e32 v168, 8, v169
	ds_store_b16 v149, v167 offset:96
	v_and_b16 v167.l, 0xff, v172.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v151, v167
	v_lshrrev_b32_e32 v167, 24, v172
	v_and_b16 v167.h, 0xff, v172.h
	v_lshlrev_b16 v167.l, 8, v167.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v167.l, v167.h, v167.l
	v_lshlrev_b16 v167.h, 8, v168.l
	v_lshrrev_b32_e32 v168, 8, v173
	ds_store_b16 v151, v167 offset:32
	v_and_b16 v167.l, 0xff, v169.l
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v151, v167 offset:64
	v_lshrrev_b32_e32 v167, 24, v169
	v_and_b16 v167.h, 0xff, v169.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.l, 8, v167.l
	v_or_b16 v167.l, v167.h, v167.l
	v_lshlrev_b16 v167.h, 8, v168.l
	v_lshrrev_b32_e32 v168, 8, v170
	ds_store_b16 v151, v167 offset:96
	v_and_b16 v167.l, 0xff, v173.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v152, v167
	v_lshrrev_b32_e32 v167, 24, v173
	v_and_b16 v167.h, 0xff, v173.h
	v_lshlrev_b16 v167.l, 8, v167.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v167.l, v167.h, v167.l
	v_lshlrev_b16 v167.h, 8, v168.l
	ds_store_b16 v152, v167 offset:32
	v_and_b16 v167.l, 0xff, v170.l
	v_or_b16 v167.l, v167.l, v167.h
	ds_store_b16 v152, v167 offset:64
	v_lshrrev_b32_e32 v167, 24, v170
	v_and_b16 v167.h, 0xff, v170.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v167.l, 8, v167.l
	v_or_b16 v167.l, v167.h, v167.l
	ds_store_b16 v152, v167 offset:96
	v_add_nc_u32_e32 v167, 0, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[167:170], v167 offset1:8
	ds_load_2addr_stride64_b64 v[171:174], v153 offset1:8
	ds_load_2addr_stride64_b64 v[183:186], v154 offset1:8
	ds_load_2addr_stride64_b64 v[187:190], v155 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[167:168], v[175:176], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[175:176], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[167:168], v[197:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[169:170], v[197:198], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[167:168], v[203:204], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[169:170], v[203:204], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[167:168], v[209:210], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[169:170], v[209:210], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[171:172], v[191:192], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[191:192], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[171:172], v[177:178], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[177:178], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[205:206], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[205:206], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[171:172], v[211:212], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[211:212], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[193:194], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[193:194], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[199:200], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[199:200], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[183:184], v[179:180], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[179:180], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[183:184], v[213:214], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[213:214], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[195:196], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[195:196], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[201:202], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[201:202], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[207:208], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[189:190], v[207:208], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[181:182], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[189:190], v[181:182], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v167, s50, v75, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s50, s49
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v168, s50, v76, 1
	v_add_lshl_u32 v169, s50, v77, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v170, s50, v78, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v171, v119, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v167, 0x80000000, v167, s0
	v_cndmask_b32_e64 v168, 0x80000000, v168, s1
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v171, v171, s[36:39], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v167, v167, s[28:31], 0 offen
	buffer_load_u16 v168, v168, s[28:31], 0 offen
	buffer_load_u16 v169, v169, s[28:31], 0 offen
	buffer_load_u16 v170, v170, s[28:31], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v1
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v173, v2
	v_cvt_f32_i32_e32 v174, v3
	v_cvt_f32_i32_e32 v175, v4
	v_cvt_f32_i32_e32 v176, v5
	v_cvt_f32_i32_e32 v177, v6
	v_cvt_f32_i32_e32 v178, v7
	v_cvt_f32_i32_e32 v179, v8
	v_cvt_f32_i32_e32 v180, v9
	v_cvt_f32_i32_e32 v181, v10
	v_cvt_f32_i32_e32 v182, v11
	v_cvt_f32_i32_e32 v183, v12
	v_cvt_f32_i32_e32 v184, v13
	v_cvt_f32_i32_e32 v185, v14
	v_cvt_f32_i32_e32 v186, v15
	v_cvt_f32_i32_e32 v187, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s50, s50, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s50, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v171
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v20, v20, v168 :: v_dual_lshlrev_b32 v167, 16, v167
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v169, 16, v169
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v171, v172, v167 :: v_dual_mul_f32 v18, v18, v168
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v157, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v159
	ds_load_b128 v[5:8], v159 offset:16
	ds_load_b128 v[9:12], v159 offset:512
	ds_load_b128 v[13:16], v159 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v172, v173, v167
	v_mul_f32_e32 v173, v174, v167
	v_dual_mul_f32 v174, v175, v167 :: v_dual_mul_f32 v17, v17, v168
	v_dual_mul_f32 v175, v176, v167 :: v_dual_mul_f32 v22, v22, v168
	v_dual_mul_f32 v176, v177, v167 :: v_dual_mul_f32 v19, v19, v168
	v_dual_mul_f32 v177, v178, v167 :: v_dual_mul_f32 v24, v24, v168
	v_dual_mul_f32 v178, v179, v167 :: v_dual_mul_f32 v21, v21, v168
	v_dual_mul_f32 v179, v180, v167 :: v_dual_mul_f32 v26, v26, v168
	v_dual_mul_f32 v180, v181, v167 :: v_dual_mul_f32 v23, v23, v168
	v_dual_mul_f32 v181, v182, v167 :: v_dual_mul_f32 v28, v28, v168
	v_dual_mul_f32 v182, v183, v167 :: v_dual_mul_f32 v25, v25, v168
	v_dual_mul_f32 v183, v184, v167 :: v_dual_mul_f32 v30, v30, v168
	v_dual_mul_f32 v184, v185, v167 :: v_dual_mul_f32 v27, v27, v168
	v_dual_mul_f32 v185, v186, v167 :: v_dual_mul_f32 v32, v32, v168
	v_dual_mul_f32 v167, v187, v167 :: v_dual_mul_f32 v34, v34, v169
	v_dual_mul_f32 v29, v29, v168 :: v_dual_mul_f32 v36, v36, v169
	v_dual_mul_f32 v31, v31, v168 :: v_dual_mul_f32 v38, v38, v169
	v_dual_mul_f32 v33, v33, v169 :: v_dual_mul_f32 v50, v50, v170
	v_dual_mul_f32 v35, v35, v169 :: v_dual_mul_f32 v52, v52, v170
	v_dual_mul_f32 v37, v37, v169 :: v_dual_mul_f32 v54, v54, v170
	v_dual_mul_f32 v39, v39, v169 :: v_dual_mul_f32 v56, v56, v170
	v_dual_mul_f32 v40, v40, v169 :: v_dual_mul_f32 v49, v49, v170
	v_dual_mul_f32 v41, v41, v169 :: v_dual_mul_f32 v58, v58, v170
	v_dual_mul_f32 v42, v42, v169 :: v_dual_mul_f32 v51, v51, v170
	v_dual_mul_f32 v43, v43, v169 :: v_dual_mul_f32 v60, v60, v170
	v_dual_mul_f32 v44, v44, v169 :: v_dual_mul_f32 v53, v53, v170
	v_dual_mul_f32 v45, v45, v169 :: v_dual_mul_f32 v62, v62, v170
	v_dual_mul_f32 v46, v46, v169 :: v_dual_mul_f32 v55, v55, v170
	v_dual_mul_f32 v47, v47, v169 :: v_dual_mul_f32 v64, v64, v170
	v_dual_mul_f32 v48, v48, v169 :: v_dual_mul_f32 v57, v57, v170
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v59, v59, v170 :: v_dual_fmac_f32 v164, v173, v3
	v_dual_mul_f32 v61, v61, v170 :: v_dual_fmac_f32 v166, v171, v1
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v63, v63, v170 :: v_dual_fmac_f32 v160, v177, v7
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v165, v172, v2 :: v_dual_fmac_f32 v162, v175, v5
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v163, v174, v4 :: v_dual_fmac_f32 v156, v179, v9
	v_dual_fmac_f32 v161, v176, v6 :: v_dual_fmac_f32 v158, v178, v8
	v_dual_fmac_f32 v150, v180, v10 :: v_dual_fmac_f32 v125, v21, v5
	v_dual_fmac_f32 v148, v181, v11 :: v_dual_fmac_f32 v117, v28, v12
	v_dual_fmac_f32 v146, v182, v12 :: v_dual_fmac_f32 v123, v23, v7
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v144, v183, v13 :: v_dual_fmac_f32 v115, v30, v14
	v_dual_fmac_f32 v142, v184, v14 :: v_dual_fmac_f32 v121, v25, v9
	v_dual_fmac_f32 v136, v185, v15 :: v_dual_fmac_f32 v113, v32, v16
	v_dual_fmac_f32 v134, v167, v16 :: v_dual_fmac_f32 v111, v34, v2
	v_dual_fmac_f32 v132, v17, v1 :: v_dual_fmac_f32 v109, v36, v4
	v_dual_fmac_f32 v130, v18, v2 :: v_dual_fmac_f32 v103, v41, v9
	v_dual_fmac_f32 v128, v19, v3 :: v_dual_fmac_f32 v107, v38, v6
	v_dual_fmac_f32 v126, v20, v4 :: v_dual_fmac_f32 v101, v42, v10
	v_dual_fmac_f32 v124, v22, v6 :: v_dual_fmac_f32 v99, v44, v12
	v_dual_fmac_f32 v122, v24, v8 :: v_dual_fmac_f32 v97, v46, v14
	v_dual_fmac_f32 v120, v26, v10 :: v_dual_fmac_f32 v95, v48, v16
	v_dual_fmac_f32 v118, v27, v11 :: v_dual_fmac_f32 v93, v50, v2
	v_dual_fmac_f32 v116, v29, v13 :: v_dual_fmac_f32 v91, v52, v4
	v_dual_fmac_f32 v114, v31, v15 :: v_dual_fmac_f32 v89, v54, v6
	v_dual_fmac_f32 v112, v33, v1 :: v_dual_fmac_f32 v87, v56, v8
	v_dual_fmac_f32 v110, v35, v3 :: v_dual_fmac_f32 v85, v58, v10
	v_dual_fmac_f32 v108, v37, v5 :: v_dual_fmac_f32 v83, v60, v12
	v_dual_fmac_f32 v106, v39, v7 :: v_dual_fmac_f32 v81, v62, v14
	v_fmac_f32_e32 v104, v40, v8
	v_dual_fmac_f32 v100, v43, v11 :: v_dual_fmac_f32 v67, v64, v16
	v_fmac_f32_e32 v98, v45, v13
	v_fmac_f32_e32 v96, v47, v15
	v_fmac_f32_e32 v94, v49, v1
	v_fmac_f32_e32 v92, v51, v3
	v_fmac_f32_e32 v90, v53, v5
	v_fmac_f32_e32 v88, v55, v7
	v_fmac_f32_e32 v86, v57, v9
	v_fmac_f32_e32 v84, v59, v11
	v_fmac_f32_e32 v82, v61, v13
	v_fmac_f32_e32 v80, v63, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v110, v110 :: v_dual_max_f32 v36, v109, v109
	v_dual_max_f32 v37, v108, v108 :: v_dual_max_f32 v38, v107, v107
	v_max_f32_e32 v39, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_max_f32_e32 v37, 0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v43, 0, v38 :: v_dual_max_f32 v40, v101, v101
	v_max_f32_e32 v102, 0, v39
	v_max_f32_e32 v38, v104, v104
	v_dual_max_f32 v41, v100, v100 :: v_dual_max_f32 v42, v99, v99
	v_max_f32_e32 v39, v103, v103
	v_max_f32_e32 v101, 0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v40, v96, v96 :: v_dual_max_f32 v103, 0, v41
	v_max_f32_e32 v104, 0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v99, 0, v38 :: v_dual_max_f32 v100, 0, v39
	v_dual_max_f32 v38, v98, v98 :: v_dual_max_f32 v39, v97, v97
	v_dual_max_f32 v42, v94, v94 :: v_dual_max_f32 v41, v95, v95
	v_max_f32_e32 v96, 0, v40
	v_dual_max_f32 v94, 0, v38 :: v_dual_max_f32 v95, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v98, 0, v42 :: v_dual_max_f32 v97, 0, v41
	v_dual_max_f32 v38, v93, v93 :: v_dual_max_f32 v39, v92, v92
	v_dual_max_f32 v40, v91, v91 :: v_dual_max_f32 v41, v90, v90
	v_dual_max_f32 v42, v89, v89 :: v_dual_max_f32 v89, 0, v38
	v_dual_max_f32 v1, v166, v166 :: v_dual_max_f32 v2, v165, v165
	v_dual_max_f32 v5, v162, v162 :: v_dual_max_f32 v6, v161, v161
	v_dual_max_f32 v7, v160, v160 :: v_dual_max_f32 v8, v158, v158
	v_max_f32_e32 v9, v156, v156
	v_dual_max_f32 v17, v132, v132 :: v_dual_max_f32 v18, v130, v130
	v_max_f32_e32 v19, v128, v128
	v_dual_max_f32 v25, v121, v121 :: v_dual_max_f32 v26, v120, v120
	v_dual_max_f32 v27, v118, v118 :: v_dual_max_f32 v28, v117, v117
	v_dual_max_f32 v29, v116, v116 :: v_dual_max_f32 v90, 0, v39
	v_dual_max_f32 v91, 0, v40 :: v_dual_max_f32 v92, 0, v41
	v_dual_max_f32 v93, 0, v42 :: v_dual_max_f32 v38, v88, v88
	v_dual_max_f32 v39, v87, v87 :: v_dual_max_f32 v40, v86, v86
	v_dual_max_f32 v41, v85, v85 :: v_dual_max_f32 v42, v84, v84
	v_dual_max_f32 v3, v164, v164 :: v_dual_max_f32 v4, v163, v163
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v150, v150 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v146, v146 :: v_dual_max_f32 v11, v148, v148
	v_dual_max_f32 v14, v142, v142 :: v_dual_max_f32 v13, v144, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v15, v136, v136
	v_dual_max_f32 v16, v134, v134 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v20, v126, v126
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v124, v124 :: v_dual_max_f32 v21, v125, v125
	v_dual_max_f32 v24, v122, v122 :: v_dual_max_f32 v23, v123, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_max_f32_e32 v32, v113, v113
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, v115, v115
	v_dual_max_f32 v31, v114, v114 :: v_dual_max_f32 v34, v111, v111
	v_dual_max_f32 v33, v112, v112 :: v_dual_max_f32 v84, 0, v38
	v_max_f32_e32 v87, 0, v41
	v_dual_max_f32 v85, 0, v39 :: v_dual_max_f32 v86, 0, v40
	v_max_f32_e32 v39, v82, v82
	v_dual_max_f32 v88, 0, v42 :: v_dual_max_f32 v41, v80, v80
	v_max_f32_e32 v38, v83, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v40, v81, v81 :: v_dual_max_f32 v81, 0, v39
	v_dual_max_f32 v42, v67, v67 :: v_dual_mul_f32 v45, v1, v1
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v34, 0, v34
	v_dual_max_f32 v82, 0, v40 :: v_dual_max_f32 v105, 0, v42
	v_dual_max_f32 v83, 0, v41 :: v_dual_max_f32 v80, 0, v38
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v51, v3, v3 :: v_dual_mul_f32 v48, v2, v2
	v_dual_mul_f32 v53, v5, v5 :: v_dual_mul_f32 v52, v4, v4
	v_dual_mul_f32 v57, v7, v7 :: v_dual_mul_f32 v54, v6, v6
	v_dual_mul_f32 v61, v9, v9 :: v_dual_mul_f32 v58, v8, v8
	v_dual_mul_f32 v79, v11, v11 :: v_dual_mul_f32 v62, v10, v10
	v_dual_mul_f32 v73, v13, v13 :: v_dual_mul_f32 v66, v12, v12
	v_dual_mul_f32 v77, v15, v15 :: v_dual_mul_f32 v74, v14, v14
	v_mul_f32_e32 v67, v20, v20
	v_dual_mul_f32 v78, v16, v16 :: v_dual_mul_f32 v75, v18, v18
	v_dual_mul_f32 v76, v17, v17 :: v_dual_mul_f32 v63, v22, v22
	v_dual_mul_f32 v72, v19, v19 :: v_dual_mul_f32 v59, v24, v24
	v_dual_mul_f32 v64, v21, v21 :: v_dual_mul_f32 v55, v26, v26
	v_dual_mul_f32 v60, v23, v23 :: v_dual_mul_f32 v49, v28, v28
	v_dual_mul_f32 v56, v25, v25 :: v_dual_mul_f32 v39, v35, v35
	v_dual_mul_f32 v50, v27, v27 :: v_dual_mul_f32 v47, v29, v29
	v_dual_mul_f32 v46, v30, v30 :: v_dual_mul_f32 v41, v33, v33
	v_dual_mul_f32 v44, v31, v31 :: v_dual_mul_f32 v37, v37, v37
	v_dual_mul_f32 v42, v32, v32 :: v_dual_mul_f32 v35, v102, v102
	v_dual_mul_f32 v40, v34, v34 :: v_dual_mul_f32 v33, v100, v100
	v_dual_mul_f32 v38, v36, v36 :: v_dual_mul_f32 v31, v103, v103
	v_dual_mul_f32 v36, v43, v43 :: v_dual_mul_f32 v29, v94, v94
	v_dual_mul_f32 v34, v99, v99 :: v_dual_mul_f32 v27, v96, v96
	v_dual_mul_f32 v32, v101, v101 :: v_dual_mul_f32 v25, v98, v98
	v_dual_mul_f32 v30, v104, v104 :: v_dual_mul_f32 v23, v90, v90
	v_dual_mul_f32 v28, v95, v95 :: v_dual_mul_f32 v21, v92, v92
	v_dual_mul_f32 v26, v97, v97 :: v_dual_mul_f32 v19, v84, v84
	v_dual_mul_f32 v24, v89, v89 :: v_dual_mul_f32 v17, v86, v86
	v_dual_mul_f32 v22, v91, v91 :: v_dual_mul_f32 v9, v80, v80
	v_dual_mul_f32 v20, v93, v93 :: v_dual_mul_f32 v7, v82, v82
	v_dual_mul_f32 v18, v85, v85 :: v_dual_mov_b32 v1, v71
	v_dual_mul_f32 v16, v87, v87 :: v_dual_mov_b32 v3, v65
	v_mul_f32_e32 v14, v88, v88
	v_mul_f32_e32 v8, v81, v81
	v_mul_f32_e32 v6, v83, v83
	v_mul_f32_e32 v4, v105, v105
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v48, v48 :: v_dual_max_f32 v5, v45, v45
	v_max3_f32 v10, v52, v53, v54
	v_max3_f32 v11, v62, v79, v66
	v_max3_f32 v12, v73, v74, v77
	v_dual_max_f32 v13, v76, v76 :: v_dual_max_f32 v2, v5, v2
	v_max_f32_e32 v5, v75, v75
	v_max3_f32 v15, v57, v58, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v11, v11, v12, v78
	v_max_f32_e32 v12, v41, v41
	v_max3_f32 v2, v2, v51, v10
	v_dual_max_f32 v5, v13, v5 :: v_dual_max_f32 v10, v40, v40
	v_max3_f32 v13, v67, v64, v63
	v_max3_f32 v65, v55, v50, v49
	v_max3_f32 v71, v47, v46, v44
	v_max3_f32 v80, v32, v31, v30
	v_max_f32_e32 v10, v12, v10
	v_max3_f32 v12, v38, v37, v36
	v_max3_f32 v81, v29, v28, v27
	v_max3_f32 v43, v60, v59, v56
	v_max3_f32 v5, v5, v72, v13
	v_max3_f32 v13, v65, v71, v42
	v_max3_f32 v65, v35, v34, v33
	v_max3_f32 v10, v10, v39, v12
	v_max3_f32 v12, v80, v81, v26
	v_max3_f32 v2, v2, v15, v11
	s_mov_b32 s0, 0x76543210
	v_dual_max_f32 v71, v24, v24 :: v_dual_max_f32 v80, v25, v25
	v_max3_f32 v5, v5, v43, v13
	v_max3_f32 v10, v10, v65, v12
	v_max3_f32 v15, v16, v14, v9
	v_max3_f32 v43, v8, v7, v6
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v65, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v80, v71
	v_max3_f32 v12, v22, v21, v20
	v_max3_f32 v13, v19, v18, v17
	v_max3_f32 v15, v15, v43, v4
	v_max_f32_e32 v43, v65, v65
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v71, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v2, v43
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 3, v0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, v11, v23, v12
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v71, v71
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v43, 0x80, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v11, v13, v15
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v82, v10, v65 :: v_dual_lshlrev_b32 v11, 5, v2
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 0x60, v0
	v_and_b32_e32 v65, 8, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v5, v12
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 4, v0
	v_lshl_add_u32 v12, v2, 9, 0
	v_and_or_b32 v1, 0x680, v1, v11
	v_xor_b32_e32 v84, v11, v13
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v85, 3, v43
	v_lshl_add_u32 v71, v10, 2, v12
	v_lshlrev_b32_e32 v12, 1, v43
	v_xor_b32_e32 v1, v1, v13
	v_lshl_add_u32 v86, v10, 6, 0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v15, v5
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v71, v65, 4, v71
	v_lshl_add_u32 v2, v2, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v86, v85, v1
	v_add3_u32 v5, v71, v12, v84
	ds_store_b128 v5, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v80
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v80, v80
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v15, v82 :: v_dual_max_f32 v80, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v71, v1
	v_dual_max_f32 v71, v82, v82 :: v_dual_mov_b32 v82, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v71, v15
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v65, 3, v65
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v5, v81 :: v_dual_max_f32 v82, v82, v82
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v82
	v_max_f32_e32 v81, v83, v83
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v5, v80, v5 :: v_dual_max_f32 v80, v83, v83
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v43, 0, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v83, v5
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v71, v81, v80 :: v_dual_mov_b32 v80, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v81, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v80, v80 :: v_dual_max_f32 v5, v5, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v81, v81, v81
	v_dual_max_f32 v15, v15, v80 :: v_dual_max_f32 v80, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v5
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v15
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v1, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v85, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v84, v84
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v84, 1, v13
.Ltmp45:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v70, v13
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v5, v81
	v_max_f32_e32 v5, v85, v85
	v_dual_max_f32 v82, v15, v1 :: v_dual_lshlrev_b32 v1, 5, v10
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v71, v5
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v43, v84, v65
	v_add3_u32 v1, v2, v1, v65
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp50:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 32, v10
	v_or_b32_e32 v71, 16, v10
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v5, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
.Ltmp52:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v80, v80 :: v_dual_max_f32 v80, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, 0x2b8cbccc, v1 :: v_dual_max_f32 v82, 0x2b8cbccc, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v86, vcc_lo, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v82
	v_rcp_f32_e32 v43, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s0, s34, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_co_ci_u32_e64 v85, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v15, v43, 1.0
	v_max_f32_e32 v65, v81, v81
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[84:85]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[84:85]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v43, v80, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s0, s34, v71
	v_add_co_ci_u32_e64 v81, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v86, v43
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v65, 0x2b8cbccc, v65 :: v_dual_max_f32 v2, v83, v83
	v_fma_f32 v83, -v87, v88, 1.0
	v_fma_f32 v1, -v15, v89, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v71, null, 0x40e00000, 0x40e00000, v65
	v_dual_max_f32 v90, 0x2b8cbccc, v2 :: v_dual_fmac_f32 v89, v1, v43
	v_fmac_f32_e32 v88, v83, v88
	v_div_scale_f32 v2, s6, v82, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v71
	v_fma_f32 v1, -v15, v89, v86
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v90
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[80:81]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v43, v89
	v_mul_f32_e32 v43, v2, v88
	v_rcp_f32_e32 v83, v15
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v84, -v71, v91, 1.0
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v5, -v87, v43, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, s7, v65, 0x40e00000, v65
	v_fmac_f32_e32 v43, v5, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v85.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v86, -v15, v83, 1.0
	v_mul_f32_e32 v89, v84, v91
	v_fma_f32 v2, -v87, v43, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s8, v90, 0x40e00000, v90
	v_fma_f32 v80, -v71, v89, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v43, v2, v88, v43
	v_mul_f32_e32 v81, v86, v83
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v89, v80, v91
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v87, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v43, v43, 0x40e00000, v82
	v_fma_f32 v80, -v15, v81, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v87, v87, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v71, -v71, v89, v84
	v_fmac_f32_e32 v81, v80, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v82
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v71, v71, v91, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v15, -v15, v81, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v43.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[42:43], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v65, v71, 0x40e00000, v65
	v_div_fmas_f32 v15, v15, v83, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v87, v87, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v82, v84, 1.0
	v_div_scale_f32 v88, vcc_lo, v45, v87, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v83, v15, 0x40e00000, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v65.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.h, v85.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v84, v80, v84 :: v_dual_and_b32 v71, 1, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v83.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v89, v88, v84 :: v_dual_and_b32 v2, 1, v15
	v_div_scale_f32 v90, null, v87, v87, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v43, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v43, -v81, v86, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v85
	v_add3_u32 v15, v65, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v82, v89, v88
	v_rcp_f32_e32 v85, v90
	v_div_scale_f32 v91, null, v87, v87, v52
	v_fmac_f32_e32 v86, v43, v86
	v_div_scale_f32 v92, s8, v48, v87, v48
	v_fmac_f32_e32 v89, v65, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v83, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v92, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v90, v85, 1.0
	v_fma_f32 v82, -v82, v89, v88
	v_div_scale_f32 v95, null, v87, v87, v53
	v_fma_f32 v88, -v81, v83, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, s9, v51, v87, v51
	v_fma_f32 v94, -v91, v65, 1.0
	v_div_fmas_f32 v82, v82, v84, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v88, v86 :: v_dual_mul_f32 v84, v93, v85
	v_rcp_f32_e32 v88, v95
	v_fmac_f32_e32 v65, v94, v65
	v_div_scale_f32 v89, s10, v52, v87, v52
	v_div_scale_f32 v94, null, v87, v87, v54
	v_div_fixup_f32 v45, v82, v87, v45
	v_fma_f32 v81, -v81, v83, v92
	v_fma_f32 v82, -v90, v84, v93
	v_mul_f32_e32 v92, v89, v65
	v_rcp_f32_e32 v96, v94
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_fmas_f32 v81, v81, v86, v83
	v_fmac_f32_e32 v84, v82, v85
	v_fma_f32 v82, -v91, v92, v89
	v_div_scale_f32 v83, s8, v53, v87, v53
	v_fmac_f32_e32 v88, v97, v88
	v_div_fixup_f32 v48, v81, v87, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v94, v96, 1.0
	v_fma_f32 v81, -v90, v84, v93
	v_fmac_f32_e32 v92, v82, v65
	v_div_scale_f32 v90, null, v87, v87, v57
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v82, v83, v88
	v_fmac_f32_e32 v96, v86, v96
	v_div_scale_f32 v86, s11, v54, v87, v54
	v_div_fmas_f32 v81, v81, v85, v84
	v_fma_f32 v84, -v91, v92, v89
	v_rcp_f32_e32 v89, v90
	v_div_scale_f32 v93, null, v87, v87, v58
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v85, -v95, v82, v83
	v_mul_f32_e32 v91, v86, v96
	v_div_fmas_f32 v65, v84, v65, v92
	v_rcp_f32_e32 v84, v93
	v_div_fixup_f32 v51, v81, v87, v51
	v_fmac_f32_e32 v82, v85, v88
	v_fma_f32 v85, -v94, v91, v86
	v_fma_f32 v92, -v90, v89, 1.0
	v_div_fixup_f32 v52, v65, v87, v52
	v_div_scale_f32 v81, s9, v57, v87, v57
	v_fma_f32 v65, -v95, v82, v83
	v_fmac_f32_e32 v91, v85, v96
	v_fmac_f32_e32 v89, v92, v89
	v_fma_f32 v83, -v93, v84, 1.0
	v_div_scale_f32 v85, null, v87, v87, v61
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v87, v87, v62
	v_div_fmas_f32 v65, v65, v88, v82
	v_fma_f32 v82, -v94, v91, v86
	v_mul_f32_e32 v86, v81, v89
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v85
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s8, v58, v87, v58
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v90, v86, v81
	v_rcp_f32_e32 v96, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v88, v84
	v_div_fixup_f32 v53, v65, v87, v53
	v_div_fixup_f32 v54, v82, v87, v54
	v_fma_f32 v95, -v85, v83, 1.0
	v_fmac_f32_e32 v86, v91, v89
	v_div_scale_f32 v91, null, v87, v87, v79
	v_fma_f32 v65, -v93, v94, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v82, s10, v61, v87, v61
	v_fma_f32 v95, -v92, v96, 1.0
	v_fma_f32 v81, -v90, v86, v81
	v_rcp_f32_e32 v90, v91
	v_dual_fmac_f32 v94, v65, v84 :: v_dual_mul_f32 v65, v82, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v62, v87, v62
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v97, null, v87, v87, v66
	v_div_fmas_f32 v81, v81, v89, v86
	v_fma_f32 v86, -v93, v94, v88
	v_fma_f32 v88, -v85, v65, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v93, -v91, v90, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v57, v81, v87, v57
	v_div_fmas_f32 v84, v86, v84, v94
	v_fmac_f32_e32 v65, v88, v83
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v88, -v92, v89, v95
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s8, v79, v87, v79
	v_fma_f32 v81, -v85, v65, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v88, v96
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v82, v93, v90
	v_div_fixup_f32 v58, v84, v87, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v97, v86, 1.0
	v_div_scale_f32 v85, null, v87, v87, v73
	v_div_fmas_f32 v65, v81, v83, v65
	v_fma_f32 v81, -v92, v89, v95
	v_fma_f32 v83, -v91, v82, v93
	v_div_scale_f32 v92, null, v87, v87, v74
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v83, v90
	v_rcp_f32_e32 v83, v92
	v_div_scale_f32 v88, s9, v66, v87, v66
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v61, v65, v87, v61
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v88, v86
	v_fma_f32 v65, -v91, v82, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v84, 1.0
	v_div_scale_f32 v91, s10, v73, v87, v73
	v_fma_f32 v93, -v92, v83, 1.0
	v_div_fixup_f32 v62, v81, v87, v62
	v_fma_f32 v81, -v97, v89, v88
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v87, v87, v77
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v87, v87, v78
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v89, v81, v86
	v_div_fmas_f32 v65, v65, v90, v82
	v_mul_f32_e32 v81, v91, v84
	v_rcp_f32_e32 v82, v94
	v_div_scale_f32 v90, s8, v74, v87, v74
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v65, v65, v87, v79
	v_fma_f32 v79, -v97, v89, v88
	v_fma_f32 v88, -v85, v81, v91
	v_mul_f32_e32 v95, v90, v83
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v15
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v94, v82, 1.0
	v_div_fmas_f32 v79, v79, v86, v89
	v_fmac_f32_e32 v81, v88, v84
	v_fma_f32 v86, -v92, v95, v90
	v_fma_f32 v89, -v93, v96, 1.0
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v88, s9, v77, v87, v77
	v_div_fixup_f32 v66, v79, v87, v66
	v_fma_f32 v79, -v85, v81, v91
	v_dual_fmac_f32 v95, v86, v83 :: v_dual_fmac_f32 v96, v89, v96
	v_div_scale_f32 v89, null, v80, v80, v76
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v85, v88, v82
	v_div_scale_f32 v86, s11, v78, v87, v78
	v_div_fmas_f32 v79, v79, v84, v81
	v_fma_f32 v81, -v92, v95, v90
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v80, v80, v75
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v94, v85, v88
	v_mul_f32_e32 v91, v86, v96
	v_div_fmas_f32 v81, v81, v83, v95
	v_rcp_f32_e32 v83, v92
	v_div_fixup_f32 v73, v79, v87, v73
	v_fmac_f32_e32 v85, v84, v82
	v_fma_f32 v84, -v93, v91, v86
	v_fma_f32 v95, -v89, v90, 1.0
	v_div_fixup_f32 v74, v81, v87, v74
	v_div_scale_f32 v81, s8, v76, v80, v76
	v_fma_f32 v79, -v94, v85, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v84, v96 :: v_dual_fmac_f32 v90, v95, v90
	v_fma_f32 v84, -v92, v83, 1.0
	v_div_scale_f32 v88, null, v80, v80, v72
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v79, v79, v82, v85
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v85, v81, v90
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v86, s9, v75, v80, v75
	v_div_scale_f32 v93, null, v80, v80, v67
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v86, v83
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v85, v81
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v84, 1.0
	v_div_fixup_f32 v77, v79, v87, v77
	v_fma_f32 v79, -v92, v94, v86
	v_fmac_f32_e32 v85, v91, v90
	v_div_fixup_f32 v78, v82, v87, v78
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v82, s10, v72, v80, v72
	v_div_scale_f32 v87, null, v80, v80, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v85, v81
	v_fmac_f32_e32 v94, v79, v83
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v82, v84
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s11, v67, v80, v67
	v_div_fmas_f32 v81, v81, v90, v85
	v_fma_f32 v85, -v92, v94, v86
	v_div_scale_f32 v95, null, v80, v80, v63
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v88, v79, v82
	v_mul_f32_e32 v90, v91, v96
	v_div_fmas_f32 v83, v85, v83, v94
	v_rcp_f32_e32 v85, v95
	v_fma_f32 v92, -v87, v89, 1.0
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v86, -v93, v90, v91
	v_div_fixup_f32 v75, v83, v80, v75
	v_div_fixup_f32 v76, v81, v80, v76
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s8, v64, v80, v64
	v_fmac_f32_e32 v90, v86, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v95, v85, 1.0
	v_div_scale_f32 v86, null, v80, v80, v60
	v_fma_f32 v81, -v88, v79, v82
	v_mul_f32_e32 v82, v92, v89
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v63, v80, v63
	v_div_fmas_f32 v79, v81, v84, v79
	v_fma_f32 v81, -v93, v90, v91
	v_fma_f32 v84, -v87, v82, v92
	v_div_scale_f32 v91, null, v80, v80, v59
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v86, v83, 1.0
	v_fmac_f32_e32 v82, v84, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v91
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v72, v79, v80, v72
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v85
	v_fma_f32 v79, -v87, v82, v92
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v80, v80, v56
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v81, v80, v67
	v_fma_f32 v81, -v95, v90, v88
	v_div_scale_f32 v87, s10, v60, v80, v60
	v_fma_f32 v92, -v91, v84, 1.0
	v_div_fmas_f32 v79, v79, v89, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v85 :: v_dual_mul_f32 v81, v87, v83
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v89, s8, v59, v80, v59
	v_div_scale_f32 v92, null, v80, v80, v55
	v_div_fixup_f32 v64, v79, v80, v64
	v_fma_f32 v79, -v95, v90, v88
	v_fma_f32 v88, -v86, v81, v87
	v_mul_f32_e32 v94, v89, v84
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v79, v79, v85, v90
	v_fma_f32 v85, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v56, v80, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v63, v79, v80, v63
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v79, -v86, v81, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v85, v84 :: v_dual_mul_f32 v85, v88, v82
	v_div_scale_f32 v87, null, v80, v80, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s11, v55, v80, v55
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v83, -v93, v85, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v80, v80, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v85, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v92, v90, v86
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v87, v89, 1.0
	v_div_fixup_f32 v60, v79, v80, v60
	v_div_fixup_f32 v59, v81, v80, v59
	v_fma_f32 v79, -v93, v85, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v90, v84, v95 :: v_dual_fmac_f32 v89, v94, v89
	v_div_scale_f32 v81, s8, v50, v80, v50
	v_fma_f32 v84, -v91, v83, 1.0
	v_div_scale_f32 v88, null, v80, v80, v47
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v96, null, v80, v80, v42
	v_div_fmas_f32 v79, v79, v82, v85
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v85, v81, v89
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v86, s9, v49, v80, v49
	v_div_scale_f32 v92, null, v80, v80, v46
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v85, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v84, 1.0
	v_div_fixup_f32 v56, v79, v80, v56
	v_fma_f32 v79, -v91, v93, v86
	v_fmac_f32_e32 v85, v90, v89
	v_div_fixup_f32 v55, v82, v80, v55
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v82, s10, v47, v80, v47
	v_div_scale_f32 v90, null, v80, v80, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v85, v81
	v_fmac_f32_e32 v93, v79, v83
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v82, v84
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v46, v80, v46
	v_div_fmas_f32 v81, v81, v89, v85
	v_fma_f32 v85, -v91, v93, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v88, v79, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v50, v81, v80, v50
	v_div_fmas_f32 v83, v85, v83, v93
	v_rcp_f32_e32 v85, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v49, v83, v80, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v44, v80, v44
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v85, 1.0
	v_div_scale_f32 v86, null, v71, v71, v41
	v_fma_f32 v81, -v88, v79, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s9, v42, v80, v42
	v_div_fmas_f32 v79, v81, v84, v79
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v84, -v90, v82, v91
	v_div_scale_f32 v92, null, v71, v71, v40
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v47, v79, v80, v47
	v_fmac_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v84, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v85
	v_fma_f32 v79, -v90, v82, v91
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v71, v71, v39
	v_div_fixup_f32 v46, v81, v80, v46
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s10, v41, v71, v41
	v_fma_f32 v91, -v92, v84, 1.0
	v_div_fmas_f32 v79, v79, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v90, v83 :: v_dual_fmac_f32 v84, v91, v84
	v_div_scale_f32 v87, s8, v40, v71, v40
	v_div_scale_f32 v91, null, v71, v71, v38
	v_div_fixup_f32 v44, v79, v80, v44
	v_fma_f32 v79, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v79, v79, v85, v89
	v_fma_f32 v85, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v39, v71, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v79, v80, v42
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v85, v84
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v71, v71, v37
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v85, s11, v38, v71, v38
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v71, v71, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v85, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v41, v79, v71, v41
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v40, v81, v71, v40
	v_fmac_f32_e32 v89, v84, v95
	v_div_scale_f32 v81, s8, v37, v71, v37
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v71, v71, v35
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s9, v36, v71, v36
	v_div_scale_f32 v91, null, v71, v71, v34
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v39, v79, v71, v39
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v71, v71, v33
	v_div_fixup_f32 v38, v80, v71, v38
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s10, v35, v71, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v79, v80, v84 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s11, v34, v71, v34
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v71, v71, v32
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v33, v71, v33
	v_div_fixup_f32 v37, v81, v71, v37
	v_div_fixup_f32 v36, v82, v71, v36
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v71, v71, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v32, v71, v32
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v87, v93
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v35, v79, v71, v35
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v80, v71, v34
	v_fma_f32 v80, -v95, v87, v88
	v_div_scale_f32 v89, s10, v31, v71, v31
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v71, v71, v29
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v71, v71, v28
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s8, v30, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v33, v79, v71, v33
	v_fma_f32 v79, -v95, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v29, v71, v29
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v32, v79, v71, v32
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v71, v71, v27
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v28, v71, v28
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v71, v71, v26
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v31, v79, v71, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v30, v80, v71, v30
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s8, v27, v71, v27
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v43, v43, v24
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v43, v43, v25
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v26, v71, v26
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v29, v79, v71, v29
	v_div_fixup_f32 v28, v81, v71, v28
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v91, v90, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v43, v43, v22
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v43, v43, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v79, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v79, s10, v25, v43, v25
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v86, s8, v24, v43, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v85, v79
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v85, v93, v87
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v23, v43, v23
	v_div_fixup_f32 v27, v80, v71, v27
	v_div_fixup_f32 v26, v82, v71, v26
	v_fma_f32 v71, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_scale_f32 v82, null, v43, v43, v21
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	v_fma_f32 v79, -v88, v90, v91
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s9, v22, v43, v22
	v_div_fmas_f32 v71, v71, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_div_scale_f32 v85, null, v43, v43, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v71, v43, v25
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v21, v43, v21
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v71, v86, v79
	v_div_fixup_f32 v24, v81, v43, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v82, v71, v86
	v_div_fixup_f32 v23, v83, v43, v23
	v_div_scale_f32 v83, null, v43, v43, v19
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v20, v43, v20
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v71, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v80, v43, v22
	v_fma_f32 v80, -v82, v71, v86
	v_div_scale_f32 v88, null, v43, v43, v18
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v80, v79, v71
	v_div_scale_f32 v79, null, v43, v43, v17
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v19, v43, v19
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v43, v43, v16
	v_div_fixup_f32 v21, v71, v43, v21
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v71, v90
	v_div_scale_f32 v71, s9, v18, v43, v18
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v43, v43, v14
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v71, v90
	v_div_scale_f32 v93, s10, v17, v43, v17
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v71
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s11, v16, v43, v16
	v_div_fixup_f32 v20, v81, v43, v20
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v88, v87, v71
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s8, v14, v43, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	v_div_fmas_f32 v80, v80, v89, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v43, v43, v9
	v_div_fmas_f32 v71, v71, v90, v87
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v19, v80, v43, v19
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v18, v71, v43, v18
	v_div_fixup_f32 v17, v79, v43, v17
	v_div_scale_f32 v79, null, v43, v43, v8
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v43, v43, v4
	v_div_fmas_f32 v82, v82, v92, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v91, v81, v84
	v_fma_f32 v80, -v85, v87, 1.0
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v16, v82, v43, v16
	v_div_fmas_f32 v71, v71, v95, v81
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v43, v43, v7
	v_div_scale_f32 v82, null, v43, v43, v6
	v_div_scale_f32 v83, vcc_lo, v9, v43, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v80
	v_rcp_f32_e32 v86, v82
	v_div_fixup_f32 v14, v71, v43, v14
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v71, -v79, v81, 1.0
	v_mul_f32_e32 v88, v83, v87
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v71, v81
	v_div_scale_f32 v71, s8, v8, v43, v8
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v92, -v85, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v71, v81
	v_dual_fmac_f32 v91, v95, v91 :: v_dual_fmac_f32 v84, v90, v84
	v_div_scale_f32 v90, s9, v7, v43, v7
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s10, v6, v43, v6
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v92, -v79, v94, v71
	v_div_scale_f32 v95, s11, v4, v43, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v96, v90, v84 :: v_dual_mul_f32 v97, v93, v86
	v_fmac_f32_e32 v94, v92, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v98, v95, v91
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v85, -v80, v96, v90
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v71, -v79, v94, v71
	v_fma_f32 v79, -v89, v98, v95
	v_div_fmas_f32 v83, v83, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v85, v84 :: v_dual_fmac_f32 v97, v92, v86
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v98, v79, v91
	v_div_fmas_f32 v71, v71, v81, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v80, v96, v90
	v_fma_f32 v79, -v82, v97, v93
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v89, v98, v95
	v_div_fixup_f32 v9, v83, v43, v9
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v8, v71, v43, v8
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v7, v80, v43, v7
	v_div_fmas_f32 v81, v81, v91, v98
	s_mov_b32 s8, 0xc1000000
	v_div_fixup_f32 v6, v79, v43, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v4, v81, v43, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v73
	v_rndne_f32_e32 v73, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v79, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v93, v26
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v106, v7
	v_and_b32_e32 v7, 15, v45
	v_and_b32_e32 v26, 15, v73
	v_and_b32_e32 v45, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v73, 10, v0
	v_and_b32_e32 v79, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v90, v29
	v_cvt_i32_f32_e32 v91, v28
	v_and_b32_e32 v28, 15, v76
	v_and_b32_e32 v29, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v75, 0x1800, v73
	v_lshlrev_b32_e32 v76, 6, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v14
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v14, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v78, v41
	v_cvt_i32_f32_e32 v80, v39
	v_cvt_i32_f32_e32 v81, v38
	v_cvt_i32_f32_e32 v94, v25
	v_cvt_i32_f32_e32 v95, v24
	v_cvt_i32_f32_e32 v96, v23
	v_cvt_i32_f32_e32 v97, v22
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v70, 0, v75, v76
	v_and_or_b32 v11, 0x1b00, v14, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v77, v42
	v_cvt_i32_f32_e32 v86, v33
	v_cvt_i32_f32_e32 v87, v32
	v_cvt_i32_f32_e32 v88, v31
	v_cvt_i32_f32_e32 v89, v30
	v_cvt_i32_f32_e32 v102, v17
	v_cvt_i32_f32_e32 v103, v16
	v_cvt_i32_f32_e32 v104, v9
	v_cvt_i32_f32_e32 v84, v35
	v_cvt_i32_f32_e32 v85, v34
	v_cvt_i32_f32_e32 v98, v21
	v_cvt_i32_f32_e32 v100, v19
	v_cvt_i32_f32_e32 v101, v18
	v_cvt_i32_f32_e32 v105, v8
	v_cvt_i32_f32_e32 v107, v6
	v_and_b32_e32 v6, 15, v43
	v_and_b32_e32 v8, 15, v48
	v_and_b32_e32 v9, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v19, 15, v57
	v_and_b32_e32 v21, 15, v61
	v_and_b32_e32 v22, 15, v62
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v31, 15, v67
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v33, 15, v63
	v_and_b32_e32 v34, 15, v60
	v_and_b32_e32 v35, 15, v59
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v41, 15, v46
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v44, 15, v78
	v_and_b32_e32 v46, 15, v80
	v_and_b32_e32 v47, 15, v81
	v_and_b32_e32 v60, 15, v94
	v_and_b32_e32 v61, 15, v95
	v_and_b32_e32 v62, 15, v96
	v_and_b32_e32 v63, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v70, v70, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v69, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v37
	v_cvt_i32_f32_e32 v83, v36
	v_cvt_i32_f32_e32 v92, v27
	v_cvt_i32_f32_e32 v99, v20
	v_and_b32_e32 v20, 15, v58
	v_and_b32_e32 v23, 15, v65
	v_and_b32_e32 v24, 15, v66
	v_and_b32_e32 v25, 15, v71
	v_and_b32_e32 v27, 15, v74
	v_and_b32_e32 v36, 15, v56
	v_and_b32_e32 v37, 15, v55
	v_and_b32_e32 v38, 15, v50
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v43, 15, v77
	v_and_b32_e32 v52, 15, v86
	v_and_b32_e32 v53, 15, v87
	v_and_b32_e32 v54, 15, v88
	v_and_b32_e32 v55, 15, v89
	v_and_b32_e32 v71, 15, v102
	v_and_b32_e32 v72, 15, v103
	v_and_b32_e32 v74, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[6:9]
	ds_store_b128 v70, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[11:14], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[28:31]
	ds_store_b128 v70, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v4
	ds_load_b128 v[28:31], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[44:47]
	ds_store_b128 v70, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[44:47], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[60:63]
	ds_store_b128 v70, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v4
	ds_load_b128 v[60:63], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[16:19]
	ds_store_b128 v70, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v4
	ds_load_b128 v[24:27], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[32:35]
	ds_store_b128 v70, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v4
	ds_load_b128 v[40:43], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v82
	v_and_b32_e32 v49, 15, v83
	v_and_b32_e32 v50, 15, v84
	v_and_b32_e32 v51, 15, v85
	v_and_b32_e32 v56, 15, v90
	v_and_b32_e32 v57, 15, v91
	v_and_b32_e32 v58, 15, v92
	v_and_b32_e32 v59, 15, v93
	v_and_b32_e32 v64, 15, v98
	v_and_b32_e32 v65, 15, v99
	v_and_b32_e32 v66, 15, v100
	v_and_b32_e32 v67, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[48:51]
	ds_store_b128 v70, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v4
	ds_load_b128 v[56:59], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v105
	v_and_b32_e32 v76, 15, v106
	v_and_b32_e32 v77, 15, v107
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v68
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v13, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v70, v[64:67]
	ds_store_b128 v70, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v4
	ds_load_b128 v[69:72], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s45, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v11, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v12, 4, v7
	v_lshl_or_b32 v14, v14, 4, v9
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v2.l, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v6.l, 0xff, v18.l
	v_lshlrev_b16 v6.h, 8, v17.l
	v_and_b16 v7.l, 0xff, v16.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v69, 4, v64
	v_lshl_or_b32 v41, v70, 4, v65
	v_lshl_or_b32 v42, v71, 4, v66
	v_lshl_or_b32 v44, v72, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v15.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
	s_and_b32 vcc_lo, vcc_lo, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 215
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 215
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15500
; TotalNumSgprs: 53
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 215
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
