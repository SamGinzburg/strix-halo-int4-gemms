	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x5c
	s_load_b128 s[52:55], s[0:1], 0x30
	v_dual_mov_b32 v45, 0x7531 :: v_dual_and_b32 v42, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 3, v0
	v_mov_b32_e32 v44, 0x6420
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[60:61], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v41, 3, v42
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s39, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s39, v43
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s38, s39, s2
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v90, 0x60, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_and_b32_e32 v50, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v51, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[85:86], null, s48, v43, v[41:42]
	s_mul_i32 s9, s48, s38
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s48, v41
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s48, 5
	s_mul_i32 s10, s48, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s57, s5, 0xffff
	v_dual_mov_b32 v46, 0x5410 :: v_dual_add_nc_u32 v1, s9, v85
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v88, s48, 4, v85
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s56, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v47, 0x7632 :: v_dual_lshlrev_b32 v2, 1, v1
	v_add_lshl_u32 v3, v88, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_load_b64 s[4:5], s[0:1], 0x6c
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v10, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[56:59], 0 offen
	buffer_load_b128 v[5:8], v5, s[56:59], 0 offen
	buffer_load_b128 v[33:36], v9, s[56:59], 0 offen
	buffer_load_b128 v[37:40], v10, s[56:59], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v89, 15, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v49, 1, v0
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v29, v25
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 4
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_cmp_eq_u32_e64 s0, 0, v50
	v_cmp_eq_u32_e64 s1, 0, v51
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v92, 4, v0
	v_lshrrev_b32_e32 v91, 4, v0
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v53, 0x70, v49
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v54, 7, v89
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v55, 6, v90
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v42, 4, v42
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v93, 30, v49
	v_cndmask_b32_e64 v44, 0x7531, v44, s0
	v_cndmask_b32_e64 v46, 0x1054, v46, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v51, v92, v53
	v_or3_b32 v53, v54, v55, v42
	v_or_b32_e32 v94, v42, v54
	v_cndmask_b32_e64 v42, 0x6420, v45, s0
	v_lshl_or_b32 v44, v44, 8, v44
	v_and_or_b32 v45, v91, 1, v93
	v_cndmask_b32_e64 v47, 0x3276, v47, s1
	v_lshl_or_b32 v46, v46, 8, v46
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v48, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v97, 2, v45
	v_dual_mov_b32 v9, v25 :: v_dual_and_b32 v44, 0x750031, v44
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v45, 0x540054, v46
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v46, v47, 8, v47
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v48, s39, v48
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v50, 6, v50
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_bfe_u32 s2, s3, 0x10007
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[86:87], null, s49, v43, v[41:42]
	v_lshl_or_b32 v43, v44, 4, v44
	v_and_b32_e32 v42, 0x750031, v42
	v_lshl_or_b32 v44, v45, 4, v45
	v_and_b32_e32 v45, 0x760076, v46
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s10, s3, s2
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s49, v41
	v_mul_lo_u32 v41, s5, v48
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v52, 16, v92
	v_mov_b32_e32 v22, v25
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v96, 0, v51
	v_and_or_b32 v95, v49, 60, v50
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v49, 0, v53
	v_xad_u32 v50, v53, 16, 0
	v_xad_u32 v51, v53, 32, 0
	v_xad_u32 v54, v53, 48, 0
	v_xad_u32 v55, v53, 64, 0
	v_xad_u32 v56, 0x50, v53, 0
	v_xad_u32 v57, 0x60, v53, 0
	v_xad_u32 v61, 0x70, v53, 0
	v_xor_b32_e32 v53, 16, v94
	v_xor_b32_e32 v58, 32, v94
	v_xor_b32_e32 v59, 48, v94
	v_xor_b32_e32 v60, 64, v94
	v_xor_b32_e32 v62, 0x50, v94
	v_xor_b32_e32 v63, 0x60, v94
	v_xor_b32_e32 v64, 0x70, v94
	v_lshl_or_b32 v42, v42, 4, v42
	v_lshl_or_b32 v45, v45, 4, v45
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s9, s8, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s51, s8
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v98, 0, v53
	s_add_i32 s4, s4, s8
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v99, 0, v58
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v100, 0, v59
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v101, 0, v60
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v48
	v_add_nc_u32_e32 v102, 0, v62
	v_add_nc_u32_e32 v103, 0, v63
	v_add_nc_u32_e32 v104, 0, v64
	v_and_b32_e32 v105, 0x7050301, v43
	v_and_b32_e32 v106, 0x5040504, v44
	v_add3_u32 v107, s4, v52, v41
	v_and_b32_e32 v108, 0x7050301, v42
	v_and_b32_e32 v109, 0x7060706, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s10, s10, 0x80000
	v_xor_b32_e32 v87, 4, v97
	s_sext_i32_i16 s10, s10
	v_xor_b32_e32 v110, 64, v95
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s10, s10, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v111, s49, 4, v86
	v_lshl_add_u32 v112, v89, 1, 0
	v_dual_mov_b32 v113, 0xff800000 :: v_dual_mov_b32 v114, v25
	v_mov_b32_e32 v116, 0xff800000
	s_mov_b32 s40, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s10, s10, 0xfffff800
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s50, s50, 0x3fb8aa3b
	s_mov_b32 s64, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_and_b32 s57, s7, 0xffff
	s_and_b32 s61, s61, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s51, s10, s9
	s_mov_b32 s56, s6
	s_mov_b32 s65, s40
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v96, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v96, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v96, v[33:36] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[37:40] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v49
	ds_load_b128 v[37:40], v50
	ds_load_b128 v[41:44], v51
	ds_load_b128 v[45:48], v54
	ds_load_b128 v[49:52], v55
	ds_load_b128 v[53:56], v56
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_dual_mov_b32 v8, v25 :: v_dual_mov_b32 v115, 0xff800000
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v119, 8, v82
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v122, 8, v83
	v_lshrrev_b32_e32 v118, 8, v81
	v_and_b16 v117.h, 0xff, v81.h
	v_lshrrev_b32_e32 v121, 24, v81
	v_and_b16 v81.h, 0xff, v119.l
	v_and_b16 v118.h, 0xff, v82.h
	v_lshrrev_b32_e32 v123, 24, v82
	v_and_b16 v82.h, 0xff, v122.l
	v_and_b16 v119.l, 0xff, v83.h
	v_lshrrev_b32_e32 v122, 24, v83
	.loc	1 859 30                        ; attention.py:859:30
	v_lshrrev_b32_e32 v120, 8, v84
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v118.l, 0xff, v118.l
	v_and_b16 v117.l, 0xff, v81.l
	v_cmp_ne_u16_e64 s7, 0, v121.l
	v_cmp_ne_u16_e64 s13, 0, v119.l
	v_cmp_ne_u16_e64 s15, 0, v122.l
	v_and_b16 v81.l, 0xff, v82.l
	v_and_b16 v82.l, 0xff, v83.l
	v_and_b16 v83.l, 0xff, v84.l
	v_and_b16 v83.h, 0xff, v120.l
	v_cmp_ne_u16_e64 s5, 0, v118.l
	v_and_b16 v119.h, 0xff, v84.h
	v_lshrrev_b32_e32 v84, 24, v84
	v_cmp_ne_u16_e64 s4, 0, v117.l
	v_cmp_ne_u16_e64 s6, 0, v117.h
	v_cmp_ne_u16_e64 s17, 0, v81.h
	v_cmp_ne_u16_e64 s21, 0, v123.l
	v_cmp_ne_u16_e64 s11, 0, v82.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s14, s2, s7
	s_and_b32 s13, s2, s13
	s_and_b32 s15, s2, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s16, 0, v81.l
	v_cmp_ne_u16_e64 s23, 0, v83.l
	v_cmp_ne_u16_e64 s25, 0, v83.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v81, 0, 1, s14
	v_cndmask_b32_e64 v120, 0, 1, s13
	v_cndmask_b32_e64 v83, 0, 1, s15
	s_and_b32 s10, s2, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v118.h
	v_cmp_ne_u16_e64 s9, 0, v82.l
	v_cmp_ne_u16_e64 s27, 0, v84.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s8, s2, s4
	s_and_b32 s12, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s20, s2, s17
	s_and_b32 s24, s2, s21
	v_cndmask_b32_e64 v82, 0, 1, s10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v119.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v117, 0, 1, s8
	v_cndmask_b32_e64 v84, 0, 1, s12
	v_cndmask_b32_e64 v119, 0, 1, s11
	v_cndmask_b32_e64 v122, 0, 1, s20
	v_cndmask_b32_e64 v124, 0, 1, s24
	v_lshlrev_b16 v81.l, 8, v81.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e32 v83.l, v120.l
	s_and_b32 s9, s2, s9
	s_and_b32 s18, s2, s16
	s_and_b32 s22, s2, s19
	s_and_b32 s21, s2, s25
	s_and_b32 s25, s2, s27
	v_cndmask_b32_e64 v118, 0, 1, s9
	v_cndmask_b32_e64 v121, 0, 1, s18
	v_cndmask_b32_e64 v123, 0, 1, s22
	v_cndmask_b32_e64 v128, 0, 1, s25
	v_lshlrev_b16 v81.h, 8, v82.l
	v_mov_b16_e32 v82.l, v117.l
	v_mov_b16_e32 v117.l, v119.l
	v_or_b16 v119.h, v84.l, v81.l
	v_mov_b16_e32 v81.l, v124.l
	v_or_b16 v120.h, v83.l, v82.h
	v_mov_b16_e32 v83.l, v122.l
	s_and_b32 s19, s2, s23
	s_and_b32 s23, s2, s26
	v_or_b16 v119.l, v82.l, v81.h
	v_cndmask_b32_e64 v127, 0, 1, s23
	v_lshlrev_b16 v81.h, 8, v117.l
	v_mov_b16_e32 v82.l, v118.l
	v_lshlrev_b16 v81.l, 8, v81.l
	v_mov_b16_e64 v84.l, v128.l
	v_mov_b16_e32 v117.l, v123.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e32 v83.l, v121.l
	v_cndmask_b32_e64 v126, 0, 1, s21
	v_lshlrev_b16 v83.h, 8, v84.l
	v_mov_b16_e32 v84.l, v127.l
	v_or_b16 v120.l, v82.l, v81.h
	v_or_b16 v81.h, v117.l, v81.l
	v_or_b16 v81.l, v83.l, v82.h
	v_cndmask_b32_e64 v125, 0, 1, s19
	v_mov_b16_e32 v118.l, v126.l
	v_or_b16 v82.h, v84.l, v83.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v65, s50, v65 :: v_dual_mul_f32 v66, s50, v66
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v83, v81, v119, v105
	v_perm_b32 v81, v81, v119, v108
	v_lshlrev_b16 v84.h, 8, v118.l
	v_mov_b16_e32 v118.l, v125.l
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v119, s50, v75
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v83, v97, v83
	ds_bpermute_b32 v81, v87, v81
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v117, s50, v71
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v82.l, v118.l, v84.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v71, s50, v73 :: v_dual_mul_f32 v118, s50, v72
	v_dual_mul_f32 v72, s50, v74 :: v_dual_mul_f32 v73, s50, v77
	v_mul_f32_e32 v74, s50, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v84, v82, v120, v105
	v_perm_b32 v82, v82, v120, v108
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v120, s50, v76 :: v_dual_mul_f32 v69, s50, v69
	v_mul_f32_e32 v70, s50, v70
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v84, v97, v84
	ds_bpermute_b32 v82, v87, v82
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s28, s28, s49
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v67, s50, v67 :: v_dual_mul_f32 v68, s50, v68
	v_dual_mul_f32 v79, s50, v79 :: v_dual_mul_f32 v80, s50, v80
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v121, v81, v83, s1
	v_cndmask_b32_e64 v81, v83, v81, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v115
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v76, 1, v121
	v_cmp_eq_u32_e64 s26, 1, v76
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v122, v82, v84, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v65, s26
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v83, 1, v81
	v_cndmask_b32_e64 v75, v84, v82, s1
	v_and_b32_e32 v84, 0x100, v81
	v_and_b32_e32 v82, 0x100, v122
	v_cmp_eq_u32_e64 s6, 1, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v124, 0x100, v75
	v_cmp_eq_u32_e64 s7, 0, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s17, 0, v82
	v_and_b32_e32 v123, 1, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v71, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 0, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, v72, 0xff800000, s7
	v_cndmask_b32_e64 v70, v70, 0xff800000, s17
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s4, 1, v123
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, v82, v125, s1
	v_cndmask_b32_e64 v123, v74, 0xff800000, s5
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v131, 0x10000, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v73, s4
	ds_bpermute_b32 v124, v95, v65
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v77, 0x100, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, v123, v70, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 0, v77
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, v70, v123, s1
	ds_bpermute_b32 v130, v95, v76
	v_cndmask_b32_e64 v126, v66, 0xff800000, s27
	v_cndmask_b32_e64 v66, v125, v82, s1
	ds_bpermute_b32 v132, v110, v77
	v_cndmask_b32_e64 v71, v83, v126, s1
	v_cndmask_b32_e64 v72, v126, v83, s1
	ds_bpermute_b32 v127, v110, v66
	ds_bpermute_b32 v65, v95, v71
	ds_bpermute_b32 v66, v110, v72
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v71, s28, v86, 1
	v_add_lshl_u32 v72, s28, v111, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v131
	v_and_b32_e32 v131, 0x10000, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	v_cndmask_b32_e64 v76, 0x80000000, v72, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, v79, 0xff800000, s28
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v131
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, v119, 0xff800000, s30
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v143, v127, v124, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v133, 0x1000000, v75
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v137, v66, v65, s0
	v_cndmask_b32_e64 v138, v65, v66, s0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v127, v127 :: v_dual_max_f32 v66, v124, v124
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v78, 1, v122
	v_cmp_eq_u32_e64 s29, 0, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, v124, v127, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v133, 0x10000, v122
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v66, v65
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s16, 1, v78
	v_and_b32_e32 v122, 0x1000000, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, v80, 0xff800000, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s16
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v122
	v_and_b32_e32 v122, 0x10000, v121
	v_and_b32_e32 v121, 0x1000000, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, v117, 0xff800000, s31
	v_cndmask_b32_e64 v73, v84, v69, s1
	v_cndmask_b32_e64 v74, v69, v84, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s35, 0, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, v118, 0xff800000, s33
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s36, 0, v121
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v128, v95, v73
	ds_bpermute_b32 v129, v110, v74
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[71:74], v71, s[60:63], 0 offen
	buffer_load_b128 v[75:78], v76, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v122, v67, 0xff800000, s35
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v81, 0x1000000, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v80, v118, s1
	v_cndmask_b32_e64 v133, v118, v80, s1
	v_cndmask_b32_e64 v67, v117, v79, s1
	v_cndmask_b32_e64 v134, v119, v122, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s34, 0, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v122, v119, s1
	ds_bpermute_b32 v131, v95, v131
	ds_bpermute_b32 v133, v110, v133
	v_cndmask_b32_e64 v68, v68, 0xff800000, s36
	v_cndmask_b32_e64 v81, v120, 0xff800000, s34
	v_cndmask_b32_e64 v120, v79, v117, s1
	ds_bpermute_b32 v121, v95, v134
	ds_bpermute_b32 v134, v110, v135
	ds_bpermute_b32 v67, v110, v67
	v_cndmask_b32_e64 v135, v81, v68, s1
	ds_bpermute_b32 v120, v95, v120
	v_cndmask_b32_e64 v136, v68, v81, s1
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v139, v129, v128, s0
	v_cndmask_b32_e64 v128, v128, v129, s0
	ds_bpermute_b32 v135, v95, v135
	v_cndmask_b32_e64 v129, v132, v130, s0
	ds_bpermute_b32 v136, v110, v136
	v_cndmask_b32_e64 v130, v130, v132, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v141, v68, v69, v70
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v133, v131, s0
	v_cndmask_b32_e64 v131, v131, v133, s0
	v_cndmask_b32_e64 v140, v134, v121, s0
	v_cndmask_b32_e64 v121, v121, v134, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v134, v128, v129, v130
	v_max3_f32 v133, v120, v67, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v66, v138, v140, v121
	v_max3_f32 v133, v134, v133, v131
	v_max3_f32 v134, v135, v136, v139
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, v136, v135, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v137, v66
	v_max3_f32 v66, v84, v123, v79
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v135, v136, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v134, v133
	v_max3_f32 v133, v83, v119, v81
	v_max_f32_e32 v134, v125, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v142, v65
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v133, v66, v80
	v_max3_f32 v133, v117, v118, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v134, v134, v122, v141
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v134, v133, v66
	v_max_f32_e32 v133, v142, v142
