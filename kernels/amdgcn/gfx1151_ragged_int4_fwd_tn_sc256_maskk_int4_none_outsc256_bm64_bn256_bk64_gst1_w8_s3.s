	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v96, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s25, s4
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[68:69], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s2
	v_add_nc_u32_e32 v65, s68, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow524
	s_load_b128 s[64:67], s[0:1], 0x40
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v110, 15, v0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v126, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s76, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s68, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s6
	s_clause 0x1
	s_load_b32 s7, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[5:6]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[5:6]
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[1:2]
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s20, s[2:3], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[1:2]
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v1, s68, v110
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v140, 0, v110
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v5, 0x70, v5
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v15, s75, 8, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v4, 48, v1
	v_mul_lo_u32 v1, v1, s24
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v141, v140, v5
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v5, 2, v11
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v13, 32, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v14, 28, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[7:8]
	v_add3_u32 v5, 0, v5, v13
	v_mov_b32_e32 v13, v15
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s3, s7, s74
	v_or_b32_e32 v2, 0x700, v0
	v_or_b32_e32 v6, 0xb00, v0
	v_or_b32_e32 v7, 0xf00, v0
	v_or_b32_e32 v8, 0x1300, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s24
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v9, 0x1700, v0
	v_or_b32_e32 v10, 0x1b00, v0
	v_or_b32_e32 v12, 0x1f00, v0
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v11, 1, v11
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s3, s20, v[15:16]
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s24
	v_or_b32_e32 v4, 0x7f0, v0
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v142, 0, v0
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v144, 0, v2
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v145, 0, v3
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v0
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v146, 0, v4
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v147, 0, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v143, 0, v1
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v1, v5, v14
	scratch_store_b64 off, v[13:14], off offset:188 ; 8-byte Folded Spill
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v148, 0, v7
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v149, 0, v8
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v150, 0, v9
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v151, 0, v10
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v152, 0, v12
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v1, 0, v11
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v89, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s24, s20
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s6, 0
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v135
	v_mov_b32_e32 v3, v135
	v_dual_mov_b32 v4, v135 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v135
	v_dual_mov_b32 v6, v135 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v135
	v_dual_mov_b32 v8, v135 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v135 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v135
	v_dual_mov_b32 v12, v135 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v135
	v_dual_mov_b32 v14, v135 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v135
	v_dual_mov_b32 v16, v135 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v135
	v_mov_b32_e32 v19, v135
	v_mov_b32_e32 v20, v135
	v_mov_b32_e32 v21, v135
	v_mov_b32_e32 v22, v135
	v_mov_b32_e32 v23, v135
	v_mov_b32_e32 v24, v135
	v_mov_b32_e32 v26, v135
	v_mov_b32_e32 v27, v135
	v_mov_b32_e32 v28, v135
	v_mov_b32_e32 v29, v135
	v_mov_b32_e32 v30, v135
	v_mov_b32_e32 v31, v135
	v_mov_b32_e32 v32, v135
	v_mov_b32_e32 v34, v135
	v_mov_b32_e32 v35, v135
	v_mov_b32_e32 v36, v135
	v_mov_b32_e32 v37, v135
	v_mov_b32_e32 v38, v135
	v_mov_b32_e32 v39, v135
	v_mov_b32_e32 v40, v135
	v_mov_b32_e32 v42, v135
	v_mov_b32_e32 v43, v135
	v_mov_b32_e32 v44, v135
	v_mov_b32_e32 v45, v135
	v_mov_b32_e32 v46, v135
	v_mov_b32_e32 v47, v135
	v_mov_b32_e32 v48, v135
	v_mov_b32_e32 v50, v135
	v_mov_b32_e32 v51, v135
	v_mov_b32_e32 v52, v135
	v_mov_b32_e32 v53, v135
	v_mov_b32_e32 v54, v135
	v_mov_b32_e32 v55, v135
	v_mov_b32_e32 v56, v135
	v_mov_b32_e32 v58, v135
	v_mov_b32_e32 v59, v135
	v_mov_b32_e32 v60, v135
	v_mov_b32_e32 v61, v135
	v_mov_b32_e32 v62, v135
	v_mov_b32_e32 v63, v135
	v_mov_b32_e32 v64, v135
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s6, 7
	s_mov_b32 s15, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v109, off offset:168
	scratch_store_b32 off, v108, off offset:164
	scratch_store_b32 off, v107, off offset:160
	scratch_store_b32 off, v106, off offset:156
	scratch_store_b32 off, v105, off offset:152
	scratch_store_b32 off, v104, off offset:148
	scratch_store_b32 off, v103, off offset:144
	scratch_store_b32 off, v102, off offset:140
	scratch_store_b32 off, v101, off offset:136
	scratch_store_b32 off, v95, off offset:132
	scratch_store_b32 off, v94, off offset:128
	scratch_store_b32 off, v80, off offset:124
	scratch_store_b32 off, v66, off offset:120
	scratch_store_b32 off, v69, off offset:116
	scratch_store_b32 off, v68, off offset:112
	scratch_store_b32 off, v74, off offset:108
	scratch_store_b32 off, v70, off offset:104
	scratch_store_b32 off, v73, off offset:100
	scratch_store_b32 off, v71, off offset:96
	scratch_store_b32 off, v72, off offset:92
	scratch_store_b32 off, v79, off offset:88
	scratch_store_b32 off, v78, off offset:84
	scratch_store_b32 off, v77, off offset:80
	scratch_store_b32 off, v76, off offset:76
	scratch_store_b32 off, v75, off offset:72
	scratch_store_b32 off, v87, off offset:68
	scratch_store_b32 off, v86, off offset:64
	scratch_store_b32 off, v85, off offset:60
	scratch_store_b32 off, v84, off offset:56
	scratch_store_b32 off, v83, off offset:52
	scratch_store_b32 off, v82, off offset:48
	scratch_store_b32 off, v81, off offset:44
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v88, off offset:40
	scratch_store_b32 off, v93, off offset:36
	scratch_store_b32 off, v92, off offset:32
	scratch_store_b32 off, v91, off offset:28
	scratch_store_b32 off, v90, off offset:24
	scratch_store_b32 off, v89, off offset:20
	scratch_store_b32 off, v100, off offset:16
	scratch_store_b32 off, v99, off offset:12
	scratch_store_b32 off, v98, off offset:8
	scratch_store_b32 off, v97, off offset:4
	scratch_store_b32 off, v96, off
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, s14
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v66, 6, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s27, s26, 1
	s_or_b32 s28, s26, 2
	s_or_b32 s29, s26, 3
	s_or_b32 s30, s26, 4
	s_or_b32 s31, s26, 5
	s_or_b32 s33, s26, 6
	s_or_b32 s34, s26, 7
	s_or_b32 s35, s26, 8
	s_or_b32 s36, s26, 9
	s_or_b32 s37, s26, 10
	s_or_b32 s38, s26, 11
	s_or_b32 s39, s26, 12
	s_or_b32 s40, s26, 13
	s_or_b32 s41, s26, 14
	s_or_b32 s42, s26, 15
	s_or_b32 s43, s26, 16
	s_or_b32 s44, s26, 17
	s_or_b32 s45, s26, 18
	s_or_b32 s46, s26, 19
	s_or_b32 s47, s26, 20
	s_or_b32 s48, s26, 21
	s_or_b32 s49, s26, 22
	s_or_b32 s50, s26, 23
	s_or_b32 s51, s26, 24
	s_or_b32 s52, s26, 25
	s_or_b32 s53, s26, 26
	s_or_b32 s54, s26, 27
	s_or_b32 s55, s26, 28
	s_or_b32 s56, s26, 29
	s_or_b32 s57, s26, 30
	s_or_b32 s4, s26, 31
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cmp_lt_i32 s26, s7
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s26, v66
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s27, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s28, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[69:70], null, s27, s74, v[67:68]
	v_mad_u64_u32 v[70:71], null, s28, s74, v[67:68]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s29, s7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v155, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s29, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s30, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v156, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s30, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s31, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v157, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s31, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s33, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v158, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s33, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s34, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v159, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s34, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s35, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v160, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s35, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s36, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v161, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s36, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s37, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v162, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s37, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s38, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v163, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s38, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s39, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v164, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s39, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s40, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v165, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s40, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s41, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v166, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s41, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s42, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v167, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s42, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s43, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v168, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s43, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s44, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v169, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s44, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s45, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v170, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s45, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s46, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v171, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s46, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s47, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v172, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s47, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s48, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v173, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s48, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s49, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v174, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s49, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s50, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v175, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s50, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s51, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v176, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s51, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s52, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v177, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s52, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s53, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v178, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s53, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s54, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v179, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s54, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s55, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v180, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s55, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s56, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v181, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s56, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s57, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v182, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s57, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[71:72], null, s4, s74, v[67:68]
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v66, s25, v[65:66]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cmp_lt_i32 s4, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v66
	s_cselect_b32 s4, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v74, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 4, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v75, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 8, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v76, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 12, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v77, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v78, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 20, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v79, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 24, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, 28, v66
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v80, 0x80000000, v72, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v66, s25, v[65:66]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v66
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v72, s3
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x1e
	buffer_load_u8 v83, v68, s[8:11], 0 offen
	buffer_load_u8 v84, v69, s[8:11], 0 offen
	buffer_load_u8 v85, v155, s[8:11], 0 offen
	buffer_load_u8 v86, v156, s[8:11], 0 offen
	buffer_load_u8 v87, v157, s[8:11], 0 offen
	buffer_load_u8 v88, v158, s[8:11], 0 offen
	buffer_load_u8 v89, v159, s[8:11], 0 offen
	buffer_load_u8 v90, v160, s[8:11], 0 offen
	buffer_load_u8 v91, v161, s[8:11], 0 offen
	buffer_load_u8 v92, v162, s[8:11], 0 offen
	buffer_load_u8 v93, v163, s[8:11], 0 offen
	buffer_load_u8 v94, v164, s[8:11], 0 offen
	buffer_load_u8 v95, v165, s[8:11], 0 offen
	buffer_load_u8 v96, v166, s[8:11], 0 offen
	buffer_load_u8 v97, v167, s[8:11], 0 offen
	buffer_load_u8 v98, v168, s[8:11], 0 offen
	buffer_load_u8 v99, v169, s[8:11], 0 offen
	buffer_load_u8 v100, v170, s[8:11], 0 offen
	buffer_load_u8 v154, v171, s[8:11], 0 offen
	buffer_load_u8 v101, v172, s[8:11], 0 offen
	buffer_load_u8 v102, v173, s[8:11], 0 offen
	buffer_load_u8 v103, v174, s[8:11], 0 offen
	buffer_load_u8 v104, v175, s[8:11], 0 offen
	buffer_load_u8 v105, v176, s[8:11], 0 offen
	buffer_load_u8 v106, v177, s[8:11], 0 offen
	buffer_load_u8 v107, v178, s[8:11], 0 offen
	buffer_load_u8 v108, v179, s[8:11], 0 offen
	buffer_load_u8 v109, v180, s[8:11], 0 offen
	buffer_load_u8 v110, v181, s[8:11], 0 offen
	buffer_load_u8 v111, v182, s[8:11], 0 offen
	buffer_load_u8 v112, v70, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v68, v74, s[20:23], 0 offen
	buffer_load_u8 v69, v75, s[20:23], 0 offen
	buffer_load_u8 v70, v76, s[20:23], 0 offen
	buffer_load_u8 v72, v78, s[20:23], 0 offen
	buffer_load_u8 v73, v79, s[20:23], 0 offen
	buffer_load_u8 v74, v80, s[20:23], 0 offen
	buffer_load_u8 v66, v66, s[20:23], 0 offen
	buffer_load_u8 v75, v77, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v113, v71, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s3, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(8)
	ds_store_b8 v142, v68
	s_waitcnt vmcnt(7)
	ds_store_b8 v142, v69 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v142, v70 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v142, v72 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v142, v73 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v143, v75
	ds_store_b8 v142, v74 offset:1536
	ds_store_b8 v144, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v68, v140 offset:320
	ds_load_u8 v69, v140 offset:256
	ds_load_u8 v153, v140 offset:336
	ds_load_u8 v66, v140 offset:272
	ds_load_u8 v255, v140 offset:352
	ds_load_u8 v70, v140 offset:288
	ds_load_u8 v249, v140 offset:368
	ds_load_u8 v250, v140 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v140 offset:448
	ds_load_u8 v71, v140 offset:384
	ds_load_u8 v74, v140 offset:464
	ds_load_u8 v76, v140 offset:400
	ds_load_u8 v138, v140 offset:480
	ds_load_u8 v139, v140 offset:416
	ds_load_u8 v253, v140 offset:496
	ds_load_u8 v254, v140 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v66, v153, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v71, v69, 0xc0c0004
	ds_load_u8 v71, v140 offset:64
	ds_load_u8 v73, v140
	ds_load_u8 v79, v140 offset:80
	ds_load_u8 v72, v140 offset:96
	ds_load_u8 v136, v140 offset:112
	ds_load_u8 v80, v140 offset:16
	ds_load_u8 v75, v140 offset:32
	ds_load_u8 v137, v140 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v155, v73, v71, 0xc0c0004
	ds_load_u8 v156, v140 offset:192
	ds_load_u8 v157, v140 offset:128
	ds_load_u8 v81, v140 offset:208
	ds_load_u8 v82, v140 offset:144
	ds_load_u8 v77, v140 offset:224
	ds_load_u8 v78, v140 offset:160
	ds_load_u8 v71, v140 offset:240
	ds_load_u8 v73, v140 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v76, v80, v79, 0xc0c0004
	v_lshl_or_b32 v80, v74, 16, v66
	v_perm_b32 v66, v70, v255, 0xc0c0004
	v_perm_b32 v70, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v75, v70, 16, v66
	v_perm_b32 v66, v250, v249, 0xc0c0004
	v_perm_b32 v70, v254, v253, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v78, v77, 0xc0c0004
	v_lshl_or_b32 v68, v156, 16, v155
	ds_load_u8 v243, v140 offset:960
	ds_load_u8 v244, v140 offset:896
	ds_load_u8 v211, v140 offset:1024
	ds_load_u8 v220, v140 offset:976
	ds_load_u8 v221, v140 offset:912
	ds_load_u8 v215, v140 offset:992
	ds_load_u8 v216, v140 offset:928
	ds_load_u8 v212, v140 offset:944
	ds_load_u8 v245, v140 offset:832
	ds_load_u8 v246, v140 offset:768
	ds_load_u8 v226, v140 offset:848
	ds_load_u8 v228, v140 offset:784
	ds_load_u8 v223, v140 offset:864
	ds_load_u8 v224, v140 offset:800
	ds_load_u8 v217, v140 offset:880
	ds_load_u8 v218, v140 offset:816
	ds_load_u8 v247, v140 offset:704
	ds_load_u8 v248, v140 offset:640
	ds_load_u8 v232, v140 offset:720
	ds_load_u8 v233, v140 offset:656
	ds_load_u8 v229, v140 offset:736
	ds_load_u8 v231, v140 offset:672
	ds_load_u8 v225, v140 offset:752
	ds_load_u8 v227, v140 offset:688
	ds_load_u8 v251, v140 offset:576
	ds_load_u8 v252, v140 offset:512
	ds_load_u8 v240, v140 offset:592
	ds_load_u8 v241, v140 offset:528
	ds_load_u8 v237, v140 offset:608
	ds_load_u8 v238, v140 offset:544
	ds_load_u8 v234, v140 offset:624
	ds_load_u8 v235, v140 offset:560
	ds_load_u8 v213, v140 offset:1216
	ds_load_u8 v214, v140 offset:1280
	ds_load_u8 v185, v140 offset:1232
	ds_load_u8 v186, v140 offset:1168
	ds_load_u8 v182, v140 offset:1248
	ds_load_u8 v184, v140 offset:1184
	ds_load_u8 v180, v140 offset:1264
	ds_load_u8 v181, v140 offset:1200
	ds_load_u8 v219, v140 offset:1152
	ds_load_u8 v222, v140 offset:1088
	ds_load_u8 v193, v140 offset:1104
	ds_load_u8 v194, v140 offset:1040
	ds_load_u8 v190, v140 offset:1120
	ds_load_u8 v191, v140 offset:1056
	ds_load_u8 v187, v140 offset:1136
	ds_load_u8 v188, v140 offset:1072
	ds_load_u8 v230, v140 offset:1472
	ds_load_u8 v179, v140 offset:1536
	ds_load_u8 v201, v140 offset:1488
	ds_load_u8 v203, v140 offset:1424
	ds_load_u8 v198, v140 offset:1504
	ds_load_u8 v200, v140 offset:1440
	ds_load_u8 v195, v140 offset:1520
	ds_load_u8 v197, v140 offset:1456
	ds_load_u8 v236, v140 offset:1408
	ds_load_u8 v239, v140 offset:1344
	ds_load_u8 v209, v140 offset:1360
	ds_load_u8 v210, v140 offset:1296
	ds_load_u8 v207, v140 offset:1376
	ds_load_u8 v208, v140 offset:1312
	ds_load_u8 v204, v140 offset:1392
	ds_load_u8 v205, v140 offset:1328
	ds_load_u8 v183, v140 offset:1984
	ds_load_u8 v159, v140 offset:2000
	ds_load_u8 v161, v140 offset:1936
	ds_load_u8 v157, v140 offset:2016
	ds_load_u8 v158, v140 offset:1952
	ds_load_u8 v242, v145
	ds_load_u8 v155, v146
	ds_load_u8 v156, v140 offset:1968
	ds_load_u8 v189, v140 offset:1920
	ds_load_u8 v192, v140 offset:1856
	ds_load_u8 v166, v140 offset:1872
	ds_load_u8 v168, v140 offset:1808
	ds_load_u8 v163, v140 offset:1888
	ds_load_u8 v164, v140 offset:1824
	ds_load_u8 v160, v140 offset:1904
	ds_load_u8 v162, v140 offset:1840
	ds_load_u8 v196, v140 offset:1728
	ds_load_u8 v199, v140 offset:1792
	ds_load_u8 v171, v140 offset:1744
	ds_load_u8 v172, v140 offset:1680
	ds_load_u8 v169, v140 offset:1760
	ds_load_u8 v170, v140 offset:1696
	ds_load_u8 v165, v140 offset:1776
	ds_load_u8 v167, v140 offset:1712
	ds_load_u8 v202, v140 offset:1664
	ds_load_u8 v206, v140 offset:1600
	ds_load_u8 v177, v140 offset:1616
	ds_load_u8 v178, v140 offset:1552
	ds_load_u8 v175, v140 offset:1632
	ds_load_u8 v176, v140 offset:1568
	ds_load_u8 v173, v140 offset:1648
	ds_load_u8 v174, v140 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v142, v83
	ds_store_b8 v142, v84 offset:256
	ds_store_b8 v142, v85 offset:512
	ds_store_b8 v142, v87 offset:1024
	ds_store_b8 v142, v88 offset:1280
	ds_store_b8 v142, v89 offset:1536
	ds_store_b8 v142, v91 offset:2048
	ds_store_b8 v142, v92 offset:2304
	ds_store_b8 v142, v93 offset:2560
	ds_store_b8 v142, v95 offset:3072
	ds_store_b8 v142, v96 offset:3328
	ds_store_b8 v142, v97 offset:3584
	ds_store_b8 v142, v99 offset:4096
	ds_store_b8 v142, v100 offset:4352
	ds_store_b8 v142, v154 offset:4608
	ds_store_b8 v142, v102 offset:5120
	ds_store_b8 v142, v103 offset:5376
	ds_store_b8 v142, v104 offset:5632
	ds_store_b8 v142, v106 offset:6144
	ds_store_b8 v142, v107 offset:6400
	ds_store_b8 v142, v108 offset:6656
	ds_store_b8 v142, v110 offset:7168
	ds_store_b8 v142, v111 offset:7424
	ds_store_b8 v142, v112 offset:7680
	ds_store_b8 v143, v86
	ds_store_b8 v144, v90
	ds_store_b8 v147, v94
	ds_store_b8 v148, v98
	ds_store_b8 v149, v101
	ds_store_b8 v150, v105
	ds_store_b8 v151, v109
	s_waitcnt vmcnt(0)
	ds_store_b8 v152, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v83, v141 offset:1280
	ds_load_u8 v84, v141 offset:1024
	ds_load_u8 v85, v141 offset:1920
	ds_load_u8 v86, v141 offset:1664
	ds_load_u8 v87, v141 offset:1408
	ds_load_u8 v88, v141 offset:1152
	v_lshl_or_b32 v74, v74, 16, v72
	v_perm_b32 v72, v137, v136, 0xc0c0004
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v246, v245, 0xc0c0004
	v_lshl_or_b32 v79, v79, 16, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v70, v73, 16, v72
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v141 offset:1792
	ds_load_u8 v89, v141 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v85, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v89, v84, 0xc0c0004
	ds_load_u8 v89, v141 offset:256
	ds_load_u8 v90, v141
	ds_load_u8 v91, v141 offset:896
	ds_load_u8 v92, v141 offset:640
	ds_load_u8 v93, v141 offset:384
	ds_load_u8 v94, v141 offset:128
	v_lshl_or_b32 v84, v84, 16, v83
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v141 offset:768
	ds_load_u8 v95, v141 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v83, v90, 16, v89
	v_perm_b32 v89, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v85, v89, 16, v88
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[70:71], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[74:75], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[70:71], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v68, v244, v243, 0xc0c0004
	v_perm_b32 v70, v252, v251, 0xc0c0004
	v_perm_b32 v71, v248, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[74:75], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v68, 16, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v66, v141 offset:3328
	ds_load_u8 v70, v141 offset:3072
	ds_load_u8 v72, v141 offset:3968
	ds_load_u8 v73, v141 offset:3712
	ds_load_u8 v74, v141 offset:3456
	ds_load_u8 v75, v141 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v141 offset:3840
	ds_load_u8 v71, v141 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v141 offset:2304
	ds_load_u8 v76, v141 offset:2048
	ds_load_u8 v77, v141 offset:2944
	ds_load_u8 v78, v141 offset:2688
	ds_load_u8 v79, v141 offset:2432
	ds_load_u8 v80, v141 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	ds_load_u8 v71, v141 offset:2816
	ds_load_u8 v81, v141 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v75, v74, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v70, v81, 16, v76
	v_perm_b32 v76, v241, v240, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v66
	v_perm_b32 v66, v228, v226, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v221, v220, 0xc0c0004
	v_perm_b32 v77, v233, v232, 0xc0c0004
	v_perm_b32 v78, v238, v237, 0xc0c0004
	v_perm_b32 v79, v231, v229, 0xc0c0004
	v_perm_b32 v80, v212, v242, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v66
	v_lshl_or_b32 v74, v77, 16, v76
	v_perm_b32 v66, v224, v223, 0xc0c0004
	v_perm_b32 v76, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v68, v236, v230, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v66
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v66, v235, v234, 0xc0c0004
	v_perm_b32 v78, v227, v225, 0xc0c0004
	v_perm_b32 v79, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v78, 16, v66
	v_lshl_or_b32 v79, v80, 16, v79
	v_perm_b32 v66, v214, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v70, v211, v222, 0xc0c0004
	v_perm_b32 v71, v219, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v68, 16, v66
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v66, v141 offset:5376
	ds_load_u8 v70, v141 offset:5120
	ds_load_u8 v72, v141 offset:6016
	ds_load_u8 v73, v141 offset:5760
	ds_load_u8 v74, v141 offset:5504
	ds_load_u8 v75, v141 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v141 offset:5888
	ds_load_u8 v71, v141 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v141 offset:4352
	ds_load_u8 v76, v141 offset:4096
	ds_load_u8 v77, v141 offset:4992
	ds_load_u8 v78, v141 offset:4736
	ds_load_u8 v79, v141 offset:4480
	ds_load_u8 v80, v141 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	ds_load_u8 v71, v141 offset:4864
	ds_load_u8 v81, v141 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v75, v74, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v70, v81, 16, v76
	v_perm_b32 v76, v194, v193, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v66
	v_perm_b32 v66, v210, v209, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v203, v201, 0xc0c0004
	v_perm_b32 v77, v186, v185, 0xc0c0004
	v_perm_b32 v78, v191, v190, 0xc0c0004
	v_perm_b32 v79, v184, v182, 0xc0c0004
	v_perm_b32 v80, v188, v187, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v66
	v_lshl_or_b32 v74, v77, 16, v76
	v_perm_b32 v66, v208, v207, 0xc0c0004
	v_perm_b32 v76, v200, v198, 0xc0c0004
	v_perm_b32 v81, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v76, 16, v66
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v66, v205, v204, 0xc0c0004
	v_perm_b32 v78, v197, v195, 0xc0c0004
	v_perm_b32 v68, v189, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v78, 16, v66
	v_lshl_or_b32 v78, v81, 16, v80
	v_perm_b32 v66, v199, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v70, v179, v206, 0xc0c0004
	v_perm_b32 v71, v202, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v68, 16, v66
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v66, v141 offset:7424
	ds_load_u8 v70, v141 offset:7168
	ds_load_u8 v72, v141 offset:8064
	ds_load_u8 v73, v141 offset:7808
	ds_load_u8 v74, v141 offset:7552
	ds_load_u8 v75, v141 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v141 offset:7936
	ds_load_u8 v71, v141 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v141 offset:6400
	ds_load_u8 v76, v141 offset:6144
	ds_load_u8 v77, v141 offset:7040
	ds_load_u8 v78, v141 offset:6784
	ds_load_u8 v79, v141 offset:6528
	ds_load_u8 v80, v141 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	ds_load_u8 v71, v141 offset:6912
	ds_load_u8 v81, v141 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v75, v74, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v70, v81, 16, v76
	v_perm_b32 v76, v178, v177, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v66
	v_perm_b32 v66, v168, v166, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v161, v159, 0xc0c0004
	v_perm_b32 v77, v172, v171, 0xc0c0004
	v_perm_b32 v78, v176, v175, 0xc0c0004
	v_perm_b32 v79, v170, v169, 0xc0c0004
	v_perm_b32 v80, v156, v155, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v66
	v_lshl_or_b32 v74, v77, 16, v76
	v_perm_b32 v66, v164, v163, 0xc0c0004
	v_perm_b32 v76, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v76, 16, v66
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v66, v174, v173, 0xc0c0004
	v_perm_b32 v78, v167, v165, 0xc0c0004
	v_perm_b32 v79, v162, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v78, 16, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v66, off, off offset:172
	scratch_load_b32 v68, off, off offset:176
	scratch_load_b32 v69, off, off offset:180
	scratch_load_b32 v70, off, off offset:184
	scratch_load_b64 v[71:72], off, off offset:188
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s18
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s74
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v2
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v72, v1
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v75, v4
	v_cvt_f32_i32_e32 v76, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v78, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v82, v11
	v_cvt_f32_i32_e32 v83, v12
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v86, v15
	v_cvt_f32_i32_e32 v87, v16
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
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
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v66, s6, v66, 1
	v_add_lshl_u32 v68, s6, v68, 1
	v_add_lshl_u32 v69, s6, v69, 1
	v_add_lshl_u32 v70, s6, v70, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v71, v71, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v71, v71, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	buffer_load_u16 v70, v70, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s24
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v71
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v25, v25, v68 :: v_dual_lshlrev_b32 v66, 16, v66
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v13, off, off offset:200
	scratch_load_b32 v109, off, off offset:168
	scratch_load_b32 v108, off, off offset:164
	scratch_load_b32 v107, off, off offset:160
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v71, v80, v66
	v_dual_mul_f32 v31, v31, v68 :: v_dual_lshlrev_b32 v70, 16, v70
	v_dual_mul_f32 v80, v85, v66 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_mul_f32 v85, v86, v66 :: v_dual_mul_f32 v32, v32, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v86, v87, v66 :: v_dual_mul_f32 v41, v41, v69
	v_dual_mul_f32 v64, v64, v70 :: v_dual_mul_f32 v75, v66, v75
	v_dual_mul_f32 v74, v66, v74 :: v_dual_mul_f32 v17, v68, v17
	v_dual_mul_f32 v73, v66, v73 :: v_dual_mul_f32 v20, v68, v20
	v_dual_mul_f32 v72, v66, v72 :: v_dual_mul_f32 v23, v68, v23
	v_dual_mul_f32 v79, v66, v79 :: v_dual_mul_f32 v18, v68, v18
	v_dual_mul_f32 v78, v66, v78 :: v_dual_mul_f32 v21, v68, v21
	v_dual_mul_f32 v77, v66, v77 :: v_dual_mul_f32 v24, v68, v24
	v_dual_mul_f32 v76, v66, v76 :: v_dual_mul_f32 v29, v68, v29
	v_dual_mul_f32 v84, v66, v84 :: v_dual_mul_f32 v27, v68, v27
	v_dual_mul_f32 v83, v66, v83 :: v_dual_mul_f32 v22, v68, v22
	v_dual_mul_f32 v82, v66, v82 :: v_dual_mul_f32 v35, v69, v35
	v_dual_mul_f32 v66, v66, v81 :: v_dual_mul_f32 v39, v69, v39
	v_dual_mul_f32 v30, v30, v68 :: v_dual_mul_f32 v47, v47, v69
	v_dual_mul_f32 v46, v46, v69 :: v_dual_mul_f32 v57, v57, v70
	v_dual_mul_f32 v48, v48, v69 :: v_dual_mul_f32 v63, v63, v70
	v_dual_mul_f32 v62, v62, v70 :: v_dual_mul_f32 v19, v68, v19
	v_dual_mul_f32 v28, v68, v28 :: v_dual_mul_f32 v33, v69, v33
	v_dual_mul_f32 v26, v68, v26 :: v_dual_mul_f32 v37, v69, v37
	v_dual_mul_f32 v36, v69, v36 :: v_dual_mul_f32 v51, v70, v51
	v_dual_mul_f32 v34, v69, v34 :: v_dual_mul_f32 v49, v70, v49
	v_dual_mul_f32 v40, v69, v40 :: v_dual_mul_f32 v55, v70, v55
	v_dual_mul_f32 v38, v69, v38 :: v_dual_mul_f32 v53, v70, v53
	v_dual_mul_f32 v45, v69, v45 :: v_dual_mul_f32 v52, v70, v52
	v_dual_mul_f32 v44, v69, v44 :: v_dual_mul_f32 v61, v70, v61
	v_dual_mul_f32 v43, v69, v43 :: v_dual_mul_f32 v50, v70, v50
	v_dual_mul_f32 v42, v69, v42 :: v_dual_mul_f32 v59, v70, v59
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v106, off, off offset:156
	scratch_load_b32 v105, off, off offset:152
	scratch_load_b32 v104, off, off offset:148
	scratch_load_b32 v103, off, off offset:144
	scratch_load_b32 v102, off, off offset:140
	scratch_load_b32 v101, off, off offset:136
	scratch_load_b32 v95, off, off offset:132
	scratch_load_b32 v94, off, off offset:128
	scratch_load_b32 v91, off, off offset:28
	scratch_load_b32 v90, off, off offset:24
	scratch_load_b32 v89, off, off offset:20
	scratch_load_b32 v100, off, off offset:16
	scratch_load_b32 v96, off, off
	scratch_load_b32 v99, off, off offset:12
	scratch_load_b32 v98, off, off offset:8
	scratch_load_b32 v97, off, off offset:4
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(19)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v56, v70, v56
	v_mul_f32_e32 v54, v70, v54
	v_mul_f32_e32 v60, v70, v60
	v_mul_f32_e32 v58, v70, v58
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v87, off, off offset:68
	scratch_load_b32 v69, off, off offset:116
	scratch_load_b32 v68, off, off offset:112
	scratch_load_b32 v70, off, off offset:104
	scratch_load_b32 v81, off, off offset:44
	scratch_load_b32 v88, off, off offset:40
	scratch_load_b32 v93, off, off offset:36
	scratch_load_b32 v92, off, off offset:32
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v134, v72, v1 :: v_dual_fmac_f32 v133, v73, v2
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v132, v74, v3 :: v_dual_fmac_f32 v123, v83, v12
	v_dual_fmac_f32 v131, v75, v4 :: v_dual_fmac_f32 v130, v76, v5
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v119, v86, v16
	v_dual_fmac_f32 v129, v77, v6 :: v_dual_fmac_f32 v128, v78, v7
	v_fmac_f32_e32 v121, v80, v14
	v_fmac_f32_e32 v127, v79, v8
	v_dual_fmac_f32 v126, v71, v9 :: v_dual_fmac_f32 v117, v18, v2
	v_fmac_f32_e32 v125, v66, v10
	v_dual_fmac_f32 v124, v82, v11 :: v_dual_fmac_f32 v115, v20, v4
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v122, v84, v13 :: v_dual_fmac_f32 v109, v22, v6
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v120, v85, v15 :: v_dual_fmac_f32 v107, v24, v8
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v80, off, off offset:124
	scratch_load_b32 v66, off, off offset:120
	scratch_load_b32 v74, off, off offset:108
	scratch_load_b32 v73, off, off offset:100
	scratch_load_b32 v71, off, off offset:96
	scratch_load_b32 v72, off, off offset:92
	scratch_load_b32 v79, off, off offset:88
	scratch_load_b32 v78, off, off offset:84
	scratch_load_b32 v77, off, off offset:80
	scratch_load_b32 v76, off, off offset:76
	scratch_load_b32 v75, off, off offset:72
	scratch_load_b32 v86, off, off offset:64
	scratch_load_b32 v85, off, off offset:60
	scratch_load_b32 v84, off, off offset:56
	scratch_load_b32 v83, off, off offset:52
	scratch_load_b32 v82, off, off offset:48
	v_fmac_f32_e32 v118, v17, v1
	v_fmac_f32_e32 v116, v19, v3
	v_fmac_f32_e32 v114, v21, v5
	v_fmac_f32_e32 v108, v23, v7
	s_waitcnt vmcnt(38)
	v_dual_fmac_f32 v106, v25, v9 :: v_dual_fmac_f32 v105, v26, v10
	s_waitcnt vmcnt(36)
	v_dual_fmac_f32 v104, v27, v11 :: v_dual_fmac_f32 v103, v28, v12
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v102, v29, v13 :: v_dual_fmac_f32 v101, v30, v14
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v95, v31, v15 :: v_dual_fmac_f32 v94, v32, v16
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v91, v57, v9 :: v_dual_fmac_f32 v90, v58, v10
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v89, v59, v11 :: v_dual_fmac_f32 v100, v60, v12
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v96, v61, v13 :: v_dual_fmac_f32 v99, v62, v14
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v98, v63, v15 :: v_dual_fmac_f32 v97, v64, v16
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v87, v47, v15
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v69, v35, v3 :: v_dual_fmac_f32 v68, v36, v4
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v70, v38, v6 :: v_dual_fmac_f32 v81, v53, v5
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v88, v54, v6 :: v_dual_fmac_f32 v93, v55, v7
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v92, v56, v8
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v80, v33, v1
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v66, v34, v2
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v74, v37, v5 :: v_dual_fmac_f32 v73, v39, v7
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v71, v40, v8 :: v_dual_fmac_f32 v72, v41, v9
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v79, v42, v10 :: v_dual_fmac_f32 v78, v43, v11
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v77, v44, v12 :: v_dual_fmac_f32 v76, v45, v13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v75, v46, v14 :: v_dual_fmac_f32 v86, v48, v16
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v85, v49, v1 :: v_dual_fmac_f32 v84, v50, v2
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v83, v51, v3 :: v_dual_fmac_f32 v82, v52, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v5, v65 :: v_dual_and_b32 v110, 15, v0
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 7, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, |v128|, |v127|, |v126|
	v_max_f32_e64 v15, |v66|, |v66|
	v_max_f32_e64 v16, |v80|, |v80|
	v_max_f32_e64 v17, |v85|, |v85|
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v6
	v_or_b32_e32 v3, 60, v6
	v_or_b32_e32 v9, 58, v6
	s_mov_b32 s25, 0x76543210
	v_or_b32_e32 v11, 36, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s0
	v_add_co_u32 v3, s0, s68, v3
	v_add_co_ci_u32_e64 v4, null, s69, 0, s0
	v_add_co_u32 v9, s1, s68, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s5, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s5
	v_add_co_u32 v3, s5, s68, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 52, v6
	v_or_b32_e32 v10, 50, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[70:71], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s9, s68, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s9
	v_add_co_u32 v9, s9, s68, v10
	v_add_co_ci_u32_e64 v10, null, s69, 0, s9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v6
	v_or_b32_e32 v4, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[72:73], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[70:71], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s13, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s13
	v_add_co_u32 v3, s13, s68, v4
	v_add_co_ci_u32_e64 v4, null, s69, 0, s13
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[72:73], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 44, v6
	v_or_b32_e32 v10, 42, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[72:73], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[70:71], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s17, s68, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s17
	v_add_co_u32 v9, s17, s68, v10
	v_add_co_ci_u32_e64 v10, null, s69, 0, s17
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v6
	v_or_b32_e32 v4, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[72:73], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[70:71], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s21, s68, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s21
	v_add_co_u32 v13, s21, s68, v4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v3, |v133|, |v133|
	v_max_f32_e64 v4, |v134|, |v134|
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v8, 0x80, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s69, 0, s21
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[72:73], v[9:10]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[70:71], v[1:2]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[72:73], v[1:2]
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v4, v3
	v_max3_f32 v2, |v131|, |v130|, |v129|
	v_max3_f32 v3, |v125|, |v124|, |v123|
	v_max3_f32 v4, |v122|, |v121|, |v120|
	v_max_f32_e64 v9, |v117|, |v117|
	v_max_f32_e64 v10, |v118|, |v118|
	v_max3_f32 v1, v1, |v132|, v2
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v19, 4, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v3, v4, |v119|
	v_max3_f32 v4, |v115|, |v114|, |v109|
	v_max_f32_e32 v3, v10, v9
	v_max3_f32 v9, |v105|, |v104|, |v103|
	v_max3_f32 v10, |v102|, |v101|, |v95|
	v_max3_f32 v1, v1, v12, v2
	v_max3_f32 v2, |v108|, |v107|, |v106|
	v_max3_f32 v3, v3, |v116|, v4
	v_max3_f32 v12, |v79|, |v78|, |v77|
	v_max3_f32 v4, v9, v10, |v94|
	v_max_f32_e32 v9, v16, v15
	v_max3_f32 v10, |v68|, |v74|, |v70|
	v_max3_f32 v15, |v76|, |v75|, |v87|
	v_max_f32_e64 v16, |v84|, |v84|
	v_max3_f32 v2, v3, v2, v4
	v_max3_f32 v3, |v73|, |v71|, |v72|
	v_max3_f32 v4, v9, |v69|, v10
	v_max3_f32 v9, v12, v15, |v86|
	v_max_f32_e32 v10, v17, v16
	v_max3_f32 v12, |v82|, |v81|, |v88|
	v_max3_f32 v15, |v90|, |v89|, |v100|
	v_max3_f32 v16, |v96|, |v99|, |v98|
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v17, v1, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, v3, v9
	v_max3_f32 v4, |v93|, |v92|, |v91|
	v_max3_f32 v9, v10, |v83|, v12
	v_max3_f32 v10, v15, v16, |v97|
	v_max_f32_e32 v12, v17, v17
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v17, v2, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s26, s68, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v9, v4, v10
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v3, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v17, v17
	v_max_f32_e32 v1, v1, v12
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v10, 0x60, v0
	v_lshlrev_b32_e32 v22, 1, v8
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v11
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v4, s25, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 8, v0
	v_lshrrev_b32_e32 v23, 3, v8
	v_lshl_add_u32 v24, v19, 6, 0
	s_waitcnt lgkmcnt(0)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v9, 3, v0
	s_barrier
