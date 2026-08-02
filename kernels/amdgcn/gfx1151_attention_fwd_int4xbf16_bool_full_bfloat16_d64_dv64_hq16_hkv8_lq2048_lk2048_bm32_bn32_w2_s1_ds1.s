	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v43, 0x7531 :: v_dual_lshlrev_b32 v38, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v45, 0x7632 :: v_dual_and_b32 v36, 16, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s6, v3
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_and_b32 v40, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v39
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[52:55], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_mov_b32_e32 v24, 0
	s_lshr_b32 s0, s0, 28
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[52:53], null, s56, v3, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s56, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v42, 0x6420 :: v_dual_lshlrev_b32 v49, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s7, v[52:53]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	v_lshlrev_b32_e32 v53, 3, v0
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v48, 1, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v44, 0x5410 :: v_dual_and_b32 v51, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v48
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v47, v0, 4, 1
	v_mov_b32_e32 v28, v24
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v3, 16, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_xor_b32_e32 v69, v38, v51
	v_and_b32_e32 v51, 24, v49
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v66, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_cndmask_b32_e64 v42, 0x7531, v42, s1
	v_dual_mov_b32 v67, 0xff800000 :: v_dual_and_b32 v46, 56, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v2, 1, v66
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v50, 7, v0
	v_bfe_i32 v54, v0, 3, 1
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v53, 48, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v38, 48, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v56, v49, 30, v47
	v_lshl_or_b32 v71, v40, 5, v51
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v41, v1, s[60:63], 0 offen
	v_cndmask_b32_e64 v40, 0x6420, v43, s1
	v_lshl_or_b32 v42, v42, 8, v42
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v37, 3, v50
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v54, 0x210, v54
	v_dual_mov_b32 v9, v24 :: v_dual_lshlrev_b32 v70, 2, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v11, v24 :: v_dual_and_b32 v42, 0x750031, v42
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v55, 1, v46
	v_xor_b32_e32 v38, v38, v46
	v_lshl_or_b32 v43, v50, 6, v53
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s7, s3, 0x10007
	v_mov_b32_e32 v18, v24
	s_add_i32 s7, s3, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v73, 4, v70
	v_lshl_or_b32 v75, v50, 9, v38
	v_xor_b32_e32 v76, v43, v54
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s57, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s57, v55, v[37:38]
	v_mul_lo_u32 v37, s5, v39
	v_lshl_or_b32 v38, v42, 4, v42
	v_and_b32_e32 v39, 0x750031, v40
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v68, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v8, v24 :: v_dual_and_b32 v83, 0x7050301, v38
	v_lshl_or_b32 v38, v39, 4, v39
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s6, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s59, s0
	v_xor_b32_e32 v40, 0x90, v75
	s_add_i32 s3, s3, s0
	v_xor_b32_e32 v42, 0x120, v75
	v_xor_b32_e32 v43, 0x1b0, v75
	v_add3_u32 v87, s3, v36, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v89, 0, v42
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v88, 0, v40
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v90, 0, v43
	v_cndmask_b32_e64 v42, 0x1054, v44, s0
	v_cndmask_b32_e64 v43, 0x3276, v45, s0
	v_xor_b32_e32 v54, 48, v76
	v_xor_b32_e32 v55, 0x420, v76
	v_xor_b32_e32 v56, 8, v69
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s7, s7, 0x80000
	v_xor_b32_e32 v57, 0x410, v76
	v_and_b32_e32 v98, 0x7050301, v38
	v_lshl_or_b32 v38, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	s_sext_i32_i16 s7, s7
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v93, 0, v54
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v94, 0, v55
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s7, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[54:55], null, s57, 3, v[53:54]
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v77, 0, v56
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v48, 6, v48
	v_xor_b32_e32 v56, 0x430, v76
	v_add_nc_u32_e32 v96, 0, v57
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s7, s7, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s58, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s58, s7, s6
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v95, 0, v56
	v_mov_b32_e32 v2, v24
	v_and_or_b32 v72, v49, 60, v48
	v_xor_b32_e32 v46, 8, v71
	v_xor_b32_e32 v48, 16, v71
	v_xor_b32_e32 v49, 24, v71
	v_xor_b32_e32 v50, 16, v76
	v_xor_b32_e32 v51, 32, v76
	v_or_b32_e32 v82, s58, v47
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_mov_b32 v25, v24
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v79, 0, v46
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v81, 0, v49
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v91, 0, v50
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v80, 0, v48
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v84, s57, v53
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v92, 0, v51
	v_mov_b32_e32 v78, v24
	v_xor_b32_e32 v74, 64, v72
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v85, s57, 1, v53
	v_or_b32_e32 v97, 28, v82
	v_or_b32_e32 v100, 30, v82
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s68, 0x76543210
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s69, s44
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v39, v70, v32
	ds_bpermute_b32 v32, v73, v32
	ds_bpermute_b32 v36, v70, v33
	ds_bpermute_b32 v33, v73, v33
	ds_bpermute_b32 v37, v70, v34
	ds_bpermute_b32 v34, v73, v34
	ds_bpermute_b32 v40, v70, v35
	ds_bpermute_b32 v35, v73, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v55, v32, v39, s0
	v_cndmask_b32_e64 v57, v39, v32, s0
	v_and_b32_e32 v32, 0x540054, v38
	v_and_b32_e32 v38, 0x760076, v42
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v56, v33, v36, s0
	v_cndmask_b32_e64 v58, v36, v33, s0
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v38, 4, v38
	v_dual_mov_b32 v4, v24 :: v_dual_mul_f32 v99, s8, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v6, v24 :: v_dual_and_b32 v63, 0x5040504, v32
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v59, v34, v37, s0
	v_cndmask_b32_e64 v61, v37, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v60, v35, v40, s0
	v_cndmask_b32_e64 v62, v40, v35, s0
	v_and_b32_e32 v64, 0x7060706, v33
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e32 v65.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v102.h, v117.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v117, v35
	v_cvt_f32_i32_e32 v120, v36
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v35, 8, v48
	v_lshrrev_b32_e32 v36, 8, v50
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v118, 8, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v108.h, v107.l
	v_mov_b16_e32 v107.l, v65.l
	v_mov_b16_e32 v107.h, v106.l
	v_mov_b16_e32 v105.h, v104.l
	v_mov_b16_e32 v104.l, v65.l
	v_mov_b16_e32 v104.h, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v123, v99, v33
	v_mul_f32_e32 v124, v99, v34
	v_mul_f32_e32 v122, v99, v32
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v32.l, 0xff, v48.l
	v_and_b16 v32.h, 0xff, v35.l
	v_and_b16 v33.l, 0xff, v48.h
	v_lshrrev_b32_e32 v48, 24, v48
	v_and_b16 v35.l, 0xff, v50.l
	v_and_b16 v35.h, 0xff, v36.l
	v_and_b16 v36.l, 0xff, v50.h
	v_lshrrev_b32_e32 v50, 24, v50
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v119, 8, v51
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v33.h, 0xff, v49.l
	v_and_b16 v34.l, 0xff, v118.l
	v_and_b16 v34.h, 0xff, v49.h
	v_lshrrev_b32_e32 v49, 24, v49
	v_cmp_ne_u16_e64 s8, 0, v48.l
	v_cmp_ne_u16_e64 s15, 0, v36.l
	v_cmp_ne_u16_e64 s16, 0, v50.l
	v_cmp_ne_u16_e64 s5, 0, v32.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v121, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v36.h, 0xff, v51.l
	v_and_b16 v37.l, 0xff, v119.l
	v_and_b16 v37.h, 0xff, v51.h
	v_lshrrev_b32_e32 v51, 24, v51
	v_cmp_ne_u16_e64 s3, 0, v32.l
	v_cmp_ne_u16_e64 s6, 0, v33.l
	v_cmp_ne_u16_e64 s18, 0, v34.l
	v_cmp_ne_u16_e64 s20, 0, v49.l
	v_cmp_ne_u16_e64 s13, 0, v35.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s12, vcc_lo, s8
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s16, vcc_lo, s16
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v34.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v32, 0, 1, s12
	v_cndmask_b32_e64 v49, 0, 1, s15
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_and_b32 s9, vcc_lo, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s14, 0, v33.h
	v_cmp_ne_u16_e64 s11, 0, v35.l
	v_cmp_ne_u16_e64 s22, 0, v36.h
	v_cmp_ne_u16_e64 s23, 0, v37.l
	v_cmp_ne_u16_e64 s25, 0, v51.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s10, vcc_lo, s6
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s21, vcc_lo, s20
	v_cndmask_b32_e64 v33, 0, 1, s9
	v_cndmask_b32_e64 v36, 0, 1, s7
	v_cndmask_b32_e64 v35, 0, 1, s10
	v_cndmask_b32_e64 v48, 0, 1, s13
	v_cndmask_b32_e64 v51, 0, 1, s18
	v_cndmask_b32_e64 v119, 0, 1, s21
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v49.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v37.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s17, vcc_lo, s14
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s20, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s23
	s_and_b32 s25, vcc_lo, s25
	v_cndmask_b32_e64 v37, 0, 1, s11
	v_cndmask_b32_e64 v50, 0, 1, s17
	v_cndmask_b32_e64 v118, 0, 1, s19
	v_cndmask_b32_e64 v126, 0, 1, s22
	v_cndmask_b32_e64 v128, 0, 1, s25
	v_lshlrev_b16 v32.h, 8, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_mov_b16_e32 v36.l, v48.l
	v_or_b16 v48.h, v35.l, v32.l
	v_mov_b16_e32 v32.l, v119.l
	v_or_b16 v49.h, v34.l, v33.h
	v_mov_b16_e32 v34.l, v51.l
	s_and_b32 s23, vcc_lo, s24
	v_cndmask_b32_e64 v125, 0, 1, s20
	v_cndmask_b32_e64 v127, 0, 1, s23
	v_or_b16 v48.l, v33.l, v32.h
	v_lshlrev_b16 v32.h, 8, v36.l
	v_mov_b16_e32 v33.l, v37.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e64 v35.l, v128.l
	v_mov_b16_e32 v36.l, v118.l
	v_mov_b16_e32 v37.l, v126.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v50.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v127.l
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v125.l
	v_or_b16 v49.l, v33.l, v32.h
	v_or_b16 v32.h, v36.l, v32.l
	v_or_b16 v32.l, v34.l, v33.h
	v_or_b16 v33.h, v35.l, v34.h
	v_or_b16 v33.l, v37.l, v35.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v110.h, v109.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v36, v32, v48, v83
	v_perm_b32 v32, v32, v48, v98
	v_perm_b32 v37, v33, v49, v83
	v_perm_b32 v33, v33, v49, v98
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v109.l, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v36, v70, v36
	ds_bpermute_b32 v32, v73, v32
	ds_bpermute_b32 v37, v70, v37
	ds_bpermute_b32 v33, v73, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v109.h, v108.l
	v_mov_b16_e32 v106.l, v65.l
	v_mov_b16_e32 v106.h, v105.l
	v_mov_b16_e32 v105.l, v65.l
	v_mov_b16_e32 v103.l, v65.l
	v_mov_b16_e32 v103.h, v102.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v35, v99, v120
	v_mul_f32_e32 v48, v99, v121
	v_mul_f32_e32 v38, v99, v38
	v_mul_f32_e32 v34, v99, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v65.h, v116.l
	v_mov_b16_e32 v115.h, v115.l
	v_mov_b16_e32 v115.l, v65.l
	v_mov_b16_e32 v116.l, v65.l
	v_mov_b16_e32 v116.h, v114.l
	v_mov_b16_e32 v112.h, v111.l
	v_mov_b16_e32 v111.l, v65.l
	v_mov_b16_e32 v111.h, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_dual_mul_f32 v46, v99, v46 :: v_dual_mul_f32 v103, v38, v103
	v_dual_mul_f32 v41, v99, v41 :: v_dual_mul_f32 v106, v34, v106
	v_dual_mul_f32 v34, v35, v105 :: v_dual_mul_f32 v35, v48, v104
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v104, v32, v36, s0
	v_cndmask_b32_e64 v36, v36, v32, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.l, v65.l
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v113.l, v65.l
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	v_dual_mul_f32 v40, v99, v40 :: v_dual_mul_f32 v41, v41, v115
	v_mul_f32_e32 v43, v99, v43
	v_dual_mul_f32 v44, v99, v44 :: v_dual_mul_f32 v51, v46, v111
	v_dual_mul_f32 v45, v99, v45 :: v_dual_and_b32 v46, 1, v36
	v_mul_f32_e32 v42, v99, v42
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v105, v33, v37, s0
	v_cndmask_b32_e64 v32, v37, v33, s0
	v_and_b32_e32 v33, 1, v104
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v47, v99, v47 :: v_dual_mul_f32 v40, v40, v65
	v_dual_mul_f32 v50, v43, v114 :: v_dual_mul_f32 v43, v45, v112
	v_dual_mul_f32 v49, v42, v116 :: v_dual_mul_f32 v42, v44, v113
	v_dual_mul_f32 v107, v124, v107 :: v_dual_mul_f32 v44, v122, v109
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v33
	v_cmp_eq_u32_e64 s8, 1, v46
	v_and_b32_e32 v48, 1, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v110.l, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v40, s27
	v_cndmask_b32_e64 v113, 0xff800000, v44, s8
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 1, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v108.l, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v110, v47, v110 :: v_dual_and_b32 v47, 0x100, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, v113, v109, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v37, 0x100, v104
	v_and_b32_e32 v125, 0x10000, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v34, s6
	v_cndmask_b32_e64 v34, v109, v113, s0
	ds_bpermute_b32 v117, v72, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v102.l, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v99, v39 :: v_dual_and_b32 v38, 1, v105
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v37
	v_cmp_eq_u32_e64 s14, 0, v47
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v118, v74, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v123, v108
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v108, 0x100, v32
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v102, v39, v102 :: v_dual_and_b32 v39, 0x100, v105
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, v41, 0xff800000, s28
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s24, 1, v38
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, v45, 0xff800000, s14
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s30, s30, s57
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s26, 0, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, s30, v53, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v42, s24
	v_cndmask_b32_e64 v37, v111, v115, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, s30, v84, 1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v131, v117, v117
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 0, v108
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, v43, 0xff800000, s26
	v_cndmask_b32_e64 v38, v116, v112, s0
	ds_bpermute_b32 v120, v74, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, s30, v54, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, v35, 0xff800000, s5
	v_cndmask_b32_e64 v35, v115, v111, s0
	v_cndmask_b32_e64 v39, v112, v116, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, v108, v114, s0
	ds_bpermute_b32 v119, v72, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, s30, v85, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v114, v108, s0
	ds_bpermute_b32 v121, v72, v38
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s4
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v122, v74, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v35, s4
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v123, v72, v40
	ds_bpermute_b32 v124, v74, v41
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v135, v109, v111 :: v_dual_and_b32 v126, 0x1000000, v32
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v33, s[40:43], 0 offen
	buffer_load_b128 v[32:35], v34, s[40:43], 0 offen
	buffer_load_b128 v[45:48], v38, s[40:43], 0 offen
	buffer_load_b128 v[37:40], v37, s[40:43], 0 offen
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s3, 0, v125
	v_and_b32_e32 v125, 0x10000, v105
	v_and_b32_e32 v127, 0x10000, v36
	v_cmp_eq_u32_e64 s30, 0, v126
	v_and_b32_e32 v36, 0x1000000, v36
	v_and_b32_e32 v126, 0x10000, v104
	v_cmp_eq_u32_e64 s31, 0, v125
	v_cmp_eq_u32_e64 s33, 0, v127
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v130, v120, v119, s1
	v_cndmask_b32_e64 v119, v119, v120, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s35, 0, v36
	v_cmp_eq_u32_e64 s36, 0, v126
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, v102, 0xff800000, s30
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v120, v122, v121, s1
	v_cndmask_b32_e64 v121, v121, v122, s1
	v_cndmask_b32_e64 v107, v107, 0xff800000, s33
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v122, v124, v123, s1
	v_cndmask_b32_e64 v123, v123, v124, s1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v124, v118, v118 :: v_dual_and_b32 v105, 0x1000000, v105
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v106, 0xff800000, s35
	v_cndmask_b32_e64 v106, v49, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v49, 0x1000000, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, v103, 0xff800000, s3
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s34, 0, v105
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, v51, 0xff800000, s31
	v_cndmask_b32_e64 v127, v107, v106, s0
	v_cndmask_b32_e64 v128, v106, v107, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, v110, 0xff800000, s34
	v_cndmask_b32_e64 v51, v103, v125, s0
	v_cndmask_b32_e64 v126, v125, v103, s0
	ds_bpermute_b32 v49, v72, v127
	v_cndmask_b32_e64 v129, v50, 0xff800000, s37
	v_cndmask_b32_e64 v104, v102, v105, s0
	v_cndmask_b32_e64 v110, v105, v102, s0
	ds_bpermute_b32 v50, v74, v128
	ds_bpermute_b32 v51, v72, v51
	ds_bpermute_b32 v126, v74, v126
	ds_bpermute_b32 v104, v72, v104
	ds_bpermute_b32 v110, v74, v110
	v_cndmask_b32_e64 v127, v36, v129, s0
	v_cndmask_b32_e64 v128, v129, v36, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v129, v112, v114