.Ltmp16:
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b16_e64 v142.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v134, v66, s64, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v133, v65, v133
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v116, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v66, v115, v66, v134
	v_max_f32_e32 v113, v113, v113
	v_dual_max_f32 v65, v65, v133 :: v_dual_sub_f32 v134, v115, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v118, v118, v66 :: v_dual_sub_f32 v141, v116, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v113, v113, v133 :: v_dual_sub_f32 v82, v82, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v134, v134
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v66
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v127, v141
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, v67, v120, s0
	v_cndmask_b32_e64 v120, v120, v67, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v113
	v_dual_sub_f32 v133, v138, v113 :: v_dual_sub_f32 v80, v80, v66
	v_sub_f32_e32 v136, v144, v113
	v_dual_sub_f32 v138, v141, v113 :: v_dual_sub_f32 v123, v123, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v115, 0, v134, s37
	v_cmp_neq_f32_e64 s37, 0xff800000, v116
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v143, v113
	v_dual_sub_f32 v120, v120, v113 :: v_dual_sub_f32 v81, v81, v66
	v_sub_f32_e32 v84, v84, v66
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v67, 0, v127, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v127, v137, v113
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v120, v120
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v140, v113 :: v_dual_sub_f32 v69, v69, v66
	v_sub_f32_e32 v68, v68, v66
	v_dual_sub_f32 v128, v128, v113 :: v_dual_sub_f32 v83, v83, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v140, v69
	v_exp_f32_e32 v69, v117
	v_exp_f32_e32 v117, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v127, s12
	v_cndmask_b32_e64 v120, 0, v120, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v139, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v116, s8
	v_cndmask_b32_e64 v116, 0, v124, s10
	v_cndmask_b32_e64 v124, 0, v133, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v136, s22
	v_cndmask_b32_e64 v136, 0, v138, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v121, v121, v113 :: v_dual_add_f32 v68, v68, v116
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v118, v124
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v120, v136, v120
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v130, v130, v113 :: v_dual_sub_f32 v119, v119, v66
	v_dual_sub_f32 v132, v132, v113 :: v_dual_sub_f32 v79, v79, v66
	v_dual_sub_f32 v131, v131, v113 :: v_dual_add_f32 v68, v68, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v134, s18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v134, 0, v135, s24
	v_cndmask_b32_e64 v128, 0, v128, s11
	v_cndmask_b32_e64 v135, 0, v137, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v131, v131
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v124, v135, v128
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v126, v126, v66
	v_sub_f32_e32 v122, v122, v66
	v_sub_f32_e32 v125, v125, v66
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s20
	v_cndmask_b32_e64 v130, 0, v130, s15
	v_cndmask_b32_e64 v132, 0, v132, s23
	v_cndmask_b32_e64 v131, 0, v131, s25
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v129, s13
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v118, v127, v121 :: v_dual_add_f32 v121, v133, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v128, v132, v131
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v129, v130
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v118, v121
	v_dual_add_f32 v120, v120, v128 :: v_dual_mul_f32 v27, v27, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v118, v124, v127