.Ltmp22:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s69, 0, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v11 :: v_dual_max_f32 v17, v18, v18
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v18, 5, v9
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp25:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[70:71], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[72:73], v[15:16]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v15, 30, v6
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v17
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v9, 9, 0
	v_and_or_b32 v21, 0x680, v12, v18
	v_xor_b32_e32 v18, v18, v10
.Ltmp28:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[70:71], v[13:14]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v0, 7, 1
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v19, 2, v17
	v_xor_b32_e32 v21, v21, v10
.Ltmp30:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v12, 0x2f0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x2010, v7
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v20, 4, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v11, v17, v22, v18
	v_add3_u32 v18, v24, v23, v21
.Ltmp32:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v17, 34, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v24.h, 0
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v11, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v18
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v17, s25, s68, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, s69, 0, s25
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[72:73], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s30, s68, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s69, 0, s30
	v_add_co_u32 v15, s30, s68, v15
	v_add_co_ci_u32_e64 v16, null, s69, 0, s30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[70:71], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[72:73], v[13:14]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 28, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[70:71], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[72:73], v[15:16]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v11, v1
	v_dual_mov_b32 v13, v2 :: v_dual_max_f32 v16, v4, v4
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v11
.Ltmp37:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[70:71], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[72:73], v[17:18]
.Ltmp38:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v16, v4 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v11, v1, v11
.Ltmp39:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s35, s68, v14
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v16, v4 :: v_dual_max_f32 v13, v2, v13
.Ltmp41:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s35
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp43:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[72:73], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v18, 24, v6
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v17, v17 :: v_dual_max_f32 v15, v15, v15
	v_dual_max_f32 v2, v13, v2 :: v_dual_max_f32 v13, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v17, v2 :: v_dual_max_f32 v4, v4, v13
	v_mov_b32_e32 v14, v11
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v13, v4 :: v_dual_max_f32 v22, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v14, v14
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v15, v3 :: v_dual_max_f32 v2, v2, v22
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 26, v6
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v11, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s37, s68, v14
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v16, v16
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s38, s68, v18
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v13, v13
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v13, 4, v9
	v_lshlrev_b32_e32 v9, 3, v20
	v_add_nc_u32_e32 v20, 0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v18 :: v_dual_max_f32 v11, v15, v15
	v_max_f32_e32 v1, v1, v21
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v21, 1, v10
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s69, 0, s37
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v11
.Ltmp65:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s69, 0, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v18, v20, v21, v9
.Ltmp67:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 22, v6
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v3
.Ltmp69:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[70:71], v[14:15]
	v_cmp_le_i64_e64 s39, s[70:71], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[72:73], v[16:17]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_lshlrev_b32_e32 v10, 5, v10
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_lshlrev_b32 v8, 3, v8
	v_max_f32_e32 v3, v3, v11
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v19
	v_add_nc_u32_e32 v19, 0, v13
	ds_store_b128 v18, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v9, v19, v11, v9
	s_barrier