.Ltmp8:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v101
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v127, v72, v127
	ds_bpermute_b32 v128, v74, v128
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v50, v49, s1
	v_cndmask_b32_e64 v134, v49, v50, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v121, v122, v123
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v110, v104, s1
	v_cndmask_b32_e64 v104, v104, v110, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v110, v131, v124
	v_max3_f32 v124, v119, v133, v134
	v_max3_f32 v131, v116, v108, v103
	v_max3_f32 v50, v51, v126, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v110, v110, v130, v124
	v_max3_f32 v124, v115, v107, v36
	v_max3_f32 v49, v49, v50, v104
	v_max3_f32 v50, v127, v128, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v49, v110, v50, v49
	v_max3_f32 v50, v124, v131, v102
	v_max3_f32 v110, v125, v105, v113
	v_max3_f32 v124, v135, v106, v136
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, v128, v127, s1
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v131, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v124, v110, v50
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v110, v50, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v124, v131, v131
.Ltmp17:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v118, v117, s1
	v_cndmask_b32_e64 v117, v117, v118, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v50, v101, v50, v110
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v110, v49, v124 :: v_dual_max_f32 v49, v86, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v50
	v_sub_f32_e32 v36, v36, v50
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v67, v110
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v124, v101, v50
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v109, v50
	v_sub_f32_e32 v111, v111, v50
	v_sub_f32_e32 v106, v106, v50
	v_sub_f32_e32 v120, v120, v67
	v_sub_f32_e32 v121, v121, v67
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v118, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, v126, v51, s1
	v_cndmask_b32_e64 v126, v51, v126, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v121, v121
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v50
	v_sub_f32_e32 v114, v114, v50
	v_sub_f32_e32 v125, v125, v50
	v_sub_f32_e32 v105, v105, v50
	v_sub_f32_e32 v113, v113, v50
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v101, 0, v118, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v115, v50
	v_sub_f32_e32 v107, v107, v50
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s11
	v_cndmask_b32_e64 v121, 0, v121, s13
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v116, v50
	v_sub_f32_e32 v102, v102, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v111, v111
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v120, v120, v121 :: v_dual_max_f32 v49, v49, v110
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v131, v67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, v127, v128, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v67
	v_sub_f32_e32 v127, v130, v67
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v135, v86, v49 :: v_dual_sub_f32 v128, v133, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v67
	v_sub_f32_e32 v130, v134, v67
	v_sub_f32_e32 v131, v136, v67
	v_sub_f32_e32 v110, v110, v67
	v_sub_f32_e32 v122, v122, v67
	v_sub_f32_e32 v123, v123, v67
	v_sub_f32_e32 v124, v124, v67
	v_sub_f32_e32 v126, v126, v67
	v_sub_f32_e32 v132, v132, v67
	v_sub_f32_e32 v104, v104, v67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v104, v104
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s7
	v_cndmask_b32_e64 v117, 0, v117, s9
	v_cndmask_b32_e64 v127, 0, v127, s10
	v_cndmask_b32_e64 v119, 0, v119, s12
	v_cndmask_b32_e64 v128, 0, v128, s17
	v_cndmask_b32_e64 v130, 0, v130, s18
	v_cndmask_b32_e64 v131, 0, v131, s19
	v_cndmask_b32_e64 v110, 0, v110, s21
	v_cndmask_b32_e64 v122, 0, v122, s15
	v_cndmask_b32_e64 v123, 0, v123, s16
	v_cndmask_b32_e64 v124, 0, v124, s20
	v_cndmask_b32_e64 v126, 0, v126, s22
	v_cndmask_b32_e64 v132, 0, v132, s23
	v_cndmask_b32_e64 v104, 0, v104, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v108, v108, v50 :: v_dual_add_f32 v117, v118, v117
	v_sub_f32_e32 v103, v103, v50
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v118, v127, v119 :: v_dual_add_f32 v119, v128, v130
	v_dual_add_f32 v110, v131, v110 :: v_dual_add_f32 v121, v122, v123
	v_add_f32_e32 v122, v124, v126
	v_add_f32_e32 v104, v132, v104
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v117, v117, v118 :: v_dual_add_f32 v118, v120, v121
	v_dual_add_f32 v110, v119, v110 :: v_dual_mul_f32 v25, v25, v101
	v_dual_add_f32 v104, v122, v104 :: v_dual_mul_f32 v27, v27, v101
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v110, v117, v110 :: v_dual_mul_f32 v31, v31, v101
	v_dual_add_f32 v104, v118, v104 :: v_dual_mul_f32 v29, v29, v101
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	v_exp_f32_e32 v114, v114
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v166, v110, v104 :: v_dual_mul_f32 v17, v17, v101
.Ltmp29:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, v107, 0, s33
	v_cndmask_b32_e64 v107, v111, 0, s28
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v111.l, v109.h
	v_mov_b16_e32 v111.h, v65.l
	v_mov_b16_e32 v110.h, v65.l
	v_mov_b16_e32 v110.l, v107.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v117, v129, 0, s37
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v101 :: v_dual_and_b32 v111, 1, v111
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v19, v101 :: v_dual_and_b32 v110, 1, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, v106, 0, s36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, v103, 0, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v111, v109, v111, 0x7fff
	v_add3_u32 v110, v107, v110, 0x7fff
	v_cmp_o_f32_e64 s3, v107, v107
	v_cmp_o_f32_e64 s7, v109, v109
	v_mov_b16_e32 v107.l, v117.h
	v_mov_b16_e32 v107.h, v65.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, v114, 0, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v125, v125