.Ltmp31:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v115 :: v_dual_add_f32 v68, v68, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, v69, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v115 :: v_dual_add_f32 v116, v118, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v125, s26
	v_cndmask_b32_e64 v120, v139, 0, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v124.h, v142.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v116
.Ltmp33:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, v122, 0, s35
	v_cndmask_b32_e64 v122, v126, 0, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.l, v123.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v69, v68
.Ltmp35:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v122.h
	v_and_b32_e32 v124, 1, v124
	v_cmp_o_f32_e64 s8, v122, v122
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v142
	v_mov_b16_e64 v142.l, v120.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v115
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp39:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v125, v122, v125, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v115
	v_mul_f32_e32 v32, v32, v115
	v_mul_f32_e32 v18, v18, v115
	v_mul_f32_e32 v19, v19, v115
	v_mul_f32_e32 v20, v20, v115
	v_mul_f32_e32 v21, v21, v115
	v_mul_f32_e32 v22, v22, v115
	v_mul_f32_e32 v23, v23, v115
	v_mul_f32_e32 v24, v24, v115
	v_mul_f32_e32 v9, v9, v115
	v_mul_f32_e32 v10, v10, v115
	v_mul_f32_e32 v11, v11, v115
	v_mul_f32_e32 v12, v12, v115
	v_mul_f32_e32 v13, v13, v115
	v_mul_f32_e32 v14, v14, v115
	v_mul_f32_e32 v15, v15, v115
	v_mul_f32_e32 v16, v16, v115
	v_mul_f32_e32 v1, v1, v115
	v_mul_f32_e32 v2, v2, v115
	v_mul_f32_e32 v3, v3, v115
	v_mul_f32_e32 v4, v4, v115
	v_mul_f32_e32 v6, v6, v115
	v_mul_f32_e32 v8, v8, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v122.h, 0x7fff, v125.h, s8
	v_cmp_o_f32_e64 s8, v123, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v140, s16
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v68, v114, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v115, v123, v124, 0x7fff
	v_mov_b16_e32 v123.l, v116.h
	v_mov_b16_e64 v123.h, v142.h
	v_and_b32_e32 v124, 1, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, v70, 0, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v122.l, 0x7fff, v115.h, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v115, 1, v123
	v_add3_u32 v123, v120, v124, 0x7fff
	v_mov_b16_e32 v124.l, v125.h
	v_mov_b16_e64 v124.h, v142.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v70.h
	v_add3_u32 v115, v116, v115, 0x7fff
	v_cmp_o_f32_e64 s9, v116, v116
	v_and_b32_e32 v116, 1, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, v117, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v120, v120
	v_and_b32_e32 v120, 1, v142
	v_cndmask_b16 v126.l, 0x7fff, v115.h, s9
	v_add3_u32 v115, v125, v116, 0x7fff
	v_mov_b16_e32 v116.l, v121.h
	v_mov_b16_e64 v116.h, v142.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v126.h, 0x7fff, v123.h, s8
	v_add3_u32 v120, v70, v120, 0x7fff
	v_cmp_o_f32_e64 s8, v70, v70
	v_mov_b16_e64 v142.l, v117.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, v83, 0, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v125, v125
	v_and_b32_e32 v116, 1, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v120.h, s8
	v_and_b32_e32 v120, 1, v142
	v_mov_b16_e64 v142.l, v83.h
	v_cndmask_b16 v70.l, 0x7fff, v115.h, s7
	v_add3_u32 v115, v121, v116, 0x7fff
	v_mov_b16_e32 v116.l, v82.h
	v_mov_b16_e64 v116.h, v142.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v119, v119, 0, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v123, 1, v142
	v_cmp_o_f32_e64 s7, v121, v121
	v_and_b32_e32 v116, 1, v116
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v120, v117, v120, 0x7fff
	v_cmp_o_f32_e64 s6, v117, v117
	v_add3_u32 v117, v83, v123, 0x7fff
	v_cmp_o_f32_e64 s8, v83, v83
	v_cndmask_b16 v83.l, 0x7fff, v115.h, s7
	v_add3_u32 v115, v82, v116, 0x7fff
	v_mov_b16_e32 v116.l, v119.h
	v_mov_b16_e64 v116.h, v142.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, v79, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v83.h, 0x7fff, v120.h, s6
	v_cmp_o_f32_e64 s6, v82, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, v81, 0, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v116, 1, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, v118, 0, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v118, 0, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v180.l, 0x7fff, v115.h, s6
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v115, v119, v116, 0x7fff
	v_mov_b16_e32 v116.l, v79.h
	v_mov_b16_e64 v116.h, v142.h
	v_mov_b16_e64 v142.l, v81.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v118, v[71:74]
	s_waitcnt vmcnt(0)
	ds_store_b128 v118, v[75:78] offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v116
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v73, v112 offset:512
	ds_load_u16_d16 v116, v112 offset:288
	ds_load_u16_d16 v125, v112 offset:608
	ds_load_u16_d16 v124, v112 offset:352
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v180.h, 0x7fff, v117.h, s8
	v_and_b32_e32 v117, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v81, v81
	v_mov_b16_e64 v142.l, v82.h
	v_add3_u32 v117, v81, v117, 0x7fff
	v_add3_u32 v72, v79, v120, 0x7fff
	v_cmp_o_f32_e64 s5, v82, v82
	v_cmp_o_f32_e64 s8, v79, v79
	v_permlanex16_b32 v75, v126, s64, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v182.h, 0x7fff, v117.h, s4
	v_and_b32_e32 v117, 1, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, v80, 0, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v119, v119
	v_mov_b16_e64 v81.h, v142.h
	v_perm_b32 v141, v75, v126, v106
	v_add3_u32 v71, v82, v117, 0x7fff
	v_mov_b16_e64 v142.l, v80.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v71, v112
	ds_load_u16_d16 v115, v112 offset:32
	ds_load_u16_d16 v133, v112 offset:576
	ds_load_u16_d16 v72, v112 offset:256
	ds_load_u16_d16 v131, v112 offset:64
	ds_load_u16_d16 v132, v112 offset:320
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v124, v112 offset:480
	ds_load_u16_d16 v123, v112 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v80, v80
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v182.l, 0x7fff, v115.h, s4
	v_cndmask_b16 v79.h, 0x7fff, v71.h, s5
	v_and_b32_e32 v119, 1, v142
	v_perm_b32 v142, v75, v126, v109
	v_mov_b16_e32 v81.l, v84.h
	v_cmp_o_f32_e64 s6, v84, v84
	v_permlanex16_b32 v82, v83, s64, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v74, v80, v119, 0x7fff
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v80.l, 0x7fff, v72.h, s8
	v_and_b32_e32 v81, 1, v81
	v_permlanex16_b32 v183, v182, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v145, v82, v83, v106
	v_cndmask_b16 v80.h, 0x7fff, v74.h, s7
	v_permlanex16_b32 v74, v122, s64, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v81, v84, v81, 0x7fff
	v_permlanex16_b32 v84, v180, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v82, v83, v109
	v_permlanex16_b32 v186, v80, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v74, v122, v106
	v_perm_b32 v140, v74, v122, v109
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v74, v112 offset:768
	ds_load_u16_d16 v134, v112 offset:832
	ds_load_u16_d16_hi v133, v112 offset:704
	ds_load_u16_d16 v117, v112 offset:544
	ds_load_u16_d16_hi v71, v112 offset:128
	ds_load_u16_d16_hi v115, v112 offset:160
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v131, v112 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v123, v112 offset:224
	ds_load_u16_d16_hi v73, v112 offset:640
	ds_load_u16_d16_hi v72, v112 offset:384
	ds_load_u16_d16_hi v116, v112 offset:416
	ds_load_u16_d16_hi v132, v112 offset:448
	ds_load_u16_d16 v135, v112 offset:1088
	ds_load_u16_d16 v136, v112 offset:1344
	ds_load_u16_d16 v137, v112 offset:1600
	ds_load_u16_d16 v138, v112 offset:1856
	ds_load_u16_d16 v147, v112 offset:2112
	ds_load_u16_d16 v149, v112 offset:2624
	ds_load_u16_d16 v150, v112 offset:2880
	ds_load_u16_d16 v151, v112 offset:3136
	ds_load_u16_d16 v152, v112 offset:3392
	ds_load_u16_d16 v153, v112 offset:3648
	ds_load_u16_d16 v154, v112 offset:3904
	ds_load_u16_d16 v75, v112 offset:1024
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v74, v112 offset:896
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v117, v112 offset:672
	ds_load_u16_d16 v118, v112 offset:800
	ds_load_u16_d16_hi v134, v112 offset:960
	ds_load_u16_d16 v126, v112 offset:864
	ds_load_u16_d16_hi v125, v112 offset:736
	ds_load_u16_d16 v76, v112 offset:1280
	ds_load_u16_d16 v119, v112 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v135, v112 offset:1216
	ds_load_u16_d16 v127, v112 offset:1120
	ds_load_u16_d16 v77, v112 offset:1536
	ds_load_u16_d16 v120, v112 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v136, v112 offset:1472
	ds_load_u16_d16 v128, v112 offset:1376
	ds_load_u16_d16 v78, v112 offset:1792
	ds_load_u16_d16 v121, v112 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v137, v112 offset:1728
	ds_load_u16_d16 v129, v112 offset:1632
	ds_load_u16_d16 v155, v112 offset:2048
	ds_load_u16_d16 v122, v112 offset:1824
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v138, v112 offset:1984
	ds_load_u16_d16 v130, v112 offset:1888
	ds_load_u16_d16 v156, v112 offset:2304
	ds_load_u16_d16 v163, v112 offset:2080
	ds_load_u16_d16 v148, v112 offset:2368
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v147, v112 offset:2240
	ds_load_u16_d16 v171, v112 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v75, v112 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v112 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v126, v112 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v76, v112 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v119, v112 offset:1184
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v127, v112 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v77, v112 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v120, v112 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v128, v112 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v78, v112 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v121, v112 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v129, v112 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v155, v112 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v122, v112 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v130, v112 offset:2016
	ds_load_u16_d16 v157, v112 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v156, v112 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v163, v112 offset:2208
	ds_load_u16_d16 v164, v112 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v148, v112 offset:2496
	ds_load_u16_d16 v172, v112 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v171, v112 offset:2272
	ds_load_u16_d16 v158, v112 offset:2816
	ds_load_u16_d16 v165, v112 offset:2592
	ds_load_u16_d16_hi v149, v112 offset:2752
	ds_load_u16_d16 v173, v112 offset:2656
	ds_load_u16_d16 v159, v112 offset:3072
	ds_load_u16_d16 v166, v112 offset:2848
	ds_load_u16_d16_hi v150, v112 offset:3008
	ds_load_u16_d16 v174, v112 offset:2912
	ds_load_u16_d16 v160, v112 offset:3328
	ds_load_u16_d16 v167, v112 offset:3104
	ds_load_u16_d16_hi v151, v112 offset:3264
	ds_load_u16_d16 v175, v112 offset:3168
	ds_load_u16_d16 v161, v112 offset:3584
	ds_load_u16_d16 v168, v112 offset:3360
	ds_load_u16_d16_hi v152, v112 offset:3520
	ds_load_u16_d16 v176, v112 offset:3424
	ds_load_u16_d16 v162, v112 offset:3840
	ds_load_u16_d16 v169, v112 offset:3616
	ds_load_u16_d16_hi v153, v112 offset:3776
	ds_load_u16_d16 v177, v112 offset:3680
	ds_load_u16_d16 v170, v112 offset:3872
	ds_load_u16_d16_hi v154, v112 offset:4032
	ds_load_u16_d16 v178, v112 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v157, v112 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v164, v112 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v172, v112 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v158, v112 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v165, v112 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v173, v112 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v159, v112 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v166, v112 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v174, v112 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v160, v112 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v167, v112 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v175, v112 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v161, v112 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v168, v112 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v176, v112 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v162, v112 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v169, v112 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v177, v112 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v170, v112 offset:4000
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.l, 0x7fff, v81.h, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v178, v112 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v81, v70, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v179, v84, v180, v106
	v_perm_b32 v180, v84, v180, v109
	v_permlanex16_b32 v184, v79, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v181, v183, v182, v106
	v_perm_b32 v143, v81, v70, v106
	v_perm_b32 v144, v81, v70, v109
	v_perm_b32 v182, v183, v182, v109
	v_perm_b32 v183, v184, v79, v106
	v_perm_b32 v184, v184, v79, v109
	v_perm_b32 v185, v186, v80, v106
	v_perm_b32 v186, v186, v80, v109
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[71:78], v[139:146], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[115:122], v[139:146], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[131:138], v[139:146], v[9:16]
	v_mov_b32_e32 v114, v68
	v_wmma_f32_16x16x16_bf16 v[1:8], v[123:130], v[139:146], v[1:8]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[155:162], v[179:186], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[163:170], v[179:186], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[147:154], v[179:186], v[9:16]
	v_mov_b32_e32 v115, v66
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[179:186], v[1:8]
	v_mov_b32_e32 v116, v65
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s4, s65, 32
	s_cmpk_lt_u32 s65, 0x7e0
	s_mov_b32 s65, s4
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s28, s65, s51
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v164, s47 :: v_dual_add_nc_u32 v81, 0, v94
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s28, s48
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v163, s46 :: v_dual_mov_b32 v162, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s4, v85, 1
	v_add_lshl_u32 v66, s4, v88, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v161, s44 :: v_dual_mov_b32 v160, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v82, 0 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v69, 0x80000000, v66 :: v_dual_mov_b32 v84, 0
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[56:59], 0 offen
	buffer_load_b128 v[69:72], v69, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v159, s42 :: v_dual_mov_b32 v158, s41
	v_mov_b32_e32 v157, s40
	v_mov_b32_e32 v83, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v96, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v98
	ds_load_b128 v[73:76], v81
	ds_load_b128 v[117:120], v81 offset:2048
	ds_load_b128 v[121:124], v98 offset:2048
	ds_load_b128 v[125:128], v99
	ds_load_b128 v[133:136], v99 offset:2048
	ds_load_b128 v[129:132], v100
	ds_load_b128 v[137:140], v100 offset:2048
	ds_load_b128 v[141:144], v101
	ds_load_b128 v[149:152], v101 offset:2048
	ds_load_b128 v[145:148], v102
	ds_load_b128 v[153:156], v102 offset:2048
	ds_load_b128 v[165:168], v103
	ds_load_b128 v[173:176], v103 offset:2048
	ds_load_b128 v[169:172], v104
	ds_load_b128 v[177:180], v104 offset:2048
	v_mov_b32_e32 v81, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[157:164]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[117:124], v[33:40], v[157:164]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[125:132], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[133:140], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[141:148], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[149:156], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[165:172], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[173:180], v[57:64], v[73:80]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s2
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v81, s65, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v82, 31, v81
	v_add_co_u32 v81, s4, s52, v81
	v_add_co_ci_u32_e64 v82, null, s53, v82, s4
	global_load_b128 v[81:84], v[81:82], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 787 79                        ; attention.py:787:79
	v_bfe_u32 v36, v0, 4, 1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v0, v93, v36
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v36
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v38, v0, v68
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v37, v0, v89
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v91
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s39, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s38, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v39
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s49, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v47, null, v38, v38, v29
	v_rcp_f32_e32 v52, v41
	v_rcp_f32_e32 v53, v43
	v_rcp_f32_e32 v54, v45
	v_div_scale_f32 v49, null, v38, v38, v30
	v_rcp_f32_e32 v55, v47
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_fma_f32 v60, -v39, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v56, v49
	v_fma_f32 v61, -v41, v52, 1.0
	v_fma_f32 v62, -v43, v53, 1.0
	v_fma_f32 v63, -v45, v54, 1.0
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_div_scale_f32 v44, s2, v27, v38, v27
	v_div_scale_f32 v46, s3, v28, v38, v28
	v_fma_f32 v64, -v47, v55, 1.0
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_fmac_f32_e32 v54, v63, v54
	v_mul_f32_e32 v60, v40, v51
	v_fma_f32 v65, -v49, v56, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_dual_mul_f32 v61, v42, v52 :: v_dual_mul_f32 v62, v44, v53
	v_mul_f32_e32 v63, v46, v54
	v_fma_f32 v64, -v39, v60, v40
	v_div_scale_f32 v48, s4, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v43, v62, v44
	v_fma_f32 v67, -v45, v63, v46
	v_fmac_f32_e32 v56, v65, v56
	v_fma_f32 v65, -v41, v61, v42
	v_fmac_f32_e32 v60, v64, v51
	v_div_scale_f32 v50, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, v48, v55 :: v_dual_fmac_f32 v61, v65, v52
	v_fmac_f32_e32 v62, v66, v53
	v_fma_f32 v39, -v39, v60, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v59, v50
	v_fmac_f32_e32 v63, v67, v54
	v_fma_f32 v40, -v41, v61, v42
	v_fma_f32 v41, -v43, v62, v44
	v_div_fmas_f32 v39, v39, v51, v60
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v58, null, v38, v38, v32
	v_fma_f32 v42, -v45, v63, v46
	v_div_fmas_f32 v40, v40, v52, v61
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v57, s5, v30, v38, v30
	v_div_fmas_f32 v41, v41, v53, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v54, v63
	v_fma_f32 v42, -v50, v59, 1.0
	v_rcp_f32_e32 v43, v58
	v_div_fixup_f32 v26, v40, v38, v26
	v_mul_f32_e32 v40, v57, v56
	v_fma_f32 v64, -v47, v68, v48
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, null, v38, v38, v17
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v49, v40, v57
	v_div_scale_f32 v41, s2, v31, v38, v31
	v_fma_f32 v44, -v58, v43, 1.0
	v_rcp_f32_e32 v46, v42
	v_fmac_f32_e32 v68, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v39, v56 :: v_dual_mul_f32 v39, v41, v59
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s3, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v68, v48
	v_fma_f32 v47, -v49, v40, v57
	v_fma_f32 v48, -v50, v39, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v42, v46, 1.0
	v_mul_f32_e32 v49, v44, v43
	v_div_scale_f32 v52, null, v38, v38, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v39, v48, v59
	v_div_fmas_f32 v45, v45, v55, v68
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v51, v46
	v_div_fmas_f32 v40, v47, v56, v40
	v_rcp_f32_e32 v47, v52
	v_fma_f32 v48, -v58, v49, v44
	v_div_scale_f32 v51, s4, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v40, v38, v30
	v_fma_f32 v40, -v50, v39, v41
	v_fmac_f32_e32 v49, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v41, v51, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v45, v38, v29
	v_fma_f32 v45, -v52, v47, 1.0
	v_div_fmas_f32 v39, v40, v59, v39
	v_fma_f32 v40, -v58, v49, v44
	v_fma_f32 v44, -v42, v41, v51
	v_div_scale_f32 v48, null, v38, v38, v19
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v50, s2, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v46
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v53, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v50, v47
	v_div_fixup_f32 v31, v39, v38, v31
	v_fma_f32 v39, -v42, v41, v51
	v_div_scale_f32 v51, null, v38, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v19, v38, v19
	v_div_fmas_f32 v40, v40, v43, v49
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v43, v53
	v_div_fmas_f32 v39, v39, v46, v41
	v_rcp_f32_e32 v41, v51
	v_fma_f32 v49, -v48, v45, 1.0
	v_div_fixup_f32 v32, v40, v38, v32
	v_fma_f32 v40, -v52, v44, v50
	v_div_fixup_f32 v17, v39, v38, v17
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v46, s4, v20, v38, v20
	v_fma_f32 v49, -v53, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v51, v41, 1.0
	v_fmac_f32_e32 v44, v40, v47
	v_mul_f32_e32 v40, v42, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v38
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v55, v41
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, null, v38, v38, v22
	v_fma_f32 v39, -v52, v44, v50
	v_fma_f32 v50, -v48, v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v54, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v50, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v54, v50, v54
	v_div_fmas_f32 v39, v39, v47, v44
	v_div_scale_f32 v47, s2, v21, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v39, v38, v18
	v_fma_f32 v39, -v48, v40, v42
	v_mul_f32_e32 v42, v47, v41
	v_mul_f32_e32 v52, v46, v43
	v_div_scale_f32 v48, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v45, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v53, v52, v46
	v_fma_f32 v45, -v51, v42, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v39, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v44, v43
	v_div_scale_f32 v44, s5, v22, v38, v22
	v_fmac_f32_e32 v42, v45, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v52, v46
	v_div_scale_f32 v53, null, v38, v38, v24
	v_rcp_f32_e32 v46, v48
	v_fma_f32 v39, -v51, v42, v47
	v_div_fmas_f32 v40, v40, v43, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v53
	v_mul_f32_e32 v50, v44, v54
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v38, v38, v10
	v_div_fmas_f32 v39, v39, v41, v42
	v_fma_f32 v45, -v49, v50, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v48, v46, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s3, v23, v38, v23
	v_fmac_f32_e32 v50, v45, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v45, -v53, v43, 1.0
	v_div_fixup_f32 v21, v39, v38, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v49, v50, v44
	v_div_scale_f32 v44, null, v38, v38, v9
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s2, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v41, v41, v54, v50
	v_div_scale_f32 v54, null, v38, v38, v12
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v40, v46
	v_div_fixup_f32 v22, v41, v38, v22
	v_rcp_f32_e32 v41, v51
	v_rcp_f32_e32 v56, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v48, v42, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v49, v46
	v_fma_f32 v49, -v44, v47, 1.0
	v_fma_f32 v52, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v48, v42, v40
	v_div_scale_f32 v48, null, v38, v38, v11
	v_fmac_f32_e32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_div_fmas_f32 v40, v40, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, s3, v10, v38, v10
	v_div_fixup_f32 v23, v40, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v46, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v48, v49, 1.0
	v_dual_mul_f32 v50, v45, v43 :: v_dual_fmac_f32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v53, v50, v45
	v_div_scale_f32 v52, s5, v11, v38, v11
	v_fmac_f32_e32 v50, v39, v43
	v_div_scale_f32 v39, s4, v9, v38, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v53, v50, v45
	v_mul_f32_e32 v45, v39, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v50
	v_fma_f32 v53, -v44, v45, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v51, v55, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v42, v38, v24
	v_fmac_f32_e32 v45, v53, v47
	v_fma_f32 v42, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v13
	v_fma_f32 v39, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v42, v56
	v_div_scale_f32 v42, s2, v12, v38, v12
	v_fma_f32 v44, -v51, v55, v46
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v42, v56 :: v_dual_mul_f32 v50, v52, v49
	v_div_fmas_f32 v41, v44, v41, v55
	v_div_scale_f32 v46, null, v38, v38, v14
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v50, v52
	v_div_fixup_f32 v9, v39, v38, v9
	v_div_fixup_f32 v10, v41, v38, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v40, v49
	v_rcp_f32_e32 v40, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v48, v50, v52
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v44, v44, v49, v50
	v_fma_f32 v47, -v43, v40, 1.0
	v_fma_f32 v49, -v54, v45, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v44, v38, v11
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s3, v13, v38, v13
	v_fmac_f32_e32 v45, v49, v56
	v_div_scale_f32 v44, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v47, v40
	v_fma_f32 v41, -v46, v48, 1.0
	v_fma_f32 v42, -v54, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s4, v14, v38, v14
	v_div_fmas_f32 v42, v42, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v38, v38, v16
	v_div_fixup_f32 v12, v42, v38, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v42, -v43, v39, v47
	v_fma_f32 v47, -v44, v50, 1.0
	v_mul_f32_e32 v45, v41, v48
	v_rcp_f32_e32 v51, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v42, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v1
	v_fmac_f32_e32 v50, v47, v50
	v_fma_f32 v43, -v46, v45, v41
	v_div_scale_f32 v42, s2, v15, v38, v15
	v_div_fixup_f32 v13, v39, v38, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v47, null, v38, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v39, v51
	v_fma_f32 v41, -v46, v45, v41
	v_mul_f32_e32 v46, v42, v50
	v_div_scale_f32 v39, s3, v16, v38, v16
	v_rcp_f32_e32 v53, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v40, v43, 1.0
	v_div_scale_f32 v54, s4, v1, v38, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v47, v53, 1.0
	v_mul_f32_e32 v57, v54, v43
	v_div_fmas_f32 v41, v41, v48, v45
	v_fma_f32 v45, -v44, v46, v42
	v_mul_f32_e32 v48, v39, v51
	v_fmac_f32_e32 v53, v55, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v41, v38, v14
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_rcp_f32_e32 v56, v52
	v_div_scale_f32 v55, s5, v2, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v44, v46, v42
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v39, -v49, v48, v39
	v_div_scale_f32 v46, null, v38, v38, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v52, v56, 1.0
	v_div_fmas_f32 v39, v39, v51, v48
	v_rcp_f32_e32 v48, v46
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v3, v38, v3
	v_div_fixup_f32 v15, v41, v38, v15
	v_fma_f32 v40, -v40, v57, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v39, v38, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_scale_f32 v50, null, v38, v38, v8
	v_div_fmas_f32 v40, v40, v43, v57
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v41, v48
	v_fmac_f32_e32 v44, v42, v53
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v41, null, v38, v38, v6
	v_div_fixup_f32 v1, v40, v38, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_scale_f32 v40, null, v38, v38, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v43, v53, v44
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v43, v38, v2
	v_fma_f32 v39, -v52, v42, v45
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v43, null, v38, v38, v7
	v_rcp_f32_e32 v52, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v51, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v51, v45
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v44, vcc_lo, v4, v38, v4
	v_div_scale_f32 v51, s3, v6, v38, v6
	v_div_fixup_f32 v3, v39, v38, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	v_mul_f32_e32 v57, v51, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v7, v38, v7
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v5, v38, v5
	v_fma_f32 v53, -v46, v49, v44
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s5, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v39, v42
	v_dual_fmac_f32 v49, v53, v48 :: v_dual_mul_f32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v40, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v55, v53, v42
	v_fma_f32 v53, -v43, v58, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_fmac_f32_e32 v58, v53, v47
	v_fma_f32 v41, -v41, v57, v51
	v_div_fixup_f32 v4, v44, v38, v4
	v_div_fmas_f32 v39, v39, v42, v55
	v_fmac_f32_e32 v59, v40, v52
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v45, v57
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v39, v38, v5
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v41, v38, v6
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s49, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v36, v37, v36, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v40, v38, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s55, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v42, v38, v8
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v38, 8, v36
	v_add_nc_u32_e32 v39, 16, v36
	v_cndmask_b32_e32 v40, 0x80000000, v36, vcc_lo
	s_mov_b32 s4, s54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x2
	buffer_store_b32 v25, v40, s[4:7], 0 offen
	buffer_store_b32 v26, v38, s[4:7], 0 offen
	buffer_store_b32 v27, v39, s[4:7], 0 offen
	v_add_nc_u32_e32 v39, 56, v36
	v_add_nc_u32_e32 v26, 32, v36
	v_add_nc_u32_e32 v38, 48, v36
	v_add_nc_u32_e32 v27, 40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_add_nc_u32 v25, 24, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s49, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x4
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	buffer_store_b32 v32, v39, s[4:7], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v36
	v_add_nc_u32_e32 v27, 0x50, v36
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v36
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s49, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v36
	v_add_nc_u32_e32 v20, 0x78, v36
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v24, v20, s[4:7], 0 offen
	buffer_store_b32 v9, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v36
	v_add_nc_u32_e32 v20, 0xa8, v36
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v36
	v_add_nc_u32_e32 v19, 0xa0, v36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s49, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v17, s[4:7], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v36
	s_clause 0x2
	buffer_store_b32 v12, v10, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	buffer_store_b32 v14, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v36
	v_add_lshl_u32 v11, v37, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v36
	v_add_nc_u32_e32 v13, 0xd0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x4
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v16, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
	buffer_store_b32 v3, v13, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v36
	v_add_nc_u32_e32 v2, 0xe0, v36
	v_add_nc_u32_e32 v3, 0xe8, v36
	v_add_nc_u32_e32 v9, 0xf0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v3, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	buffer_store_b32 v8, v0, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp40:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 187
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 187
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10716
; TotalNumSgprs: 68
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 187
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