.Ltmp73:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 18, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v18, s38, s68, v20
.Ltmp74:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v9
.Ltmp75:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v19, null, s69, 0, s38
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[72:73], v[14:15]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s43, s68, v9
	v_add_co_ci_u32_e64 v15, null, s69, 0, s43
	v_add_co_u32 v16, s43, s68, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s69, 0, s43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[70:71], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[72:73], v[14:15]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v14, s47, s68, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[70:71], v[16:17]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[72:73], v[16:17]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s69, 0, s47
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 12, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[70:71], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[72:73], v[18:19]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s47, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v17, null, s69, 0, s47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s47, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v19, null, s69, 0, s47
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[70:71], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[72:73], v[16:17]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[70:71], v[14:15]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v20, v1, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[72:73], v[14:15]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s53, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[70:71], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[72:73], v[18:19]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v16, v1
	v_div_scale_f32 v18, vcc_lo, v11, 0x40e00000, v11
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s69, 0, s53
	v_add_co_u32 v16, s53, s68, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s69, 0, s53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v9, v18, v1
	v_rcp_f32_e32 v21, v19
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[70:71], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[72:73], v[14:15]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[70:71], v[16:17]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v14, -v20, v9, v18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[72:73], v[16:17]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v16, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 6, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v9, v14, v1
	v_fma_f32 v2, -v19, v21, 1.0
	v_max_f32_e32 v14, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v20, v9, v18
	v_fmac_f32_e32 v21, v2, v21
	v_div_scale_f32 v18, s59, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v20, v4
	v_div_fmas_f32 v9, v17, v1, v9
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v17, v18, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s57, s68, v15
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v11, -v19, v17, v18
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v15, -v4, v20, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s57
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v17, v11, v21
	v_fmac_f32_e32 v20, v15, v20
	v_div_scale_f32 v15, s60, v16, 0x40e00000, v16
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e32 v11.h, v24.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[70:71], v[1:2]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v25, v15, v20
	v_fma_f32 v26, -v22, v23, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[72:73], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v11
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v1, -v19, v17, v18
	v_fma_f32 v11, -v4, v25, v15
	v_fmac_f32_e32 v23, v26, v23
	v_div_scale_f32 v18, s61, v14, 0x40e00000, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v21, v17
	v_fmac_f32_e32 v25, v11, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v11, v18, v23
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v6
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v32, 0xffff0000, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v4, v25, v15
	v_fma_f32 v4, -v22, v11, v18
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v17, null, v32, v32, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v15, v3, v20, v25
	v_fmac_f32_e32 v11, v4, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s68, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v19, v17
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v2, -v22, v11, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v18, null, v32, v32, v133
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v24.l, v1.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v15, v15, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v2, v2, v23, v11
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v21, v18
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v20.h, v24.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v16, -v17, v19, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v24
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v15.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v23, null, v32, v32, v132
	v_fmac_f32_e32 v19, v16, v19
	v_div_scale_f32 v16, vcc_lo, v134, v32, v134
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v11, 0x7fff
	v_mov_b16_e32 v24.l, v2.h
	v_and_b32_e32 v11, 1, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v20, v16, v19
	v_fma_f32 v22, -v18, v21, 1.0
	v_div_scale_f32 v25, null, v32, v32, v131
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v11, v15, v11, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v15, -v17, v20, v16
	v_fmac_f32_e32 v21, v22, v21
	v_rcp_f32_e32 v22, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v26, s59, v133, v32, v133
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v24, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v20, v15, v19
	v_rcp_f32_e32 v24, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v27, v26, v21
	v_div_scale_f32 v31, null, v32, v32, v130
	v_fma_f32 v29, -v23, v22, 1.0
	v_fma_f32 v16, -v17, v20, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v18, v27, v26
	v_div_scale_f32 v33, null, v32, v32, v129
	v_fmac_f32_e32 v22, v29, v22
	v_div_scale_f32 v29, s60, v132, v32, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v25, v24, 1.0
	v_div_fmas_f32 v16, v16, v19, v20
	v_rcp_f32_e32 v20, v31
	v_fmac_f32_e32 v27, v17, v21
	v_dual_mul_f32 v19, v29, v22 :: v_dual_fmac_f32 v24, v30, v24
	v_div_scale_f32 v30, s61, v131, v32, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v18, v27, v26
	v_fma_f32 v18, -v23, v19, v29
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v26, v30, v24
	v_fma_f32 v35, -v31, v20, 1.0
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v19, v18, v22
	v_div_fmas_f32 v17, v17, v21, v27
	v_fma_f32 v18, -v25, v26, v30
	v_fmac_f32_e32 v20, v35, v20
	v_div_scale_f32 v21, s59, v130, v32, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v33, v34, 1.0
	v_fma_f32 v23, -v23, v19, v29
	v_fmac_f32_e32 v26, v18, v24
	v_mul_f32_e32 v29, v21, v20
	v_div_scale_f32 v35, null, v32, v32, v128
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v34, v27, v34
	v_div_scale_f32 v27, s62, v129, v32, v129
	v_div_fmas_f32 v18, v23, v22, v19
	v_fma_f32 v19, -v25, v26, v30
	v_fma_f32 v22, -v31, v29, v21
	v_rcp_f32_e32 v23, v35
	v_div_scale_f32 v30, null, v32, v32, v127
	v_mul_f32_e32 v25, v27, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v22, v20
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v22, v30
	v_div_fmas_f32 v19, v19, v24, v26
	v_fma_f32 v24, -v33, v25, v27
	v_fma_f32 v21, -v31, v29, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v35, v23, 1.0
	v_div_scale_f32 v31, null, v32, v32, v126
	v_fmac_f32_e32 v25, v24, v34
	v_div_scale_f32 v24, s60, v128, v32, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v23, v26, v23
	v_fma_f32 v26, -v30, v22, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v38, null, v32, v32, v124
	v_div_fmas_f32 v20, v21, v20, v29
	v_fma_f32 v21, -v33, v25, v27
	v_dual_mul_f32 v27, v24, v23 :: v_dual_fmac_f32 v22, v26, v22
	v_rcp_f32_e32 v26, v31
	v_div_scale_f32 v33, null, v32, v32, v125
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v29, s59, v127, v32, v127
	v_div_fmas_f32 v21, v21, v34, v25
	v_fma_f32 v25, -v35, v27, v24
	v_rcp_f32_e32 v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v34, v29, v22
	v_fma_f32 v36, -v31, v26, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v27, v25, v23
	v_div_scale_f32 v40, null, v32, v32, v123
	v_fma_f32 v25, -v30, v34, v29
	v_fmac_f32_e32 v26, v36, v26
	v_div_scale_f32 v36, s61, v126, v32, v126
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v33, v37, 1.0
	v_fma_f32 v24, -v35, v27, v24
	v_rcp_f32_e32 v35, v38
	v_fmac_f32_e32 v34, v25, v22
	v_mul_f32_e32 v25, v36, v26
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s62, v125, v32, v125
	v_div_fmas_f32 v23, v24, v23, v27
	v_fma_f32 v24, -v30, v34, v29
	v_fma_f32 v27, -v31, v25, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v29, v39, v37
	v_fma_f32 v30, -v38, v35, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v42, null, v32, v32, v120
	v_div_fmas_f32 v24, v24, v22, v34
	v_fmac_f32_e32 v25, v27, v26
	v_rcp_f32_e32 v27, v40
	v_fma_f32 v34, -v33, v29, v39
	v_fmac_f32_e32 v35, v30, v35
	v_div_scale_f32 v30, s59, v124, v32, v124
	v_div_fixup_f32 v22, v23, v32, v128
	v_div_fixup_f32 v23, v24, v32, v127
	v_fma_f32 v24, -v31, v25, v36
	v_fmac_f32_e32 v29, v34, v37
	v_mul_f32_e32 v31, v30, v35
	v_div_scale_f32 v36, null, v32, v32, v122
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v34, -v40, v27, 1.0
	v_div_fmas_f32 v24, v24, v26, v25
	v_fma_f32 v25, -v33, v29, v39
	v_fma_f32 v26, -v38, v31, v30
	v_rcp_f32_e32 v33, v36
	v_div_scale_f32 v39, null, v32, v32, v121
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s60, v123, v32, v123
	v_div_fmas_f32 v25, v25, v37, v29
	v_fmac_f32_e32 v31, v26, v35
	v_rcp_f32_e32 v29, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v37, v34, v27
	v_fma_f32 v26, -v36, v33, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v30, -v38, v31, v30
	v_div_scale_f32 v41, s61, v122, v32, v122
	v_fma_f32 v38, -v40, v37, v34
	v_fmac_f32_e32 v33, v26, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v30, v30, v35, v31
	v_fma_f32 v26, -v39, v29, 1.0
	v_rcp_f32_e32 v35, v42
	v_fmac_f32_e32 v37, v38, v27
	v_mul_f32_e32 v31, v41, v33
	v_div_scale_f32 v38, s59, v121, v32, v121
	v_fmac_f32_e32 v29, v26, v29
	v_div_scale_f32 v43, null, v32, v32, v119
	v_div_fixup_f32 v26, v30, v32, v124
	v_fma_f32 v30, -v40, v37, v34
	v_fma_f32 v34, -v36, v31, v41
	v_mul_f32_e32 v40, v38, v29
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v45, -v42, v35, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v47, 0xffff0000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v27, v30, v27, v37
	v_fmac_f32_e32 v31, v34, v33
	v_fma_f32 v30, -v39, v40, v38
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v34, s60, v120, v32, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v43, v44, 1.0
	v_fma_f32 v36, -v36, v31, v41
	v_fmac_f32_e32 v40, v30, v29
	v_mul_f32_e32 v41, v34, v35
	v_div_scale_f32 v45, null, v47, v47, v118
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v44, v37, v44
	v_div_scale_f32 v37, s62, v119, v32, v119
	v_div_fmas_f32 v30, v36, v33, v31
	v_fma_f32 v31, -v39, v40, v38
	v_fma_f32 v33, -v42, v41, v34
	v_rcp_f32_e32 v36, v45
	v_div_scale_f32 v39, null, v47, v47, v117
	v_mul_f32_e32 v38, v37, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v33, v35
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v33, v39
	v_div_fmas_f32 v31, v31, v29, v40
	v_fma_f32 v40, -v43, v38, v37
	v_div_fixup_f32 v29, v30, v32, v122
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v45, v36, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v30, v31, v32, v121
	v_fma_f32 v31, -v42, v41, v34
	v_fmac_f32_e32 v38, v40, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v34, s59, v118, v47, v118
	v_fma_f32 v40, -v39, v33, 1.0
	v_div_scale_f32 v42, null, v47, v47, v116
	v_div_fmas_f32 v31, v31, v35, v41
	v_fma_f32 v35, -v43, v38, v37
	v_mul_f32_e32 v37, v34, v36
	v_fmac_f32_e32 v33, v40, v33
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v41, s60, v117, v47, v117
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v16, v16, v32, v134
	v_div_fmas_f32 v35, v35, v44, v38
	v_fma_f32 v38, -v45, v37, v34
	v_mul_f32_e32 v44, v41, v33
	v_div_fixup_f32 v17, v17, v32, v133
	v_div_fixup_f32 v18, v18, v32, v132
	v_div_fixup_f32 v19, v19, v32, v131
	v_div_fixup_f32 v20, v20, v32, v130
	v_div_fixup_f32 v21, v21, v32, v129
	v_div_fixup_f32 v24, v24, v32, v126
	v_div_fixup_f32 v25, v25, v32, v125
	v_div_fixup_f32 v27, v27, v32, v123
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v31, v31, v32, v120
	v_div_fixup_f32 v32, v35, v32, v119
	v_fmac_f32_e32 v37, v38, v36
	v_fma_f32 v35, -v39, v44, v41
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, s61, v116, v47, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v45, v37, v34
	v_fmac_f32_e32 v44, v35, v33
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v35, v38, v40
	v_div_scale_f32 v50, null, v47, v47, v109
	v_div_fmas_f32 v34, v34, v36, v37
	v_fma_f32 v36, -v39, v44, v41
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v37, -v42, v35, v38
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v28, 0xffff0000, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v33, v44
	v_rcp_f32_e32 v44, v50
	v_fmac_f32_e32 v35, v37, v40
	v_div_fixup_f32 v33, v34, v47, v118
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v34, v36, v47, v117
	v_div_scale_f32 v61, null, v28, v28, v66
	v_fma_f32 v36, -v42, v35, v38
	v_div_scale_f32 v62, null, v28, v28, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v50, v44, 1.0
	v_div_scale_f32 v67, null, v28, v28, v72
	v_div_fmas_f32 v35, v36, v40, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v43, null, v47, v47, v115
	v_div_scale_f32 v46, null, v47, v47, v114
	v_div_scale_f32 v42, null, v47, v47, v108
	v_rcp_f32_e32 v48, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v45, v46
	v_div_scale_f32 v38, s60, v109, v47, v109
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v15, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v52, null, v47, v47, v106
	v_div_scale_f32 v58, null, v47, v47, v95
	v_div_scale_f32 v60, null, v47, v47, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v49, -v43, v48, 1.0
	v_fma_f32 v41, -v46, v45, 1.0
	v_div_fixup_f32 v35, v35, v47, v116
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s62, v115, v47, v115
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v41, s59, v114, v47, v114
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v49, v48
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v37, -v43, v39, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v37, v48
	v_mul_f32_e32 v37, v41, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v43, v39, v49
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v49, null, v47, v47, v107
	v_fma_f32 v40, -v46, v37, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v48, v39
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v39, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v37, v40, v45 :: v_dual_mul_f32 v40, v38, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v42, v43, 1.0
	v_div_fixup_f32 v36, v36, v47, v115
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v46, v37, v41
	v_fma_f32 v46, -v50, v40, v38
	v_fmac_f32_e32 v43, v48, v43
	v_div_scale_f32 v48, s61, v108, v47, v108
	v_fma_f32 v51, -v49, v39, 1.0
	v_div_fmas_f32 v37, v41, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v46, v44 :: v_dual_mul_f32 v41, v48, v43
	v_rcp_f32_e32 v45, v52
	v_fmac_f32_e32 v39, v51, v39
	v_div_scale_f32 v51, null, v47, v47, v105
	v_div_scale_f32 v46, s59, v107, v47, v107
	v_fma_f32 v38, -v50, v40, v38
	v_fma_f32 v50, -v42, v41, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v51
	v_mul_f32_e32 v53, v46, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v55, -v52, v45, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v41, v50, v43
	v_div_fmas_f32 v38, v38, v44, v40
	v_fma_f32 v40, -v49, v53, v46
	v_fmac_f32_e32 v45, v55, v45
	v_div_scale_f32 v44, s60, v106, v47, v106
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v51, v54, 1.0
	v_fma_f32 v42, -v42, v41, v48
	v_div_scale_f32 v55, null, v47, v47, v104
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v53, v40, v39
	v_mul_f32_e32 v48, v44, v45
	v_fmac_f32_e32 v54, v50, v54
	v_div_scale_f32 v50, s62, v105, v47, v105
	v_div_fmas_f32 v40, v42, v43, v41
	v_rcp_f32_e32 v43, v55
	v_fma_f32 v41, -v49, v53, v46
	v_fma_f32 v42, -v52, v48, v44
	v_mul_f32_e32 v46, v50, v54
	v_div_scale_f32 v49, null, v47, v47, v103
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v48, v42, v45
	v_div_fmas_f32 v41, v41, v39, v53
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v42, -v51, v46, v50
	v_fma_f32 v56, -v55, v43, 1.0
	v_div_fixup_f32 v39, v40, v47, v108
	v_div_fixup_f32 v40, v41, v47, v107
	v_fma_f32 v41, -v52, v48, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v46, v42, v54 :: v_dual_fmac_f32 v43, v56, v43
	v_div_scale_f32 v44, s59, v104, v47, v104
	v_div_scale_f32 v52, null, v47, v47, v102
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v42, -v49, v53, 1.0
	v_div_fmas_f32 v41, v41, v45, v48
	v_fma_f32 v45, -v51, v46, v50
	v_mul_f32_e32 v48, v44, v43
	v_rcp_f32_e32 v50, v52
	v_div_scale_f32 v56, null, v47, v47, v101
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v53, v42, v53
	v_div_scale_f32 v51, s60, v103, v47, v103
	v_div_fmas_f32 v42, v45, v54, v46
	v_fma_f32 v45, -v55, v48, v44
	v_rcp_f32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v46, v51, v53
	v_fma_f32 v54, -v52, v50, 1.0
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v48, v45, v43
	v_div_fixup_f32 v37, v37, v47, v114
	v_fma_f32 v45, -v49, v46, v51
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s61, v102, v47, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v56, v57, 1.0
	v_fma_f32 v44, -v55, v48, v44
	v_rcp_f32_e32 v55, v58
	v_dual_fmac_f32 v46, v45, v53 :: v_dual_mul_f32 v45, v54, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v59, v57
	v_div_scale_f32 v59, s62, v101, v47, v101
	v_div_fmas_f32 v43, v44, v43, v48
	v_fma_f32 v44, -v49, v46, v51
	v_fma_f32 v48, -v52, v45, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v59, v57
	v_fma_f32 v51, -v58, v55, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v38, v38, v47, v109
	v_div_fmas_f32 v44, v44, v53, v46
	v_fmac_f32_e32 v45, v48, v50
	v_rcp_f32_e32 v53, v60
	v_fma_f32 v46, -v56, v49, v59
	v_fmac_f32_e32 v55, v51, v55
	v_div_scale_f32 v48, s59, v95, v47, v95
	v_fma_f32 v51, -v52, v45, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v46, v57
	v_div_scale_f32 v54, null, v28, v28, v80
	v_mul_f32_e32 v52, v48, v55
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v60, v53, 1.0
	v_div_fmas_f32 v45, v51, v50, v45
	v_fma_f32 v50, -v56, v49, v59
	v_fma_f32 v51, -v58, v52, v48
	v_rcp_f32_e32 v56, v54
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v53, v46, v53
	v_div_scale_f32 v59, s60, v94, v47, v94
	v_div_fmas_f32 v46, v50, v57, v49
	v_fmac_f32_e32 v52, v51, v55
	v_rcp_f32_e32 v49, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v50, v59, v53
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v51, -v54, v56, 1.0
	v_fma_f32 v48, -v58, v52, v48
	v_div_fixup_f32 v41, v41, v47, v106
	v_fma_f32 v57, -v60, v50, v59
	v_div_fixup_f32 v42, v42, v47, v105
	v_fmac_f32_e32 v56, v51, v56
	v_div_scale_f32 v51, s61, v80, v28, v80
	v_fma_f32 v58, -v61, v49, 1.0
	v_div_fmas_f32 v48, v48, v55, v52
	v_rcp_f32_e32 v55, v62
	v_fmac_f32_e32 v50, v57, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v52, v51, v56 :: v_dual_fmac_f32 v49, v58, v49
	v_div_scale_f32 v57, s59, v66, v28, v66
	v_div_scale_f32 v58, null, v28, v28, v68
	v_fma_f32 v59, -v60, v50, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v54, v52, v51
	v_mul_f32_e32 v63, v57, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v64, v58
	v_fma_f32 v65, -v62, v55, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v52, v60, v56
	v_div_fmas_f32 v50, v59, v53, v50
	v_fma_f32 v53, -v61, v63, v57
	v_fmac_f32_e32 v55, v65, v55
	v_div_scale_f32 v59, s60, v69, v28, v69
	v_div_fixup_f32 v43, v43, v47, v104
	v_div_fixup_f32 v44, v44, v47, v103
	v_div_fixup_f32 v45, v45, v47, v102
	v_div_fixup_f32 v46, v46, v47, v101
	v_div_fixup_f32 v48, v48, v47, v95
	v_fma_f32 v60, -v58, v64, 1.0
	v_div_fixup_f32 v47, v50, v47, v94
	v_fma_f32 v50, -v54, v52, v51
	v_fmac_f32_e32 v63, v53, v49
	v_mul_f32_e32 v51, v59, v55
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v64, v60, v64
	v_div_scale_f32 v53, s62, v68, v28, v68
	v_div_scale_f32 v54, null, v28, v28, v74
	v_div_fmas_f32 v50, v50, v56, v52
	v_fma_f32 v52, -v61, v63, v57
	v_fma_f32 v56, -v62, v51, v59
	v_div_scale_f32 v61, null, v28, v28, v70
	v_rcp_f32_e32 v57, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v60, v53, v64 :: v_dual_fmac_f32 v51, v56, v55
	v_rcp_f32_e32 v56, v61
	s_mov_b32 vcc_lo, s59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v52, v52, v49, v63
	v_fma_f32 v63, -v58, v60, v53
	v_div_fixup_f32 v49, v50, v28, v80
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v65, -v54, v57, 1.0
	v_div_fixup_f32 v50, v52, v28, v66
	v_fma_f32 v52, -v62, v51, v59
	v_fmac_f32_e32 v60, v63, v64
	v_fma_f32 v62, -v61, v56, 1.0
	v_div_scale_f32 v63, null, v28, v28, v73
	v_fmac_f32_e32 v57, v65, v57
	v_div_scale_f32 v59, s59, v74, v28, v74
	v_div_fmas_f32 v51, v52, v55, v51
	v_fmac_f32_e32 v56, v62, v56
	v_rcp_f32_e32 v55, v63
	v_div_scale_f32 v62, null, v28, v28, v71
	v_fma_f32 v52, -v58, v60, v53
	v_mul_f32_e32 v53, v59, v57
	v_div_scale_f32 v58, s60, v70, v28, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v66, v62
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v51, v51, v28, v69
	v_div_fmas_f32 v52, v52, v64, v60
	v_fma_f32 v60, -v54, v53, v59
	v_mul_f32_e32 v64, v58, v56
	v_fma_f32 v65, -v63, v55, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v52, v52, v28, v68
	v_fmac_f32_e32 v53, v60, v57
	v_fma_f32 v60, -v61, v64, v58
	v_fmac_f32_e32 v55, v65, v55
	v_div_scale_f32 v65, s61, v73, v28, v73
	v_fma_f32 v68, -v62, v66, 1.0
	v_fma_f32 v54, -v54, v53, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v64, v60, v56 :: v_dual_mul_f32 v59, v65, v55
	v_rcp_f32_e32 v60, v67
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, s62, v71, v28, v71
	v_div_fmas_f32 v53, v54, v57, v53
	v_fma_f32 v54, -v61, v64, v58
	v_fma_f32 v57, -v63, v59, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v58, v68, v66
	v_div_scale_f32 v69, null, v28, v28, v79
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v61, -v67, v60, 1.0
	v_div_fmas_f32 v54, v54, v56, v64
	v_fmac_f32_e32 v59, v57, v55
	v_rcp_f32_e32 v57, v69
	v_fma_f32 v56, -v62, v58, v68
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, s59, v72, v28, v72
	v_fma_f32 v63, -v63, v59, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v58, v56, v66
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v54, v54, v28, v70
	v_mul_f32_e32 v64, v61, v60
	v_fma_f32 v56, -v69, v57, 1.0
	v_div_scale_f32 v65, null, v28, v28, v78
	v_div_fmas_f32 v55, v63, v55, v59
	v_fma_f32 v59, -v62, v58, v68
	v_div_scale_f32 v70, null, v28, v28, v77
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v62, -v67, v64, v61
	v_fmac_f32_e32 v57, v56, v57
	v_rcp_f32_e32 v63, v65
	v_div_fmas_f32 v56, v59, v66, v58
	v_rcp_f32_e32 v58, v70
	v_div_scale_f32 v68, s60, v79, v28, v79
	v_fmac_f32_e32 v64, v62, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v56, v56, v28, v71
	v_div_scale_f32 v71, null, v28, v28, v76
	v_mul_f32_e32 v59, v68, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v62, -v65, v63, 1.0
	v_fma_f32 v61, -v67, v64, v61
	v_fma_f32 v67, -v70, v58, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v66, -v69, v59, v68
	v_fmac_f32_e32 v63, v62, v63
	v_div_scale_f32 v62, s61, v78, v28, v78
	v_fmac_f32_e32 v58, v67, v58
	v_div_scale_f32 v67, null, v28, v28, v75
	v_div_fixup_f32 v55, v55, v28, v73
	v_div_fmas_f32 v60, v61, v60, v64
	v_fmac_f32_e32 v59, v66, v57
	v_mul_f32_e32 v61, v62, v63
	v_rcp_f32_e32 v64, v71
	v_div_scale_f32 v66, s59, v77, v28, v77
	v_rcp_f32_e32 v73, v67
	v_div_fixup_f32 v60, v60, v28, v72
	v_fma_f32 v68, -v69, v59, v68
	v_fma_f32 v69, -v65, v61, v62
	v_mul_f32_e32 v72, v66, v58
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v53, v53, v28, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v74, -v71, v64, 1.0
	v_div_fmas_f32 v57, v68, v57, v59
	v_fmac_f32_e32 v61, v69, v63
	v_fma_f32 v59, -v70, v72, v66
	v_fma_f32 v69, -v67, v73, 1.0
	v_fmac_f32_e32 v64, v74, v64
	v_div_scale_f32 v68, s60, v76, v28, v76
	v_fma_f32 v62, -v65, v61, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v72, v59, v58 :: v_dual_fmac_f32 v73, v69, v73
	v_div_scale_f32 v69, null, v28, v28, v87
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v59, v68, v64
	v_div_scale_f32 v65, s62, v75, v28, v75
	v_div_fmas_f32 v61, v62, v63, v61
	v_fma_f32 v62, -v70, v72, v66
	v_rcp_f32_e32 v66, v69
	v_fma_f32 v63, -v71, v59, v68
	v_mul_f32_e32 v70, v65, v73
	v_div_scale_f32 v74, null, v28, v28, v86
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v59, v63, v64
	v_div_fmas_f32 v58, v62, v58, v72
	v_rcp_f32_e32 v62, v74
	v_fma_f32 v63, -v67, v70, v65
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v72, -v69, v66, 1.0
	v_fma_f32 v68, -v71, v59, v68
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v58, v58, v28, v77
	v_fmac_f32_e32 v70, v63, v73
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v63, s59, v87, v28, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v74, v62, 1.0
	v_div_fmas_f32 v59, v68, v64, v59
	v_fma_f32 v64, -v67, v70, v65
	v_mul_f32_e32 v65, v63, v66
	v_div_scale_f32 v67, null, v15, v15, v85
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v62, v71, v62
	v_div_fmas_f32 v64, v64, v73, v70
	v_rcp_f32_e32 v70, v67
	v_fma_f32 v71, -v69, v65, v63
	v_div_scale_f32 v68, s60, v86, v28, v86
	v_div_scale_f32 v73, null, v15, v15, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v71, v66
	v_mul_f32_e32 v72, v68, v62
	v_div_fixup_f32 v59, v59, v28, v76
	v_div_fixup_f32 v64, v64, v28, v75
	v_rcp_f32_e32 v75, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v67, v70, 1.0
	v_fma_f32 v63, -v69, v65, v63
	v_div_scale_f32 v69, null, v15, v15, v83
	v_fma_f32 v71, -v74, v72, v68
	v_fmac_f32_e32 v70, v76, v70
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v76, v69
	v_div_fmas_f32 v63, v63, v66, v65
	v_fmac_f32_e32 v72, v71, v62
	v_div_scale_f32 v71, s61, v85, v15, v85
	v_fma_f32 v77, -v73, v75, 1.0
	v_div_fixup_f32 v57, v57, v28, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v74, v72, v68
	v_mul_f32_e32 v66, v71, v70
	v_div_scale_f32 v68, s59, v84, v15, v84
	v_fmac_f32_e32 v75, v77, v75
	v_fma_f32 v74, -v69, v76, 1.0
	v_div_fixup_f32 v61, v61, v28, v78
	v_fma_f32 v77, -v67, v66, v71
	v_div_scale_f32 v78, null, v15, v15, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v68, v75 :: v_dual_fmac_f32 v76, v74, v76
	v_div_scale_f32 v74, s62, v83, v15, v83
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v80, v78
	v_div_fmas_f32 v62, v65, v62, v72
	v_fmac_f32_e32 v66, v77, v70
	v_fma_f32 v65, -v73, v79, v68
	v_mul_f32_e32 v72, v74, v76
	v_div_fixup_f32 v63, v63, v28, v87
	v_div_fixup_f32 v28, v62, v28, v86
	v_fma_f32 v62, -v67, v66, v71
	v_fmac_f32_e32 v79, v65, v75
	v_fma_f32 v65, -v69, v72, v74
	v_div_scale_f32 v71, null, v15, v15, v81
	v_fma_f32 v67, -v78, v80, 1.0
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v65, v76
	v_rcp_f32_e32 v65, v71
	v_div_fmas_f32 v62, v62, v70, v66
	v_fmac_f32_e32 v80, v67, v80
	v_div_scale_f32 v67, s60, v82, v15, v82
	v_fma_f32 v66, -v73, v79, v68
	v_fma_f32 v68, -v69, v72, v74
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v69, v67, v80
	v_div_scale_f32 v70, null, v15, v15, v88
	v_fma_f32 v73, -v71, v65, 1.0
	v_div_fmas_f32 v66, v66, v75, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v74, -v78, v69, v67
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v62, v62, v15, v85
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, s59, v81, v15, v81
	v_fmac_f32_e32 v69, v74, v80
	v_div_fmas_f32 v68, v68, v76, v72
	v_rcp_f32_e32 v72, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v74, v73, v65
	v_div_scale_f32 v76, null, v15, v15, v93
	v_fma_f32 v67, -v78, v69, v67
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v77, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v78, v76
	v_div_fixup_f32 v68, v68, v15, v83
	v_div_fmas_f32 v67, v67, v80, v69
	v_fma_f32 v75, -v70, v72, 1.0
	v_fmac_f32_e32 v74, v77, v65
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v77, null, v15, v15, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	v_div_scale_f32 v75, s61, v88, v15, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v77
	v_fma_f32 v79, -v76, v78, 1.0
	v_div_fmas_f32 v65, v71, v65, v74
	v_div_scale_f32 v71, null, v15, v15, v91
	v_mul_f32_e32 v69, v75, v72
	v_div_fixup_f32 v67, v67, v15, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v65, v65, v15, v81
	v_rcp_f32_e32 v74, v71
	v_div_scale_f32 v81, null, v15, v15, v90
	v_fma_f32 v73, -v70, v69, v75
	v_fmac_f32_e32 v78, v79, v78
	v_fma_f32 v79, -v77, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v69, v73, v72
	v_div_scale_f32 v73, s59, v93, v15, v93
	v_fma_f32 v82, -v71, v74, 1.0
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v70, v69, v75
	v_mul_f32_e32 v75, v73, v78
	v_div_scale_f32 v79, s60, v92, v15, v92
	v_fmac_f32_e32 v74, v82, v74
	v_div_scale_f32 v82, null, v15, v15, v89
	v_div_fixup_f32 v66, v66, v15, v84
	v_div_fmas_f32 v69, v70, v72, v69
	v_fma_f32 v70, -v76, v75, v73
	v_mul_f32_e32 v72, v79, v80
	v_div_scale_f32 v84, s61, v91, v15, v91
	v_fma_f32 v85, -v81, v83, 1.0
	v_rcp_f32_e32 v86, v82
	v_fmac_f32_e32 v75, v70, v78
	v_fma_f32 v70, -v77, v72, v79
	v_mul_f32_e32 v87, v84, v74
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, s62, v90, v15, v90
	v_div_fixup_f32 v69, v69, v15, v88
	v_fma_f32 v73, -v76, v75, v73
	v_fmac_f32_e32 v72, v70, v80
	v_fma_f32 v70, -v71, v87, v84
	v_mul_f32_e32 v76, v85, v83
	v_fma_f32 v88, -v82, v86, 1.0
	s_mov_b32 vcc_lo, s59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v78, v75
	v_fma_f32 v75, -v77, v72, v79
	v_fmac_f32_e32 v87, v70, v74
	v_fma_f32 v70, -v81, v76, v85
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v77, s59, v89, v15, v89
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v76, v70, v83
	v_div_fmas_f32 v72, v75, v80, v72
	v_mul_f32_e32 v70, v77, v86
	v_div_scale_f32 v75, null, v15, v15, v100
	v_fma_f32 v71, -v71, v87, v84
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v82, v70, v77
	v_rcp_f32_e32 v79, v75
	v_div_fixup_f32 v73, v73, v15, v93
	v_div_fmas_f32 v71, v71, v74, v87
	v_fma_f32 v74, -v81, v76, v85
	v_fmac_f32_e32 v70, v78, v86
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v71, v71, v15, v91
	v_div_fmas_f32 v74, v74, v83, v76
	v_fma_f32 v76, -v82, v70, v77
	v_fma_f32 v78, -v75, v79, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v77, null, v15, v15, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v76, v86, v70
	v_fmac_f32_e32 v79, v78, v79
	v_div_scale_f32 v81, vcc_lo, v100, v15, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v77
	v_div_fixup_f32 v70, v70, v15, v89
	v_div_scale_f32 v78, null, v15, v15, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v81, v79
	v_div_scale_f32 v80, null, v15, v15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v89, -v75, v85, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v77, v76, 1.0
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v74, v74, v15, v90
	v_div_scale_f32 v86, null, v15, v15, v97
	v_dual_fmac_f32 v85, v89, v79 :: v_dual_fmac_f32 v76, v83, v76
	v_div_scale_f32 v83, s59, v96, v15, v96
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v78, v82, 1.0
	v_fma_f32 v75, -v75, v85, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v80, v84, 1.0
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v72, v72, v15, v92
	v_fmac_f32_e32 v82, v87, v82
	v_div_fmas_f32 v75, v75, v79, v85
	s_mov_b32 vcc_lo, s59
	s_mov_b32 s59, 0xc1000000
	v_div_scale_f32 v87, s60, v99, v15, v99
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_med3_f32 v70, v70, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s61, v98, v15, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v103, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v83, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v90, v84
	v_div_fixup_f32 v75, v75, v15, v100
	v_fma_f32 v92, -v86, v88, 1.0
	v_fma_f32 v89, -v77, v91, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_med3_f32 v62, v62, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_fmac_f32_e32 v91, v89, v76
	v_fma_f32 v89, -v80, v94, v90
	v_div_scale_f32 v92, s62, v97, v15, v97
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v75, v75, s59, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v77, v91, v83
	v_fmac_f32_e32 v94, v89, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v77, v76, v91
	s_mov_b32 vcc_lo, s60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v106, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v76, v76, v15, v96
	v_mul_f32_e32 v95, v92, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s59, 0x40e00000
	v_med3_f32 v37, v37, s59, 0x40e00000
	v_med3_f32 v54, v54, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v54, v54
	v_med3_f32 v76, v76, s59, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_and_b32_e32 v75, 15, v32
	v_and_b32_e32 v32, 15, v37
	v_and_b32_e32 v37, 15, v54
	v_cvt_i32_f32_e32 v107, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v87, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v81, -v78, v93, v87
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v19, v19, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v81, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v78, v93, v87
	v_fma_f32 v78, -v80, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v23
	v_and_b32_e32 v23, 15, v18
	v_and_b32_e32 v18, 15, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v82, v93
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v106
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v84, v94
	v_fma_f32 v79, -v86, v95, v92
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v77, v77, v15, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v78, v78, v15, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s59, 0x40e00000
	v_med3_f32 v46, v46, s59, 0x40e00000
	v_med3_f32 v50, v50, s59, 0x40e00000
	v_med3_f32 v16, v16, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s59, 0x40e00000
	v_med3_f32 v35, v35, s59, 0x40e00000
	v_med3_f32 v52, v52, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	v_med3_f32 v78, v78, s59, 0x40e00000
	v_med3_f32 v57, v57, s59, 0x40e00000
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	v_med3_f32 v68, v68, s59, 0x40e00000
	v_cvt_i32_f32_e32 v78, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v79, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v81, v27
	v_cvt_i32_f32_e32 v42, v42
	v_and_b32_e32 v74, 15, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v86, v95, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v88, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v79, v15, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v19
	v_cvt_i32_f32_e32 v83, v35
	v_cvt_i32_f32_e32 v91, v52
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v79, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v61, v61
	v_med3_f32 v15, v15, s59, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v99, v68
	v_and_b32_e32 v35, 15, v21
	v_and_b32_e32 v52, 15, v42
	v_and_b32_e32 v68, 15, v46
	v_and_b32_e32 v21, 15, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v42, 13, v0
	v_lshlrev_b32_e32 v46, 8, v79
	v_and_b32_e32 v50, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_med3_f32 v24, v24, s59, 0x40e00000
	v_med3_f32 v41, v41, s59, 0x40e00000
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_med3_f32 v71, v71, s59, 0x40e00000
	v_cvt_i32_f32_e32 v109, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v33
	v_and_b32_e32 v33, 15, v53
	v_and_b32_e32 v53, 15, v57
	v_and_b32_e32 v57, 15, v61
	v_and_b32_e32 v61, 15, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v58, 0xe000, v42, v46
	v_xor_b32_e32 v12, v12, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_med3_f32 v22, v22, s59, 0x40e00000
	v_med3_f32 v29, v29, s59, 0x40e00000
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_med3_f32 v45, v45, s59, 0x40e00000
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_med3_f32 v66, v66, s59, 0x40e00000
	v_med3_f32 v65, v65, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_med3_f32 v47, v47, s59, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v94, v60
	v_cvt_i32_f32_e32 v105, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v58, v8, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s59, 0x40e00000
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v64, v64, s59, 0x40e00000
	v_med3_f32 v63, v63, s59, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v95, v59
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v101, v65
	v_cvt_i32_f32_e32 v88, v48
	v_cvt_i32_f32_e32 v89, v47
	v_and_b32_e32 v19, 15, v17
	v_and_b32_e32 v47, 15, v24
	v_and_b32_e32 v48, 15, v41
	v_and_b32_e32 v17, 15, v49
	v_and_b32_e32 v49, 15, v94
	v_and_b32_e32 v50, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v12, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v31
	v_cvt_i32_f32_e32 v84, v39
	v_cvt_i32_f32_e32 v96, v64
	v_cvt_i32_f32_e32 v97, v63
	v_and_b32_e32 v31, 15, v20
	v_and_b32_e32 v39, 15, v22
	v_and_b32_e32 v63, 15, v29
	v_and_b32_e32 v20, 15, v34
	v_and_b32_e32 v64, 15, v45
	v_and_b32_e32 v65, 15, v95
	v_and_b32_e32 v22, 15, v66
	v_and_b32_e32 v34, 15, v101
	v_and_b32_e32 v66, 15, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v51, v51
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v12, v[15:18]
	ds_store_b128 v12, v[31:34] offset:256
	ds_store_b128 v12, v[47:50] offset:2048
	ds_store_b128 v12, v[63:66] offset:2304
	v_lshlrev_b32_e32 v12, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s59, 0x40e00000
	v_med3_f32 v26, v26, s59, 0x40e00000
	v_med3_f32 v43, v43, s59, 0x40e00000
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_med3_f32 v51, v51, s59, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 2, v79
	v_and_or_b32 v10, 0x300, v12, v10
	v_xor_b32_e32 v7, v7, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s59, 0x40e00000
	v_med3_f32 v36, v36, s59, 0x40e00000
	v_med3_f32 v38, v38, s59, 0x40e00000
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_med3_f32 v28, v28, s59, 0x40e00000
	v_med3_f32 v69, v69, s59, 0x40e00000
	v_med3_f32 v77, v77, s59, 0x40e00000
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_med3_f32 v40, v40, s59, 0x40e00000
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v72, v72, s59, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v86, v43
	v_cvt_i32_f32_e32 v87, v44
	v_cvt_i32_f32_e32 v90, v51
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v7, v7, v10, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v92, v55
	v_cvt_i32_f32_e32 v98, v28
	v_cvt_i32_f32_e32 v102, v69
	v_cvt_i32_f32_e32 v108, v77
	v_cvt_i32_f32_e32 v100, v67
	v_cvt_i32_f32_e32 v85, v40
	v_cvt_i32_f32_e32 v93, v56
	v_cvt_i32_f32_e32 v104, v72
	v_and_b32_e32 v51, 15, v25
	v_and_b32_e32 v55, 15, v26
	v_and_b32_e32 v59, 15, v81
	v_and_b32_e32 v24, 15, v83
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v25, 15, v90
	v_and_b32_e32 v26, 15, v99
	v_and_b32_e32 v58, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v15, v8, 16, 0
	v_xad_u32 v16, v8, 32, 0
	v_xad_u32 v8, v8, 48, 0
	v_add_nc_u32_e32 v10, 0, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v30
	v_and_b32_e32 v71, 15, v82
	v_and_b32_e32 v28, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v40, 15, v84
	v_and_b32_e32 v72, 15, v88
	v_and_b32_e32 v76, 15, v89
	v_and_b32_e32 v41, 15, v92
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v77, 15, v98
	v_and_b32_e32 v38, 15, v102
	v_and_b32_e32 v42, 15, v103
	v_and_b32_e32 v70, 15, v108
	v_and_b32_e32 v78, 15, v109
	v_and_b32_e32 v29, 15, v91
	v_and_b32_e32 v30, 15, v100
	v_and_b32_e32 v43, 15, v80
	v_and_b32_e32 v44, 15, v85
	v_and_b32_e32 v45, 15, v93
	v_and_b32_e32 v46, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v15, v[19:22]
	ds_store_b128 v15, v[35:38] offset:256
	ds_store_b128 v15, v[51:54] offset:2048
	ds_store_b128 v15, v[67:70] offset:2304
	ds_store_b128 v16, v[23:26]
	ds_store_b128 v16, v[39:42] offset:256
	ds_store_b128 v16, v[55:58] offset:2048
	ds_store_b128 v16, v[71:74] offset:2304
	ds_store_b128 v8, v[27:30]
	ds_store_b128 v8, v[43:46] offset:256
	ds_store_b128 v8, v[59:62] offset:2048
	ds_store_b128 v8, v[75:78] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v10
	ds_load_b128 v[19:22], v10 offset:128
	ds_load_b128 v[23:26], v10 offset:4096
	ds_load_b128 v[27:30], v10 offset:4224
	v_xad_u32 v10, 0x8040, v7, 0
	v_xad_u32 v8, 0x4020, v7, 0
	v_xad_u32 v7, 0xc060, v7, 0
	ds_load_b128 v[47:50], v10
	ds_load_b128 v[51:54], v10 offset:128
	ds_load_b128 v[55:58], v10 offset:4096
	ds_load_b128 v[59:62], v10 offset:4224
	ds_load_b128 v[63:66], v7 offset:4096
	ds_load_b128 v[67:70], v7
	ds_load_b128 v[71:74], v7 offset:128
	ds_load_b128 v[75:78], v7 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 2, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[31:34], v8
	ds_load_b128 v[35:38], v8 offset:128
	ds_load_b128 v[39:42], v8 offset:4096
	ds_load_b128 v[43:46], v8 offset:4224
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s59, s68, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s69, 0, s59
	v_add_co_u32 v12, s59, s68, v6
	v_add_co_ci_u32_e64 v13, null, s69, 0, s59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[3:4]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s68, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[12:13]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v4
	v_lshl_or_b32 v3, s75, 7, v3
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 6, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v10, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[7:8]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v67, v24, 4, v16
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_mad_u64_u32 v[12:13], null, v12, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 16, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v66, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 22, v4
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_add_nc_u32_e32 v23, 24, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_add_nc_u32_e32 v24, 26, v4
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_add_nc_u32_e32 v26, 30, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_add_nc_u32_e32 v27, 32, v4
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v80, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[26:27], null, v27, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[27:28], null, v28, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[28:29], null, v29, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[7:8]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_add_nc_u32_e32 v8, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 58, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v41, 60, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_add_nc_u32_e32 v70, 62, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s68, s64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v10, v6, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v70, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s60
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v80, v4, s[68:71], 0 offen
	buffer_store_b8 v47, v6, s[68:71], 0 offen
	buffer_store_b8 v55, v7, s[68:71], 0 offen
	buffer_store_b8 v63, v8, s[68:71], 0 offen
	buffer_store_b8 v43, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v4, s[68:71], 0 offen
	buffer_store_b8 v59, v6, s[68:71], 0 offen
	buffer_store_b8 v67, v7, s[68:71], 0 offen
	buffer_store_b8 v71, v8, s[68:71], 0 offen
	buffer_store_b8 v48, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v56, v4, s[68:71], 0 offen
	buffer_store_b8 v64, v6, s[68:71], 0 offen
	buffer_store_b8 v44, v7, s[68:71], 0 offen
	buffer_store_b8 v52, v8, s[68:71], 0 offen
	buffer_store_b8 v60, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v4, s[68:71], 0 offen
	buffer_store_b8 v72, v6, s[68:71], 0 offen
	buffer_store_b8 v49, v7, s[68:71], 0 offen
	buffer_store_b8 v57, v8, s[68:71], 0 offen
	buffer_store_b8 v65, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v45, v4, s[68:71], 0 offen
	buffer_store_b8 v53, v6, s[68:71], 0 offen
	buffer_store_b8 v61, v7, s[68:71], 0 offen
	buffer_store_b8 v69, v8, s[68:71], 0 offen
	buffer_store_b8 v42, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v50, v4, s[68:71], 0 offen
	buffer_store_b8 v58, v6, s[68:71], 0 offen
	buffer_store_b8 v66, v7, s[68:71], 0 offen
	buffer_store_b8 v46, v8, s[68:71], 0 offen
	buffer_store_b8 v54, v10, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v62, v3, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v4, v7, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v2, s75, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp76:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 208
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 208
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20884
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 208
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 208
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 51
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