.Ltmp30:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v167, v166
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.l, v106.h
	v_mov_b16_e32 v109.h, v65.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v26, v26, v101 :: v_dual_and_b32 v107, 1, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v110.l, 0x7fff, v111.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v112, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v112.l, v114.h
	v_mov_b16_e32 v112.h, v65.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v109, 1, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, v105, 0, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v21, v21, v101 :: v_dual_and_b32 v112, 1, v112
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v110.h, 0x7fff, v110.h, s3
	v_add3_u32 v107, v117, v107, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_mov_b16_e32 v117.l, v111.h
	v_mov_b16_e32 v117.h, v65.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, v125, 0, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v109, v106, v109, 0x7fff
	v_cmp_o_f32_e64 s7, v106, v106
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v106.h, 0x7fff, v107.h, s3
	v_and_b32_e32 v107, 1, v117
	v_add3_u32 v112, v114, v112, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_mov_b16_e32 v114.l, v105.h
	v_mov_b16_e32 v114.h, v65.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v106.l, 0x7fff, v109.h, s7
	v_mov_b16_e32 v109.l, v118.h
	v_mov_b16_e32 v109.h, v65.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, v115, 0, s14
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v107, v111, v107, 0x7fff
	v_cndmask_b16 v112.h, 0x7fff, v112.h, s3
	v_cmp_o_f32_e64 s3, v111, v111
	v_and_b32_e32 v111, 1, v114
	v_mov_b16_e32 v117.l, v113.h
	v_and_b32_e32 v109, 1, v109
	v_mov_b16_e32 v114.l, v115.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, v36, 0, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v111, v105, v111, 0x7fff
	v_cmp_o_f32_e64 s7, v105, v105
	v_and_b32_e32 v105, 1, v117
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v23, v23, v101 :: v_dual_and_b32 v114, 1, v114
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v109, v118, v109, 0x7fff
	v_cmp_o_f32_e64 s8, v118, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v102, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.l, 0x7fff, v107.h, s3
	v_cndmask_b16 v107.h, 0x7fff, v111.h, s7
	v_add3_u32 v105, v113, v105, 0x7fff
	v_mov_b16_e32 v111.l, v36.h
	v_mov_b16_e32 v111.h, v65.l
	v_cmp_o_f32_e64 s7, v113, v113
	v_cndmask_b16 v107.l, 0x7fff, v109.h, s8
	v_add3_u32 v109, v115, v114, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v101 :: v_dual_and_b32 v111, 1, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v115, v115
	v_cndmask_b16 v109.l, 0x7fff, v105.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v116, s6
	v_cndmask_b32_e64 v102, v102, 0, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.l, v104.h
	v_mov_b16_e32 v113.h, v65.l
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s3
	v_add3_u32 v111, v36, v111, 0x7fff
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, v108, 0, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v108.l, v105.h
	v_mov_b16_e32 v108.h, v65.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v113, 1, v113
	v_mov_b16_e32 v114.l, v36.h
	v_mov_b16_e32 v114.h, v65.l
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v115.l, v102.h
	v_mov_b16_e32 v116.l, v103.h
	v_mov_b16_e32 v116.h, v65.l
	v_mov_b16_e32 v115.h, v65.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v101
	v_dual_mul_f32 v11, v11, v101 :: v_dual_and_b32 v114, 1, v114
	v_mul_f32_e32 v13, v13, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v104, v113, 0x7fff
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s3
	v_cmp_o_f32_e64 s3, v104, v104
	v_add3_u32 v104, v105, v108, 0x7fff
	v_and_b32_e32 v108, 1, v116
	v_and_b32_e32 v115, 1, v115
	v_add3_u32 v114, v36, v114, 0x7fff
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e64 s6, v105, v105
	v_add3_u32 v36, v103, v108, 0x7fff
	v_add3_u32 v105, v102, v115, 0x7fff
	v_cmp_o_f32_e64 s7, v102, v102
	v_cmp_o_f32_e64 s8, v103, v103
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v102.h, v32.l
	v_mov_b16_e32 v32.l, v41.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v101
	v_mul_f32_e32 v15, v15, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v168.l, 0x7fff, v36.h, s8
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v103.l, v45.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v103.h, v37.l
	v_mov_b16_e32 v102.l, v41.l
	v_add_nc_u32_e32 v41, 0, v75
	v_mov_b16_e32 v37.l, v45.h
	v_mov_b32_e32 v36, v32
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v5, v5, v101 :: v_dual_add_nc_u32 v138, 0, v76
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v45.l, v44.l
	v_mov_b16_e32 v45.h, v35.l
	ds_store_2addr_b64 v41, v[102:103], v[36:37] offset1:8
	v_mov_b16_e32 v102.h, v33.l
	v_mov_b16_e32 v33.l, v42.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v101
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v103.l, v46.l
	v_mov_b16_e32 v103.h, v38.l
	v_mov_b16_e32 v102.l, v42.l
	v_mov_b16_e32 v38.l, v46.h
	v_mov_b32_e32 v37, v33
	v_mov_b16_e32 v41.h, v34.l
	v_mov_b16_e32 v34.l, v43.h
	v_mov_b16_e32 v46.h, v40.l
	v_mov_b16_e32 v40.l, v48.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v101
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v88, v[102:103], v[37:38] offset1:8
	v_mov_b16_e32 v42.l, v47.l
	v_mov_b16_e32 v42.h, v39.l
	v_mov_b16_e32 v41.l, v43.l
	v_mov_b16_e32 v39.l, v47.h
	v_dual_mov_b32 v38, v34 :: v_dual_mul_f32 v3, v3, v101
	v_mov_b32_e32 v36, v40
	v_mov_b16_e32 v46.l, v48.l
	v_mov_b16_e32 v35.l, v44.h
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v111.l, 0x7fff, v113.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v89, v[41:42], v[38:39] offset1:8
	ds_store_2addr_b64 v90, v[45:46], v[35:36] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v138
	ds_load_b128 v[45:48], v91
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v108.h, 0x7fff, v114.h, s5
	v_cndmask_b16 v108.l, 0x7fff, v104.h, s6
	v_cndmask_b16 v168.h, 0x7fff, v105.h, s7
	v_permlanex16_b32 v32, v110, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v104, v106, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v105, v112, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v113, v107, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v114, v109, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v115, v111, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v51, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v32, v110, v63
	v_perm_b32 v34, v32, v110, v64
	v_perm_b32 v35, v104, v106, v63
	v_perm_b32 v36, v104, v106, v64
	v_perm_b32 v37, v105, v112, v63
	v_perm_b32 v38, v105, v112, v64
	v_perm_b32 v39, v113, v107, v63
	v_perm_b32 v40, v113, v107, v64
	v_perm_b32 v102, v114, v109, v63
	v_perm_b32 v103, v114, v109, v64
	v_perm_b32 v104, v115, v111, v63
	v_perm_b32 v105, v115, v111, v64
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[110:113], v138 offset:2048
	ds_load_b128 v[114:117], v91 offset:2048
	ds_load_b128 v[118:121], v92
	ds_load_b128 v[126:129], v92 offset:2048
	ds_load_b128 v[134:137], v138 offset:1024
	ds_load_b128 v[142:145], v94
	ds_load_b128 v[150:153], v94 offset:2048
	ds_load_b128 v[146:149], v95
	ds_load_b128 v[154:157], v95 offset:2048
	ds_load_b128 v[122:125], v93
	ds_load_b128 v[130:133], v93 offset:2048
	ds_load_b128 v[158:161], v138 offset:3072
	ds_load_b128 v[138:141], v96
	ds_load_b128 v[162:165], v96 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v169, v108, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v168, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v86
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v101
	v_mul_f32_e32 v8, v8, v101
	v_mul_f32_e32 v10, v10, v101
	v_mul_f32_e32 v12, v12, v101
	v_mul_f32_e32 v14, v14, v101
	v_mul_f32_e32 v0, v0, v101
	v_mul_f32_e32 v2, v2, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v106, v169, v108, v63
	v_perm_b32 v107, v169, v108, v64
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[41:48], v[33:40], v[24:31]
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v101
	v_mul_f32_e32 v6, v6, v101
	v_mul_f32_e32 v7, v7, v101
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v51, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v108, v32, v168, v63
	v_perm_b32 v109, v32, v168, v64
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v166, v167
.Ltmp35:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[142:149], v[33:40], v[16:23]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[150:157], v[33:40], v[0:7]
	v_mov_b32_e32 v101, v50
	v_wmma_f32_16x16x16_bf16 v[8:15], v[110:117], v[33:40], v[8:15]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v32, v78, v41
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[118:125], v[102:109], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[134:141], v[102:109], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[158:165], v[102:109], v[0:7]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[126:133], v[102:109], v[8:15]
	v_mov_b32_e32 v78, v32
	v_mov_b32_e32 v86, v49
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s69, 32
	s_cmpk_lt_u32 s69, 0x7e0
	s_mov_b32 s69, s3
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s30, s69, s58
	v_or_b32_e32 v38, 2, v82
	v_mad_u64_u32 v[32:33], null, s30, s56, v[52:53]
	v_or_b32_e32 v39, 4, v82
	v_or_b32_e32 v40, 6, v82
	v_or_b32_e32 v41, 8, v82
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v125, s51 :: v_dual_add_nc_u32 v36, 0, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v37, s69, v82, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s29
	v_or_b32_e32 v42, 10, v82
	v_or_b32_e32 v43, 12, v82
	v_or_b32_e32 v44, 14, v82
	v_or_b32_e32 v45, 16, v82
	buffer_load_b128 v[32:35], v32, s[60:63], 0 offen
	v_or_b32_e32 v46, 18, v82
	v_or_b32_e32 v47, 20, v82
	v_or_b32_e32 v48, 22, v82
	v_or_b32_e32 v49, 24, v82
	v_or_b32_e32 v50, 26, v82
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v38, s69, v38, 1
	v_add_lshl_u32 v39, s69, v39, 1
	v_add_lshl_u32 v40, s69, v40, 1
	v_add_lshl_u32 v41, s69, v41, 1
	v_add_lshl_u32 v51, s69, v97, 1
	v_add_lshl_u32 v65, s69, v100, 1
	v_add_lshl_u32 v42, s69, v42, 1
	v_add_lshl_u32 v43, s69, v43, 1
	v_add_lshl_u32 v44, s69, v44, 1
	v_add_lshl_u32 v45, s69, v45, 1
	v_add_lshl_u32 v46, s69, v46, 1
	v_add_lshl_u32 v47, s69, v47, 1
	v_add_lshl_u32 v48, s69, v48, 1
	v_add_lshl_u32 v49, s69, v49, 1
	v_add_lshl_u32 v50, s69, v50, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v124, s50 :: v_dual_mov_b32 v121, s47
	v_dual_mov_b32 v122, s48 :: v_dual_mov_b32 v119, s45
	v_mov_b32_e32 v120, s46
	v_mov_b32_e32 v118, s44
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v77, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v116, v37, s[64:67], 0 offen
	buffer_load_u16 v115, v38, s[64:67], 0 offen
	buffer_load_u16 v114, v39, s[64:67], 0 offen
	buffer_load_u16 v113, v40, s[64:67], 0 offen
	buffer_load_u16 v112, v41, s[64:67], 0 offen
	buffer_load_u16 v111, v42, s[64:67], 0 offen
	buffer_load_u16 v110, v43, s[64:67], 0 offen
	buffer_load_u16 v109, v44, s[64:67], 0 offen
	buffer_load_u16 v108, v45, s[64:67], 0 offen
	buffer_load_u16 v107, v46, s[64:67], 0 offen
	buffer_load_u16 v106, v47, s[64:67], 0 offen
	buffer_load_u16 v105, v48, s[64:67], 0 offen
	buffer_load_u16 v104, v49, s[64:67], 0 offen
	buffer_load_u16 v103, v50, s[64:67], 0 offen
	buffer_load_u16 v102, v51, s[64:67], 0 offen
	buffer_load_u16 v117, v65, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v123, s49 :: v_dual_add_nc_u32 v32, 0, v71
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[48:51], v32 offset1:1
	ds_load_2addr_stride64_b64 v[126:129], v79 offset1:1
	ds_load_2addr_stride64_b64 v[130:133], v80 offset1:1
	ds_load_2addr_stride64_b64 v[134:137], v81 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[55:56], v[118:125] neg_lo:[1,1,0]
	v_mov_b32_e32 v49, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[55:56], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[126:127], v[59:60], v[40:47] neg_lo:[1,1,0]
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[128:129], v[59:60], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, 0
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[130:131], v[57:58], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[132:133], v[57:58], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[134:135], v[61:62], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[136:137], v[61:62], v[32:39] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v48, s69, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v49, 31, v48
	v_add_co_u32 v48, s3, s52, v48
	v_add_co_ci_u32_e64 v49, null, s53, v49, s3
	global_load_b128 v[48:51], v[48:49], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v37, v70, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v65.l
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, s57, v66
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v65.l
	v_mov_b16_e32 v38.h, v65.l
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v68
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s57, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v33
	v_or_b32_e32 v35, 16, v33
	v_or_b32_e32 v34, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s57, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s3, s57, v35
	v_cmp_gt_i32_e64 s1, s57, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v43, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v44, null, v37, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v49, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v50, s6, v24, v37, v24
	v_fma_f32 v52, -v41, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v42, v46, 1.0
	v_div_scale_f32 v51, s7, v27, v37, v27
	v_fma_f32 v54, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v46, v53, v46
	v_fma_f32 v55, -v44, v48, 1.0
	v_div_scale_f32 v52, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v49, v45
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_fmac_f32 v48, v55, v48
	v_mul_f32_e32 v54, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v59, -v41, v53, v49
	v_div_scale_f32 v66, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v42, v54, v50
	v_mul_f32_e32 v55, v51, v47
	v_fmac_f32_e32 v53, v59, v45
	v_div_scale_f32 v56, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v54, v60, v46
	v_fma_f32 v59, -v52, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v41, v53, v49
	v_rcp_f32_e32 v49, v66
	v_mul_f32_e32 v57, v56, v48
	v_fma_f32 v42, -v42, v54, v50
	v_fma_f32 v61, -v43, v55, v51
	v_div_fmas_f32 v41, v41, v45, v53
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v58, v59, v58
	v_div_fmas_f32 v42, v42, v46, v54
	v_fma_f32 v62, -v44, v57, v56
	v_fmac_f32_e32 v55, v61, v47
	v_div_fixup_f32 v25, v41, v37, v25
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v66, v49, 1.0
	v_fma_f32 v43, -v43, v55, v51
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, s9, v29, v37, v29
	v_fmac_f32_e32 v49, v42, v49
	v_fmac_f32_e32 v57, v62, v48
	v_div_fmas_f32 v41, v43, v47, v55
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v47.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v44, v57, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v43, v44, v48, v57
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v41, v37, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v43, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v24, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v25, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v45, v58
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s7, v28, v37, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v26.h
	v_add3_u32 v27, v44, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v25.h, v65.l
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v40, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v39, v49
	v_fma_f32 v43, -v52, v41, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v25
	v_cndmask_b16 v24.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v27, v26, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v66, v42, v39
	v_fmac_f32_e32 v41, v43, v58
	v_div_scale_f32 v43, null, v37, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v38, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v40, v49
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	v_fma_f32 v44, -v52, v41, v45
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v39, -v66, v42, v39
	v_div_scale_f32 v40, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v44, v58, v41
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v49, v42
	v_fma_f32 v42, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v40
	v_div_fixup_f32 v29, v41, v37, v29
	v_div_fixup_f32 v28, v39, v37, v28
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v39, s7, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v27, v39, v38
	v_fma_f32 v26, -v40, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.h, v65.l
	v_mov_b16_e32 v47.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v27, v39
	v_fmac_f32_e32 v45, v26, v45
	v_div_scale_f32 v26, s8, v30, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v44, v38
	v_div_scale_f32 v44, null, v37, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v28, v28
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v43, v27, v39
	v_div_scale_f32 v43, null, v37, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v28, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v39, v38, v27
	v_rcp_f32_e32 v38, v43
	v_mul_f32_e32 v41, v26, v45
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v27, v37, v31
	v_fma_f32 v46, -v40, v41, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v46, v45 :: v_dual_and_b32 v46, 1, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v40, v41, v26
	v_rcp_f32_e32 v40, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v46, 0x7fff
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v44, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v31, v40
	v_div_fmas_f32 v26, v26, v45, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v45.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v26, v37, v30
	v_div_scale_f32 v30, s7, v17, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v30, v40
	v_div_scale_f32 v31, s8, v16, v37, v16
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v65.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v44, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v31, v38
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v39
	v_cmp_o_f32_e64 s7, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v40
	v_div_scale_f32 v46, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v42.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v44, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v30, v46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v43, v47, v31
	v_div_scale_f32 v44, null, v37, v37, v18
	v_div_fmas_f32 v40, v27, v40, v41
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v45, v38
	v_rcp_f32_e32 v41, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	s_mov_b32 s10, 0x7ffffffe
	v_fma_f32 v31, -v43, v47, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v65.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v31, v31, v38, v47
	v_fma_f32 v38, -v46, v30, 1.0
	v_div_scale_f32 v28, vcc_lo, v19, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v31, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v38, v30
	v_fma_f32 v31, -v44, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v39, 0x7fff
	v_mov_b16_e32 v38.h, v65.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v16, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_mul_f32 v16, v28, v30 :: v_dual_fmac_f32 v41, v31, v41
	v_div_scale_f32 v31, s8, v18, v37, v18
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v39.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v46, v16, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v44, v42, v31
	v_fma_f32 v28, -v46, v16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v29, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v40, v41
	v_div_scale_f32 v40, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v28, v30, v16
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v44, v42, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v40
	v_div_scale_f32 v31, null, v37, v37, v20
	v_div_fmas_f32 v28, v28, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_mov_b16_e32 v41.h, v65.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v28, v37, v18
	v_fma_f32 v28, -v40, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v21, v37, v21
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v28, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v16, v37, v19
	v_rcp_f32_e32 v19, v31
	v_fma_f32 v43, -v40, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v30
	v_div_scale_f32 v43, null, v37, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v65.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v31, v19, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v42, v28
	v_rcp_f32_e32 v40, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v19, v29, v19
	v_div_scale_f32 v29, s8, v20, v37, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v38.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v39
	v_add3_u32 v41, v18, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v28, v30, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v18, v18
	v_mov_b16_e32 v18.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v28, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v31, v39, v29
	v_fmac_f32_e32 v39, v44, v19
	v_div_scale_f32 v44, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v31, v39, v29
	v_rcp_f32_e32 v30, v44
	v_fma_f32 v29, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, v29, v40
	v_fma_f32 v29, -v44, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v29, v30
	v_div_fmas_f32 v19, v17, v19, v39
	v_div_scale_f32 v28, vcc_lo, v23, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v38.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v29, s7, v22, v37, v22
	v_div_fixup_f32 v19, v19, v37, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v21, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v21, v28, v40 :: v_dual_mul_f32 v38, v29, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v65.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v18.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v21, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v21, v31, v40 :: v_dual_and_b32 v18, 1, v18
	v_fma_f32 v31, -v44, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v18, v20, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v43, v21, v28
	v_fmac_f32_e32 v38, v31, v30
	v_div_scale_f32 v31, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v28, v40, v21
	v_fma_f32 v28, -v44, v38, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v29, v31
	v_div_scale_f32 v40, null, v37, v37, v8
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v28, v28, v30, v38
	v_rcp_f32_e32 v30, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v39, 0x7fff
	v_mov_b16_e32 v39.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v22, v28, v37, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v28, -v31, v29, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v21, v37, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v22, s7, v9, v37, v9
	v_fma_f32 v23, -v40, v30, 1.0
	v_fmac_f32_e32 v29, v28, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v23, v30
	v_mul_f32_e32 v28, v22, v29
	v_div_scale_f32 v23, s8, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v38, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v23, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v40, v41, v23
	v_div_scale_f32 v38, null, v37, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v42, v30
	v_div_scale_f32 v42, null, v37, v37, v10
	v_rcp_f32_e32 v31, v38
	v_div_fmas_f32 v22, v22, v29, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v40, v41, v23
	v_rcp_f32_e32 v29, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v22, v37, v9
	v_div_fmas_f32 v22, v23, v30, v41
	v_div_scale_f32 v23, vcc_lo, v11, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v65.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v22, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v42, v29, 1.0
	v_div_scale_f32 v22, s8, v10, v37, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v65.l
	v_mov_b16_e32 v41.l, v8.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v22, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v19, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v38, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v39, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v21, v21
	v_and_b32_e32 v21, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v19, v23, v31 :: v_dual_and_b32 v30, 1, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v38, v19, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v39, v31
	v_fma_f32 v39, -v42, v40, v22
	v_fma_f32 v23, -v38, v19, v23
	v_div_scale_f32 v38, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v39, v29
	v_div_scale_f32 v39, null, v37, v37, v12
	v_div_fmas_f32 v19, v23, v31, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v38
	v_fma_f32 v22, -v42, v40, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v31, v39
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v19, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v29, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v8, v30, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v20, -v38, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v65.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v39, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v20, vcc_lo, v13, v37, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v19, v31
	v_div_scale_f32 v19, s7, v12, v37, v12
	v_mul_f32_e32 v8, v20, v23
	v_div_fixup_f32 v10, v22, v37, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v19, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v38, v8, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v8, v30, v23
	v_div_scale_f32 v30, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v38, v8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v8, v20, v23, v8
	v_rcp_f32_e32 v20, v30
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v23, null, v37, v37, v14
	v_div_fmas_f32 v19, v19, v31, v29
	v_div_fixup_f32 v8, v8, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v22, v10, v22, 0x7fff
	v_mov_b16_e32 v29.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v19, v37, v12
	v_rcp_f32_e32 v12, v23
	v_fma_f32 v13, -v30, v20, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v20, v13, v20
	v_div_scale_f32 v13, s7, v15, v37, v15
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v11.l, v8.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v12, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v13, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v29.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v19, v12
	v_div_scale_f32 v19, s8, v14, v37, v14
	v_fma_f32 v38, -v30, v31, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s9, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v19, v12
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v31, v38, v20
	v_div_scale_f32 v38, null, v37, v37, v1
	v_fma_f32 v39, -v23, v22, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v11, v8, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v8, -v30, v31, v13
	v_rcp_f32_e32 v13, v38
	v_div_scale_f32 v30, null, v37, v37, v0
	v_dual_fmac_f32 v22, v39, v12 :: v_dual_and_b32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v20, v31
	v_rcp_f32_e32 v20, v30
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v22, v19
	v_fma_f32 v23, -v38, v13, 1.0
	v_div_fixup_f32 v8, v8, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v31, null, v37, v37, v3
	v_div_fmas_f32 v12, v19, v12, v22
	v_fmac_f32_e32 v13, v23, v13
	v_div_scale_f32 v15, vcc_lo, v1, v37, v1
	v_fma_f32 v19, -v30, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v12, v37, v14
	v_div_scale_f32 v14, s8, v0, v37, v0
	v_mul_f32_e32 v12, v15, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v20, v19, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v19.h, v65.l
	v_cndmask_b16 v11.l, 0x7fff, v29.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v12, v15
	v_mul_f32_e32 v23, v14, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v8.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v22, v13
	v_fma_f32 v22, -v30, v23, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v29.l, v10.h
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v15, -v38, v12, v15
	v_fmac_f32_e32 v23, v22, v20
	v_rcp_f32_e32 v22, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v8, v19, 0x7fff
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v15, v13, v12
	v_fma_f32 v13, -v30, v23, v14
	v_div_scale_f32 v14, null, v37, v37, v2
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v1, v12, v37, v1
	v_div_fmas_f32 v13, v13, v20, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v15, -v31, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v8, v14
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v13, v37, v0
	v_fmac_f32_e32 v22, v15, v22
	v_div_scale_f32 v13, s7, v3, v37, v3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v15, v10, v29, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v12, v13, v22
	v_fma_f32 v20, -v14, v8, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v1.h
	v_mov_b16_e32 v29.h, v65.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v23, -v31, v12, v13
	v_fmac_f32_e32 v8, v20, v8
	v_div_scale_f32 v20, s8, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v12, v23, v22 :: v_dual_and_b32 v15, 1, v29
	v_mul_f32_e32 v23, v20, v8
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.l, v0.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v13, -v31, v12, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v14, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v15, v1, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v13, v22, v12
	v_div_scale_f32 v13, null, v37, v37, v5
	v_dual_fmac_f32 v23, v29, v8 :: v_dual_and_b32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v12, v37, v3
	v_rcp_f32_e32 v12, v13
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v14, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v0, v10, 0x7fff
	v_mov_b16_e32 v29.h, v65.l
	v_mov_b16_e32 v14.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v8, v23
	v_div_scale_f32 v8, null, v37, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v1, v37, v2
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v3, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v3, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v0.l, 0x7fff, v10.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v13, v12, 1.0
	v_div_scale_f32 v15, null, v37, v37, v7
	v_div_scale_f32 v23, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v12, v10, v12
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_fma_f32 v20, -v8, v3, 1.0
	v_rcp_f32_e32 v22, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v10, v12
	v_div_scale_f32 v31, s7, v4, v37, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v29.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v13, v30, v10
	v_fmac_f32_e32 v3, v20, v3
	v_rcp_f32_e32 v20, v23
	v_fma_f32 v38, -v15, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v14, 1, v14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v39, v12
	v_mul_f32_e32 v40, v31, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v38, v22
	v_div_scale_f32 v38, s8, v7, v37, v7
	v_fma_f32 v39, -v8, v40, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v23, v20, 1.0
	v_dual_mul_f32 v42, v38, v22 :: v_dual_and_b32 v29, 1, v29
	v_fma_f32 v10, -v13, v30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v41, v20
	v_div_scale_f32 v41, s9, v6, v37, v6
	v_fmac_f32_e32 v40, v39, v3
	v_fma_f32 v13, -v15, v42, v38
	v_div_fmas_f32 v10, v10, v12, v30
	v_mul_f32_e32 v39, v41, v20
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v8, -v8, v40, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v10, v37, v5
	v_fma_f32 v12, -v23, v39, v41
	v_fmac_f32_e32 v42, v13, v22
	v_div_fmas_f32 v3, v8, v3, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v2, v14, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v39, v12, v20
	v_fma_f32 v2, -v15, v42, v38
	v_div_fixup_f32 v3, v3, v37, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v29, v1, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v4, -v23, v39, v41
	v_div_fmas_f32 v2, v2, v22, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v65.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v4, v20, v39
	v_div_fixup_f32 v2, v2, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v65.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v3.h
	v_mov_b16_e32 v6.h, v65.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v65.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v10.l, v2.h
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v4.h
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v1, v3, v6, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v15, v19, v9, s0
	v_cndmask_b32_e64 v9, v9, v19, s0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v36, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v6, 1, v12
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v3, v3
	v_add3_u32 v3, v4, v6, 0x7fff
	v_add3_u32 v5, v2, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	v_cmp_o_f32_e64 s9, v4, v4
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_cndmask_b32_e64 v4, v24, v26, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s9
	v_cndmask_b32_e64 v6, v25, v27, s0
	v_cndmask_b32_e64 v7, v18, v16, s0
	v_cndmask_b32_e64 v10, v16, v18, s0
	v_cndmask_b32_e64 v13, v17, v28, s0
	v_cndmask_b32_e64 v16, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v12, v28, v17, s0
	v_cndmask_b32_e64 v14, v11, v21, s0
	v_cndmask_b32_e64 v11, v21, v11, s0
	v_cndmask_b32_e64 v17, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v3, v26, v24, s0
	v_cndmask_b32_e64 v5, v27, v25, s0
	v_permlanex16_b32 v2, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v3, v63
	v_perm_b32 v1, v2, v3, v64
	v_perm_b32 v2, v4, v5, v63
	v_perm_b32 v3, v4, v5, v64
	v_perm_b32 v4, v6, v7, v63
	v_perm_b32 v5, v6, v7, v64
	v_perm_b32 v6, v8, v12, v63
	v_perm_b32 v7, v8, v12, v64
	v_perm_b32 v12, v13, v16, v63
	v_perm_b32 v13, v13, v16, v64
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v14, v63
	v_perm_b32 v9, v10, v14, v64
	v_perm_b32 v10, v11, v15, v63
	v_perm_b32 v11, v11, v15, v64
	v_perm_b32 v14, v18, v17, v63
	v_perm_b32 v15, v18, v17, v64
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v35, 1
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s55, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s54
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp36:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 170
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 170
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11320
; TotalNumSgprs: 72
; NumVgprs: 170
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 170
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     170
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
