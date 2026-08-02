	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v0
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v43, 0x6420 :: v_dual_lshlrev_b32 v38, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s4, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s5, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v36, 16, v38
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s6, s5, s4
	v_dual_mov_b32 v44, 0x7531 :: v_dual_and_b32 v41, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v39
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v51, 1, v0
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[52:55], s[0:1], 0x30
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v50, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s56, v37
	s_mul_i32 s2, s56, s6
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s26, s56, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	v_dual_mov_b32 v31, v24 :: v_dual_mov_b32 v46, 0x7632
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v47, 56, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v1, v36, s2
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s26
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_and_b32 v53, 24, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v49, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v30, v24
	v_mov_b32_e32 v23, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v56, 1, v47
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v57, v51, 30, v49
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v37, 16, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_xor_b32_e32 v53, v38, v53
	v_and_b32_e32 v38, 48, v38
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v67, s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v1
	s_load_b64 s[6:7], s[0:1], 0x70
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v2, 1, v67
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v49, 1, v49
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v52, 7, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0x3ffffff8
	v_xor_b32_e32 v38, v38, v47
	s_sub_i32 s5, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v50
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v42, v1, s[60:63], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v73, s3, 10, v49
	v_or_b32_e32 v49, s4, v56
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v71, 2, v57
	v_cndmask_b32_e64 v43, 0x7531, v43, s1
	v_cndmask_b32_e64 v44, 0x6420, v44, s1
	v_or_b32_e32 v37, s4, v37
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v54, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v43, v43, 8, v43
	v_mov_b32_e32 v18, v24
	v_lshl_or_b32 v44, v44, 8, v44
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v59, 24, v51
	v_and_b32_e32 v43, 0x750031, v43
	v_lshl_or_b32 v77, v52, 9, v38
	v_or_b32_e32 v38, 3, v49
	v_mov_b32_e32 v22, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v75, 4, v71
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[56:57], null, s56, v37, v[36:37]
	v_lshl_or_b32 v36, v43, 4, v43
	v_and_b32_e32 v37, 0x750031, v44
	v_bfe_i32 v55, v0, 3, 1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v69, 6, v50
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v50, 48, v54
	v_lshl_or_b32 v41, v41, 5, v59
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v39, s7, v39
	v_mul_lo_u32 v38, s57, v38
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 818 13                        ; attention.py:818:13
	s_mul_i32 s5, s6, s5
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v68, 16, v0
	v_dual_mov_b32 v5, v24 :: v_dual_and_b32 v84, 0x7050301, v36
	v_lshl_or_b32 v36, v37, 4, v37
	s_mul_i32 s0, s0, s59
	s_lshl_b32 s5, s5, 2
	v_dual_mov_b32 v11, v24 :: v_dual_and_b32 v54, 0x210, v55
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v74, 0, v53
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v80, 0, v41
	v_xor_b32_e32 v55, 8, v53
	v_and_or_b32 v72, v51, 60, v69
	v_lshl_or_b32 v47, v52, 6, v50
	v_xor_b32_e32 v50, 8, v41
	v_xor_b32_e32 v51, 16, v41
	v_xor_b32_e32 v53, 24, v41
	v_mul_lo_u32 v41, s57, v49
	s_lshl2_add_u32 s0, s0, s5
	v_dual_mov_b32 v6, v24 :: v_dual_lshlrev_b32 v97, 1, v38
	v_xor_b32_e32 v43, 0x90, v77
	v_xor_b32_e32 v44, 0x120, v77
	v_lshl_add_u32 v85, v39, 2, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v68
	v_dual_mov_b32 v12, v24 :: v_dual_lshlrev_b32 v87, 1, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v89, 0, v44
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v88, 0, v43
	v_xor_b32_e32 v78, v47, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v86, v41, s57, 1
	v_cndmask_b32_e64 v43, 0x1054, v45, s0
	v_cndmask_b32_e64 v44, 0x3276, v46, s0
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v58, 3, v52
	v_dual_mov_b32 v40, v24 :: v_dual_and_b32 v99, 0x7050301, v36
	v_xor_b32_e32 v57, 0x420, v78
	v_xor_b32_e32 v59, 0x410, v78
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s58, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v47, 2, v49
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s57, v58
	v_xor_b32_e32 v58, 0x430, v78
	v_add_nc_u32_e32 v94, 0, v57
	v_add_nc_u32_e32 v96, 0, v59
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v47, s57, v47
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v79, 0, v55
	v_dual_mov_b32 v13, v24 :: v_dual_lshlrev_b32 v70, 4, v52
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v95, 0, v58
	v_xor_b32_e32 v49, 0x1b0, v77
	v_xor_b32_e32 v52, 16, v78
	v_xor_b32_e32 v54, 32, v78
	v_xor_b32_e32 v55, 48, v78
	v_dual_mov_b32 v48, 0xff800000 :: v_dual_mov_b32 v27, v24
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v81, 0, v50
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v83, 0, v53
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v91, 0, v52
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v93, 0, v55
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v82, 0, v51
	v_xor_b32_e32 v76, 64, v72
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_add_nc_u32 v90, 0, v49
	v_add_nc_u32_e32 v92, 0, v54
	v_lshlrev_b32_e32 v98, 1, v47
	v_mov_b16_e32 v103.h, 0
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_movk_i32 s72, 0xffe0
	s_mov_b32 s73, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_lshl_b32 s58, s57, 6
	s_lshl_b32 s56, s56, 5
	s_mov_b32 s68, s52
	s_mov_b32 s69, s53
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	s_mov_b32 s71, s63
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v71, v32
	ds_bpermute_b32 v32, v75, v32
	ds_bpermute_b32 v38, v71, v33
	ds_bpermute_b32 v33, v75, v33
	ds_bpermute_b32 v39, v71, v34
	ds_bpermute_b32 v34, v75, v34
	ds_bpermute_b32 v41, v71, v35
	ds_bpermute_b32 v35, v75, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v57, v32, v37, s0
	v_cndmask_b32_e64 v59, v37, v32, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v42
	v_lshl_or_b32 v42, v43, 8, v43
	v_lshl_or_b32 v43, v44, 8, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v58, v33, v38, s0
	v_cndmask_b32_e64 v60, v38, v33, s0
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v100, s3, v36
	v_and_b32_e32 v32, 0x540054, v42
	v_and_b32_e32 v36, 0x760076, v43
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v61, v34, v39, s0
	v_cndmask_b32_e64 v63, v39, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v62, v35, v41, s0
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_cndmask_b32_e64 v64, v41, v35, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v65, 0x5040504, v32
	v_and_b32_e32 v66, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v56, s26
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v106, v48, v48 :: v_dual_add_nc_u32 v43, v87, v70
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_mov_b32 v33, s45
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[48:51], v41, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	v_dual_mov_b32 v105, v40 :: v_dual_add_nc_u32 v42, v69, v85
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v46, v97, v70
	v_add_nc_u32_e32 v47, 0, v77
	v_cndmask_b32_e64 v53, 0x80000000, v43, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v52, 0x80000000, v42, vcc_lo
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v107, v101, v101 :: v_dual_add_nc_u32 v44, v86, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.h, v103.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.h, v103.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, v103.h
	v_mov_b16_e32 v111.h, v103.h
	v_mov_b16_e32 v113.h, v103.h
	v_mov_b16_e32 v114.h, v103.h
	v_mov_b16_e32 v112.h, v103.h
	v_mov_b16_e32 v108.h, v103.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s72, s72, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[48:49]
	ds_store_b64 v79, v[50:51]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[128:131], v80 offset1:1
	ds_load_2addr_stride64_b64 v[132:135], v81 offset1:1
	ds_load_2addr_stride64_b64 v[136:139], v82 offset1:1
	ds_load_2addr_stride64_b64 v[140:143], v83 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[130:131], v[57:58], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[134:135], v[61:62], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[138:139], v[59:60], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[142:143], v[63:64], v[116:123] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v40, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_mul_f32_e32 v139, v100, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v45, v98, v70
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v45, s4
	v_cndmask_b32_e64 v45, 0x80000000, v46, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v46, 0x80000000, v40, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xd
	buffer_load_u16 v158, v73, s[64:67], 0 offen
	buffer_load_u16 v159, v73, s[64:67], 0 offen offset:4
	buffer_load_u16 v160, v73, s[64:67], 0 offen offset:8
	buffer_load_u16 v161, v73, s[64:67], 0 offen offset:12
	buffer_load_u16 v162, v73, s[64:67], 0 offen offset:16
	buffer_load_u16 v163, v73, s[64:67], 0 offen offset:20
	buffer_load_u16 v164, v73, s[64:67], 0 offen offset:24
	buffer_load_u16 v165, v73, s[64:67], 0 offen offset:28
	buffer_load_u16 v166, v73, s[64:67], 0 offen offset:32
	buffer_load_u16 v167, v73, s[64:67], 0 offen offset:36
	buffer_load_u16 v168, v73, s[64:67], 0 offen offset:40
	buffer_load_u16 v169, v73, s[64:67], 0 offen offset:44
	buffer_load_u16 v170, v73, s[64:67], 0 offen offset:48
	buffer_load_u16 v171, v73, s[64:67], 0 offen offset:52
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[144:147], v52, s[68:71], 0 offen
	buffer_load_b128 v[148:151], v46, s[68:71], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[152:155], v53, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[48:55], v[128:129], v[57:58], v[32:39] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[32:35], v44, s[40:43], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v100, v116
	v_mul_f32_e32 v143, v100, v121
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[48:55], v[132:133], v[61:62], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[136:137], v[59:60], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[140:141], v[63:64], v[48:55] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v100, v119
	v_mul_f32_e32 v140, v100, v118
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v132, v53
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v41, 32, v42
	v_add_nc_u32_e32 v42, 48, v42
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v49
	v_cvt_f32_i32_e32 v44, v48
	v_mul_f32_e32 v132, v100, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v156, 0x80000000, v41 :: v_dual_cndmask_b32 v157, 0x80000000, v42
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[124:127], v43, s[40:43], 0 offen
	buffer_load_b128 v[40:43], v45, s[40:43], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[36:39], v156, s[68:71], 0 offen
	buffer_load_b128 v[128:131], v157, s[68:71], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v85, 0x80, v85
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v70, s58, v70
	v_add_nc_u32_e32 v56, s56, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v52
	v_mul_f32_e32 v133, v100, v48
	v_mul_f32_e32 v136, v100, v54
	v_mul_f32_e32 v137, v100, v55
	v_mul_f32_e32 v142, v100, v120
	v_mul_f32_e32 v157, v100, v123
	v_mul_f32_e32 v156, v100, v122
	v_dual_mul_f32 v135, v100, v52 :: v_dual_add_nc_u32 v104, 0, v78
	v_mul_f32_e32 v134, v100, v50
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_dual_cndmask_b32 v54, 0xff800000, v147 :: v_dual_cndmask_b32 v55, 0xff800000, v144
	s_waitcnt vmcnt(6)
	v_dual_cndmask_b32 v116, 0xff800000, v145 :: v_dual_cndmask_b32 v117, 0xff800000, v150
	v_cndmask_b32_e32 v118, 0xff800000, v151, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v48.h, v33.l
	v_mov_b16_e64 v33.l, v153.h
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v119, 0xff800000, v148 :: v_dual_cndmask_b32 v120, 0xff800000, v149
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v48.l, v153.l
	v_mov_b16_e32 v50.h, v34.l
	v_mov_b16_e64 v34.l, v154.h
	v_mov_b16_e64 v52.l, v155.l
	v_mov_b16_e32 v52.h, v35.l
	v_mov_b16_e64 v35.l, v155.h
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v155, 16, v170
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v55
	v_cmp_neq_f32_e64 s10, 0xff800000, v116
	v_cmp_neq_f32_e64 s5, 0xff800000, v117
	v_cmp_neq_f32_e64 s6, 0xff800000, v119
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v50.l, v154.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, vcc_lo, s8
	s_and_b32 s12, vcc_lo, s10
	s_and_b32 s5, vcc_lo, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v145, 16, v160
	v_lshlrev_b32_e32 v147, 16, v162
	v_lshlrev_b32_e32 v149, 16, v164
	v_lshlrev_b32_e32 v151, 16, v166
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, vcc_lo, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v45.l, v124.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v45.h, v40.l
	v_mov_b16_e32 v40.l, v124.h
	v_mov_b16_e32 v49.l, v125.l
	v_mov_b16_e32 v49.h, v41.l
	v_mov_b16_e32 v41.l, v125.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v124, v73, s[64:67], 0 offen offset:56
	buffer_load_u16 v125, v73, s[64:67], 0 offen offset:60
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v51.l, v126.l
	v_mov_b16_e32 v51.h, v42.l
	v_mov_b16_e32 v42.l, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v126, v100, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v44.h, v32.l
	v_mov_b16_e64 v32.l, v152.h
	v_mov_b16_e32 v53.h, v43.l
	v_mov_b16_e32 v43.l, v127.h
	v_mov_b16_e32 v53.l, v127.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v127, v100, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v44.l, v152.l
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v46, 0xff800000, v146 :: v_dual_cndmask_b32 v121, 0xff800000, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v39, v32 :: v_dual_lshlrev_b32 v144, 16, v159
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v38, 0xff800000, v38 :: v_dual_cndmask_b32 v37, 0xff800000, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v122, 0xff800000, v36 :: v_dual_add_nc_u32 v73, 64, v73
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v123, 0xff800000, v130 :: v_dual_cndmask_b32 v130, 0xff800000, v131
	v_cndmask_b32_e32 v129, 0xff800000, v129, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v131, 16, v158
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v36, v43 :: v_dual_lshlrev_b32 v153, 16, v168
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v46
	v_cmp_neq_f32_e64 s7, 0xff800000, v54
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v32, v116, v55, s1
	v_cndmask_b32_e64 v43, v55, v116, s1
	v_cndmask_b32_e64 v55, v54, v46, s1
	v_cndmask_b32_e64 v46, v46, v54, s1
	v_cndmask_b32_e64 v54, v120, v119, s1
	v_cndmask_b32_e64 v116, v119, v120, s1
	v_cndmask_b32_e64 v119, v118, v117, s1
	v_cndmask_b32_e64 v117, v117, v118, s1
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v47, v[44:45], v[39:40] offset1:8
	v_mov_b32_e32 v40, v33
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v38
	v_cmp_neq_f32_e64 s16, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v128, 0xff800000, v128, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v146, 16, v161
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v88, v[48:49], v[40:41] offset1:8
	v_dual_mov_b32 v41, v34 :: v_dual_lshlrev_b32 v158, 16, v171
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v170, v71, v119
	ds_bpermute_b32 v171, v75, v117
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v121
	v_cmp_neq_f32_e64 s15, 0xff800000, v122
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v118
	v_cmp_neq_f32_e64 s18, 0xff800000, v120
	v_cmp_neq_f32_e64 s19, 0xff800000, v123
	v_cmp_neq_f32_e64 s20, 0xff800000, v130
	v_cmp_neq_f32_e64 s21, 0xff800000, v128
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_cndmask_b32_e64 v118, v37, v122, s1
	v_cndmask_b32_e64 v37, v122, v37, s1
	v_cndmask_b32_e64 v120, v121, v38, s1
	v_cndmask_b32_e64 v38, v38, v121, s1
	v_cndmask_b32_e64 v121, v129, v128, s1
	v_cndmask_b32_e64 v122, v128, v129, s1
	v_cndmask_b32_e64 v128, v130, v123, s1
	v_cndmask_b32_e64 v123, v123, v130, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v44, 0, 1, s12
	v_cndmask_b32_e64 v130, 0, 1, s11
	s_and_b32 s8, vcc_lo, s13
	s_and_b32 s13, vcc_lo, s15
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v89, v[50:51], v[41:42] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v159, 0, 1, s13
	v_mov_b16_e32 v34.l, v44.l
	v_mov_b16_e64 v40.l, v130.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v164, v71, v32
	ds_bpermute_b32 v166, v71, v55
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v41.l, v159.l
	v_lshlrev_b16 v32.h, 8, v34.l
	v_lshlrev_b16 v34.l, 8, v40.l
	s_and_b32 s7, vcc_lo, s7
	v_cndmask_b32_e64 v47, 0, 1, s8
	v_cndmask_b32_e64 v33, 0, 1, s7
	s_and_b32 s9, vcc_lo, s3
	v_or_b16 v130.l, v41.l, v34.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v41, v171, v170, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v152, 16, v167
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v167, v75, v46
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v129
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v39, 0, 1, s9
	v_cndmask_b32_e64 v129, 0, 1, s10
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_bpermute_b32 v175, v75, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v32.l, v33.l
	v_mov_b16_e32 v38.l, v47.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v174, v71, v120
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v33.l, v39.l
	v_mov_b16_e64 v39.l, v129.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v33.h, 8, v38.l
	s_and_b32 s15, vcc_lo, s17
	s_and_b32 s16, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s21
	v_cndmask_b32_e64 v160, 0, 1, s15
	v_or_b16 v129.h, v33.l, v32.l
	v_or_b16 v130.h, v39.l, v33.h
	v_cndmask_b32_e64 v48, 0, 1, s5
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v172, v71, v118
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v33, v167, v166, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v148, 16, v163
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v163, 0, 1, s20
	v_mov_b16_e64 v42.l, v160.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v173, v75, v37
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v45, 0, 1, s14
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v168, v71, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v103.l, v163.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v163, 0x3fb8aa3b, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v150, 16, v165
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v165, v75, v43
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v43.l, v48.l
	v_lshlrev_b16 v34.h, 8, v42.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v128, v71, v128
	ds_bpermute_b32 v178, v75, v123
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v37.l, v45.l
	s_and_b32 s18, vcc_lo, s18
	v_or_b16 v159.h, v43.l, v34.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v43, v175, v174, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v154, 16, v169
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v169, v75, v116
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, vcc_lo, s19
	s_and_b32 s19, vcc_lo, s22
	v_cndmask_b32_e64 v49, 0, 1, s18
	v_cndmask_b32_e64 v51, 0, 1, s16
	v_cndmask_b32_e64 v162, 0, 1, s19
	v_or_b16 v129.l, v37.l, v32.h
	v_cndmask_b32_e64 v50, 0, 1, s6
	v_cndmask_b32_e64 v161, 0, 1, s17
	v_mov_b16_e32 v44.l, v49.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v32, v165, v164, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v46.l, v51.l
	v_mov_b16_e64 v48.l, v162.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v42, v173, v172, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v45.l, v50.l
	v_mov_b16_e64 v47.l, v161.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v90, v[52:53], v[35:36] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.l, 8, v44.l
	v_lshlrev_b16 v35.h, 8, v46.l
	v_lshlrev_b16 v36.l, 8, v48.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v161, v164, v165, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v40, v169, v168, s0
	ds_bpermute_b32 v176, v71, v121
	ds_bpermute_b32 v177, v75, v122
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v159.l, v45.l, v35.l
	v_or_b16 v160.h, v47.l, v35.h
	v_or_b16 v160.l, v103.l, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v165, 0x3fb8aa3b, v41
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v163, v127, v144
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v127, v168, v169, s0
	v_cndmask_b32_e64 v144, v172, v173, s0
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v165, v134, v146
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v146, v160, v130, v84
	v_perm_b32 v130, v160, v130, v99
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[48:51], v104
	ds_load_b128 v[52:55], v91
	ds_load_b128 v[116:119], v94
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v146, v71, v146
	ds_bpermute_b32 v130, v75, v130
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s72, 0x1e0
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v162, 0x3fb8aa3b, v32
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[36:39], v91 offset:2048
	ds_load_b128 v[32:35], v104 offset:2048
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v134, v176, v177, s0
	v_mul_f32_e32 v127, 0x3fb8aa3b, v127
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v162, v126, v131
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v126, v166, v167, s0
	v_mul_f32_e32 v166, 0x3fb8aa3b, v42
	v_cndmask_b32_e64 v131, v170, v171, s0
	v_dual_mul_f32 v167, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v134, 0x3fb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v127, v140, v153 :: v_dual_fmac_f32 v166, v135, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v135, v178, v128, s0
	v_mul_f32_e32 v164, 0x3fb8aa3b, v40
	v_cndmask_b32_e64 v128, v128, v178, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v167, v132, v148
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v132, v174, v175, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v135, 0x3fb8aa3b, v135 :: v_dual_fmac_f32 v164, v133, v145
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v145, v159, v129, v84
	v_perm_b32 v129, v159, v129, v99
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v133, v177, v176, s0
	v_dual_mul_f32 v126, 0x3fb8aa3b, v126 :: v_dual_mul_f32 v131, 0x3fb8aa3b, v131
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v145, v71, v145
	ds_bpermute_b32 v129, v75, v129
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v128, 0x3fb8aa3b, v128 :: v_dual_mul_f32 v133, 0x3fb8aa3b, v133
	v_dual_mul_f32 v147, 0x3fb8aa3b, v161 :: v_dual_mul_f32 v144, 0x3fb8aa3b, v144
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v135, v137, v150 :: v_dual_mul_f32 v132, 0x3fb8aa3b, v132
	v_fmac_f32_e32 v131, v141, v154
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v147, v138, v151
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[40:43], v94 offset:2048
	ds_load_b128 v[120:123], v95
	ds_load_b128 v[44:47], v95 offset:2048
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v133, v136, v149 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v125, 16, v125
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v128, v157, v125
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v125, v130, v146, s0
	v_cndmask_b32_e64 v130, v146, v130, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v134, v156, v124
	v_fmac_f32_e32 v126, v139, v152
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v124, v129, v145, s0
	v_cndmask_b32_e64 v129, v145, v129, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v144, v142, v155
	v_dual_fmac_f32 v132, v143, v158 :: v_dual_and_b32 v139, 0x100, v125
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v143, 0x1000000, v130
	v_and_b32_e32 v141, 1, v130
	v_and_b32_e32 v142, 0x100, v130
	v_and_b32_e32 v130, 0x10000, v130
	v_cmp_eq_u32_e64 s31, 0, v139
	v_and_b32_e32 v137, 0x100, v124
	v_and_b32_e32 v140, 1, v129
	v_and_b32_e32 v145, 0x1000000, v129
	v_and_b32_e32 v146, 0x10000, v129
	v_and_b32_e32 v129, 0x100, v129
	v_cmp_eq_u32_e64 s24, 0, v143
	v_cmp_eq_u32_e64 s3, 1, v141
	v_cmp_eq_u32_e64 s22, 0, v142
	v_cmp_eq_u32_e64 s23, 0, v130
	v_cmp_eq_u32_e64 s21, 0, v129
	v_cmp_eq_u32_e64 s29, 0, v137
	v_cmp_eq_u32_e64 s35, 1, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, v128, 0xff800000, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s27, 0, v146
	v_cmp_eq_u32_e64 s25, 0, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v144, s3
	v_cndmask_b32_e64 v157, v132, 0xff800000, s22
	v_cndmask_b32_e64 v158, v134, 0xff800000, s23
	v_cndmask_b32_e64 v132, v167, 0xff800000, s31
	v_cndmask_b32_e64 v156, v126, 0xff800000, s21
	v_cndmask_b32_e64 v126, v163, 0xff800000, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v136, 1, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v147, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v149, 0x1000000, v124
	v_and_b32_e32 v124, 0x10000, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, v127, 0xff800000, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 1, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, v131, 0xff800000, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v149
	v_cmp_eq_u32_e64 s34, 0, v124
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v124, v129, v157, v158
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v162, s28
	v_cndmask_b32_e64 v142, v156, v126, s0
	v_cndmask_b32_e64 v134, v165, 0xff800000, s33
	v_cndmask_b32_e64 v136, v164, 0xff800000, s34
	v_cndmask_b32_e64 v143, v126, v156, s0
	v_cndmask_b32_e64 v140, v137, v128, s0
	v_cndmask_b32_e64 v141, v128, v137, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v127, v128, v126
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, v157, v132, s0
	v_cndmask_b32_e64 v147, v132, v157, s0
	ds_bpermute_b32 v140, v72, v140
	ds_bpermute_b32 v141, v76, v141
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v138, 1, v125
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, v130, v136, s0
	v_cndmask_b32_e64 v153, v136, v130, s0
	v_cndmask_b32_e64 v154, v159, v134, s0
	v_cndmask_b32_e64 v155, v134, v159, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 1, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v166, s30
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v138, v134, v131, v132
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, v129, v131, s0
	v_cndmask_b32_e64 v145, v131, v129, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v173, v140, v141, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v148, 0x1000000, v125
	v_and_b32_e32 v125, 0x10000, v125
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, v141, v140, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v148
	v_cmp_eq_u32_e64 s36, 0, v125
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v125, v156, v130, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v135, 0xff800000, s37
	v_cndmask_b32_e64 v133, v133, 0xff800000, s36
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v124, v125, v124, v160
	v_max3_f32 v125, v127, v136, v138
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v127, v72, v142
	v_cndmask_b32_e64 v150, v160, v135, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v133, v135, v137
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, v135, v160, s0
	v_cndmask_b32_e64 v148, v158, v133, s0
	v_cndmask_b32_e64 v149, v133, v158, s0
	ds_bpermute_b32 v138, v76, v143
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v124, v125, v139, v124
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v142, v72, v144
	ds_bpermute_b32 v143, v76, v145
	ds_bpermute_b32 v144, v72, v146
	ds_bpermute_b32 v145, v76, v147
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v125, v124, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v146, v72, v150
	ds_bpermute_b32 v147, v76, v151
	ds_bpermute_b32 v150, v72, v152
	ds_bpermute_b32 v151, v76, v153
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v161, v102, v124, v125
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v148, v72, v148
	ds_bpermute_b32 v149, v76, v149
	ds_bpermute_b32 v152, v72, v154
	ds_bpermute_b32 v153, v76, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v133, v161
	v_sub_f32_e32 v124, v126, v161
	v_sub_f32_e32 v128, v128, v161
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v125, v102, v161
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v161
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v128, v128
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v162, v138, v127, s1
	v_cndmask_b32_e64 v163, v127, v138, s1
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v165, v142, v143, s1
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v166, v145, v144, s1
	v_cndmask_b32_e64 v167, v144, v145, s1
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v168, v147, v146, s1
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v170, v151, v150, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, v133, 0, s36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, v150, v151, s1
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v127, v140, v140
.Ltmp18:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v125, v125
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v161
	v_sub_f32_e32 v132, v132, v161
	v_sub_f32_e32 v137, v137, v161
	v_sub_f32_e32 v129, v129, v161
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v115.l, v133.h
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v126, v141, v141
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, v143, v142, s1
	v_cndmask_b32_e64 v169, v146, v147, s1
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v138, v148, v149, v168
	v_max3_f32 v139, v163, v170, v171
.Ltmp22:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, v124, 0, s29
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v161
	v_sub_f32_e32 v135, v135, v161
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v129, v129
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s28
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v126, v127, v126 :: v_dual_and_b32 v115, 1, v115
	v_max3_f32 v127, v165, v166, v167
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v102, v152, v153, v164
.Ltmp24:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v125, 0, v125, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.l, v124.h
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v126, v126, v162, v139
	v_max3_f32 v127, v127, v138, v169
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v161
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, v134, 0, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v109.l, v128.h
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v178, v126, v102, v127
.Ltmp28:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v125 :: v_dual_and_b32 v102, 1, v103
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v136, v136, 0, s34
	v_cndmask_b32_e64 v132, v132, 0, s31
	v_cndmask_b32_e64 v137, 0, v137, s35
	v_cndmask_b32_e64 v129, 0, v129, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v109, 1, v109
	v_mov_b16_e64 v103.l, v134.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s30
	v_cndmask_b32_e64 v135, v135, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v128, v128
	v_mov_b16_e64 v110.l, v136.h
	v_mov_b16_e64 v111.l, v137.h
	v_mov_b16_e64 v113.l, v129.h
	v_add3_u32 v109, v128, v109, 0x7fff
	v_and_b32_e32 v128, 1, v103
	v_mov_b16_e64 v103.l, v132.h
	v_add3_u32 v102, v124, v102, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v125 :: v_dual_and_b32 v111, 1, v111
	v_mul_f32_e32 v26, v26, v125
	v_dual_mul_f32 v31, v31, v125 :: v_dual_and_b32 v110, 1, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, v130, 0, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v114.l, v131.h
	v_and_b32_e32 v113, 1, v113
	v_cndmask_b16 v102.l, 0x7fff, v109.h, s3
	v_and_b32_e32 v109, 1, v103
	v_mov_b16_e64 v103.l, v135.h
	v_cmp_o_f32_e64 s29, v124, v124
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v125
	v_dual_mul_f32 v17, v17, v125 :: v_dual_and_b32 v114, 1, v114
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v136, v136
	v_cmp_o_f32_e64 s28, v134, v134
	v_mov_b16_e64 v112.l, v130.h
	v_add3_u32 v110, v136, v110, 0x7fff
	v_add3_u32 v179, v137, v111, 0x7fff
	v_add3_u32 v181, v129, v113, 0x7fff
	v_add3_u32 v111, v134, v128, 0x7fff
	v_and_b32_e32 v113, 1, v103
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v19, v19, v125 :: v_dual_and_b32 v112, 1, v112
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v131, v131
	v_cmp_o_f32_e64 s31, v132, v132
	v_cmp_o_f32_e64 s33, v133, v133
	v_cmp_o_f32_e64 s34, v135, v135
	v_add3_u32 v114, v131, v114, 0x7fff
	v_add3_u32 v115, v133, v115, 0x7fff
	v_cndmask_b16 v102.h, 0x7fff, v102.h, s29
	v_cndmask_b16 v110.l, 0x7fff, v110.h, s27
	v_add3_u32 v109, v132, v109, 0x7fff
	v_cndmask_b16 v110.h, 0x7fff, v111.h, s28
	v_add3_u32 v113, v135, v113, 0x7fff
	v_add3_u32 v180, v130, v112, 0x7fff
	v_cndmask_b16 v111.l, 0x7fff, v114.h, s30
	v_cndmask_b16 v112.l, 0x7fff, v115.h, s33
	v_permlanex16_b32 v114, v102, s73, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v111.h, 0x7fff, v109.h, s31
	v_permlanex16_b32 v109, v110, s73, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v112.h, 0x7fff, v113.h, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v132, v114, v102, v65
	v_perm_b32 v133, v114, v102, v66
	v_perm_b32 v134, v109, v110, v65
	v_permlanex16_b32 v102, v111, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v109, v110, v66
	v_permlanex16_b32 v109, v112, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v125
	v_mul_f32_e32 v30, v30, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v137, v137
	v_perm_b32 v136, v102, v111, v65
	v_perm_b32 v137, v102, v111, v66
	v_perm_b32 v138, v109, v112, v65
	v_perm_b32 v139, v109, v112, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, v149, v148, s1
	v_cndmask_b32_e64 v175, v148, v149, s1
	v_cndmask_b32_e64 v176, v153, v152, s1
	v_cndmask_b32_e64 v177, v152, v153, s1
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[132:139], v[24:31]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v158, v161
	v_sub_f32_e32 v49, v156, v161
	v_sub_f32_e32 v50, v159, v161
	v_sub_f32_e32 v51, v157, v161
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[140:143], v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v51, v51
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v52, v160, v161
	v_mov_b32_e32 v102, v161
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v130, v130
	v_cmp_o_f32_e64 s37, v129, v129
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[109:112], v104 offset:3072
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v48, v48, 0, s23
	v_cndmask_b32_e64 v49, v49, 0, s21
	v_cndmask_b32_e64 v50, v50, 0, s25
	v_cndmask_b32_e64 v51, v51, 0, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v54.l, 0x7fff, v179.h, s35
	v_mov_b16_e32 v108.l, v48.h
	v_cmp_o_f32_e64 s3, v48, v48
	v_mov_b16_e32 v103.l, v49.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v49, v49
	v_and_b32_e32 v53, 1, v108
	v_cmp_o_f32_e64 s22, v50, v50
	v_cmp_o_f32_e64 s23, v51, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, v52, 0, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v55.l, 0x7fff, v180.h, s36
	v_add3_u32 v48, v48, v53, 0x7fff
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v52, v52
	v_cndmask_b16 v108.l, 0x7fff, v48.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v101
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v53, v178, v53
.Ltmp34:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v106, v53
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v125
	v_mul_f32_e32 v18, v18, v125
	v_mul_f32_e32 v20, v20, v125
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v22, v22, v125 :: v_dual_sub_f32 v157, v165, v48
	v_dual_mul_f32 v8, v8, v125 :: v_dual_sub_f32 v159, v167, v48
	v_mul_f32_e32 v9, v9, v125
	v_mul_f32_e32 v10, v10, v125
	v_mul_f32_e32 v11, v11, v125
	v_dual_mul_f32 v12, v12, v125 :: v_dual_sub_f32 v161, v174, v48
	v_mul_f32_e32 v13, v13, v125
	v_dual_mul_f32 v15, v15, v125 :: v_dual_sub_f32 v156, v164, v48
	v_dual_mul_f32 v1, v1, v125 :: v_dual_sub_f32 v158, v166, v48
	v_dual_mul_f32 v3, v3, v125 :: v_dual_sub_f32 v164, v169, v48
	v_mul_f32_e32 v5, v5, v125
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v53, v107, v53 :: v_dual_and_b32 v106, 1, v103
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[116:123], v[132:139], v[16:23]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v103.l, v50.h
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v107, v172, v48
	v_sub_f32_e32 v117, v173, v48
	v_sub_f32_e32 v118, v162, v48
	v_sub_f32_e32 v119, v163, v48
	v_sub_f32_e32 v120, v170, v48
	v_sub_f32_e32 v121, v171, v48
	v_sub_f32_e32 v122, v176, v48
	v_sub_f32_e32 v123, v177, v48
	v_sub_f32_e32 v162, v175, v48
	v_sub_f32_e32 v163, v168, v48
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v49, v106, 0x7fff
	v_and_b32_e32 v106, 1, v103
	v_mov_b16_e32 v103.l, v51.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v158, v158
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v164, v164
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v54.h, 0x7fff, v49.h, s21
	v_and_b32_e32 v49, 1, v103
	v_add3_u32 v50, v50, v106, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v117, s12
	v_cndmask_b32_e64 v117, 0, v120, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v51, v49, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v107, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v55.h, 0x7fff, v50.h, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v118, s9
	v_cndmask_b32_e64 v107, 0, v119, s7
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v121, s18
	v_cndmask_b32_e64 v119, 0, v122, s5
	v_cndmask_b32_e64 v120, 0, v123, s15
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v156, s13
	v_cndmask_b32_e64 v122, 0, v157, s11
	v_cndmask_b32_e64 v123, 0, v158, s10
	v_cndmask_b32_e64 v156, 0, v159, s8
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v161, s20
	v_cndmask_b32_e64 v158, 0, v162, s19
	v_cndmask_b32_e64 v159, 0, v163, s17
	v_cndmask_b32_e64 v161, 0, v164, s16
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v160, v101, v53
	v_mov_b32_e32 v101, v53
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[32:39], v[132:139], v[8:15]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v51, v106 :: v_dual_add_f32 v35, v50, v107
	v_dual_add_f32 v36, v117, v118 :: v_dual_add_f32 v37, v119, v120
	v_dual_add_f32 v38, v121, v122 :: v_dual_add_f32 v39, v123, v156
.Ltmp36:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[132:139], v[0:7]
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v157, v158 :: v_dual_add_f32 v41, v159, v161
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.l, v52.h
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_add_f32 v35, v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v36, v38, v39 :: v_dual_add_f32 v37, v40, v41
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v162, 1, v103
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v104 offset:1024
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v34, v35
.Ltmp42:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[148:151], v92 offset:2048
	ds_load_b128 v[144:147], v93
	ds_load_b128 v[152:155], v93 offset:2048
	ds_load_b128 v[128:131], v96
	ds_load_b128 v[113:116], v96 offset:2048
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v52, v162, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v181.h, s37
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v160, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v104.h, 0x7fff, v49.h, s23
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v35, v36
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v108.h, 0x7fff, v38.h, s24
	v_permlanex16_b32 v53, v54, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v55, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v104, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v41, v40
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v39, v108, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v32, v53, v54, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v160, 0, v160, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v53, v54, v66
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v34, v42, v55, v65
	v_perm_b32 v35, v42, v55, v66
	v_perm_b32 v36, v37, v104, v65
	v_perm_b32 v37, v37, v104, v66
	v_perm_b32 v38, v39, v108, v65
	v_perm_b32 v39, v39, v108, v66
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp52:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[140:147], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[124:131], v[32:39], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[148:155], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[109:116], v[32:39], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v40, v105, v160
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v37, v71, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v103.h
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v68
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s57, v67
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 16, v36
	v_or_b32_e32 v34, 32, v36
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s57, v36
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 48, v36
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s57, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s3, s57, v34
	v_cmp_gt_i32_e64 s1, s57, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v37, v37, v25
	v_div_scale_f32 v41, null, v37, v37, v24
	v_div_scale_f32 v43, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v39
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v46, null, v37, v37, v26
	v_div_scale_f32 v48, null, v37, v37, v29
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v40, vcc_lo, v25, v37, v25
	v_div_scale_f32 v42, s6, v24, v37, v24
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v52, -v39, v45, 1.0
	v_fma_f32 v55, -v41, v47, 1.0
	v_rcp_f32_e32 v51, v46
	v_rcp_f32_e32 v54, v48
	v_div_scale_f32 v44, s7, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v55, v47
	v_fmac_f32_e32 v45, v52, v45
	v_fma_f32 v55, -v43, v50, 1.0
	v_div_scale_f32 v53, s8, v26, v37, v26
	v_mul_f32_e32 v60, v42, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v58, v40, v45
	v_fma_f32 v57, -v46, v51, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v48, v54, 1.0
	v_fmac_f32_e32 v50, v55, v50
	v_div_scale_f32 v49, null, v37, v37, v28
	v_fma_f32 v55, -v39, v58, v40
	v_dual_fmac_f32 v51, v57, v51 :: v_dual_fmac_f32 v54, v59, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v44, v50
	v_fma_f32 v57, -v41, v60, v42
	v_fmac_f32_e32 v58, v55, v45
	v_rcp_f32_e32 v56, v49
	v_div_scale_f32 v52, s9, v29, v37, v29
	v_mul_f32_e32 v55, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v58, v40
	v_fmac_f32_e32 v60, v57, v47
	v_fma_f32 v57, -v43, v59, v44
	v_fma_f32 v40, -v46, v55, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v39, v39, v45, v58
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v45, v52, v54
	v_fma_f32 v41, -v41, v60, v42
	v_div_fixup_f32 v25, v39, v37, v25
	v_fma_f32 v61, -v49, v56, 1.0
	v_fmac_f32_e32 v55, v40, v51
	v_div_scale_f32 v42, s10, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v47, v60
	v_fmac_f32_e32 v56, v61, v56
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v59, v57, v50
	v_div_fixup_f32 v24, v41, v37, v24
	v_fma_f32 v41, -v46, v55, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v43, v59, v44
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v44, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v40, v50, v59
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v43.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v51, v55
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v103
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v24, v37, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v43, v43
	v_and_b32_e32 v27, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v41, v37, v26
	v_fma_f32 v38, -v48, v45, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v40, 0x7fff
	v_add3_u32 v27, v43, v27, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v45, v38, v54
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v103.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v26.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v24, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v41, -v48, v45, v52
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s7
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_and_b32_e32 v27, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v40.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v54, v45
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v48, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v26, v27, 0x7fff
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v41, v37, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v43, v38, 1.0
	v_dual_mul_f32 v39, v42, v56 :: v_dual_fmac_f32 v38, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v49, v39, v42
	v_div_scale_f32 v41, s7, v31, v37, v31
	v_fmac_f32_e32 v39, v25, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v49, v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v40, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v42, v56, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v39, v37, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v103.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v39, null, v37, v37, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	v_mov_b16_e32 v103.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v29.l, v28.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v46, 1, v103
	v_and_b32_e32 v27, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v46, v26, v46, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v43, v29, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v39, v40, 1.0
	v_dual_fmac_f32 v29, v45, v38 :: v_dual_fmac_f32 v40, v42, v40
	v_div_scale_f32 v42, s8, v30, v37, v30
	v_div_scale_f32 v45, null, v37, v37, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v43, v29, v41
	v_fma_f32 v43, -v44, v48, 1.0
	v_rcp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v38, v29
	v_fmac_f32_e32 v48, v43, v48
	v_div_scale_f32 v38, s7, v17, v37, v17
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v46.h, s9
	v_cmp_o_f32_e64 s9, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v39, v47, v42
	v_fmac_f32_e32 v47, v49, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v39, v47, v42
	v_fma_f32 v39, -v45, v41, 1.0
	v_div_fmas_f32 v29, v29, v40, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v40, v38, v48 :: v_dual_fmac_f32 v41, v39, v41
	v_div_scale_f32 v39, s8, v16, v37, v16
	v_div_fixup_f32 v29, v29, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v44, v40, v38
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v42, v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v30, v48
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v28, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v45, v42, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v103.h
	v_mov_b16_e32 v30.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v44, v40, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v28, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v103
	v_and_b32_e32 v27, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v48, v40
	v_div_scale_f32 v40, null, v37, v37, v19
	v_fma_f32 v39, -v45, v42, v39
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v30, v40
	v_div_fixup_f32 v17, v38, v37, v17
	v_div_fmas_f32 v39, v39, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v27, v29, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v42, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v16, v39, v37, v16
	v_div_scale_f32 v39, null, v37, v37, v18
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v39
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v29.l, v31.h
	v_mov_b16_e32 v29.h, v103.h
	v_mov_b16_e32 v103.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v39, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v27, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v29, v28, v30 :: v_dual_and_b32 v44, 1, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s8, v18, v37, v18
	v_fma_f32 v43, -v40, v29, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v44, v17, v44, 0x7fff
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v45, v41, v38
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v29, v43, v30
	v_div_scale_f32 v43, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v39, v45, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v31, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v17, -v40, v29, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v43
	v_fma_f32 v40, -v42, v46, 1.0
	v_fmac_f32_e32 v45, v47, v38
	v_div_fmas_f32 v17, v17, v30, v29
	v_div_scale_f32 v30, s7, v21, v37, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v39, v45, v41
	v_fmac_f32_e32 v46, v40, v46
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v39, -v43, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v29, v29, v38, v45
	v_mul_f32_e32 v38, v30, v46
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v20, v37, v20
	v_div_fixup_f32 v18, v29, v37, v18
	v_fma_f32 v29, -v42, v38, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v44.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v41, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v29, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v43, v40, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v103.h
	v_mov_b16_e32 v29.l, v41.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v42, v38, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s9
	v_and_b32_e32 v27, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v46, v38
	v_div_scale_f32 v38, null, v37, v37, v23
	v_fma_f32 v31, -v43, v40, v39
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v103
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v29, v38
	v_div_fixup_f32 v21, v30, v37, v21
	v_div_fmas_f32 v28, v31, v28, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v41, v27, 0x7fff
	v_mov_b16_e32 v31.h, v103.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v38, v29, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v40, null, v37, v37, v9
	v_fmac_f32_e32 v29, v30, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, s7, v23, v37, v23
	v_rcp_f32_e32 v27, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v21.h
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v41, -v38, v31, v30
	v_fma_f32 v39, -v28, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v31, v41, v29 :: v_dual_and_b32 v42, 1, v103
	v_fmac_f32_e32 v27, v39, v27
	v_div_scale_f32 v39, s8, v22, v37, v22
	v_div_scale_f32 v41, null, v37, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v21, v42, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v38, v31, v30
	v_fma_f32 v38, -v40, v44, 1.0
	v_rcp_f32_e32 v30, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v29, v31
	v_fmac_f32_e32 v44, v38, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v20, v19, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v39, v27
	v_div_scale_f32 v29, s7, v9, v37, v9
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v41, v30, 1.0
	v_fma_f32 v45, -v28, v19, v39
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_scale_f32 v38, null, v37, v37, v13
	v_dual_fmac_f32 v30, v31, v30 :: v_dual_fmac_f32 v19, v45, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v28, v19, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v19, v28, v27, v19
	v_mul_f32_e32 v27, v29, v44
	v_div_scale_f32 v28, s8, v8, v37, v8
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v22, v19, v37, v22
	v_fma_f32 v23, -v40, v27, v29
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v42.h, s9
	v_cmp_o_f32_e64 s9, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v42, v38
	v_fmac_f32_e32 v27, v23, v44
	v_fma_f32 v20, -v41, v31, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v103.h
	v_cndmask_b16 v19.l, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v27, v29
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v44, v27
	v_fma_f32 v28, -v41, v31, v28
	v_div_scale_f32 v29, null, v37, v37, v11
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_fixup_f32 v9, v27, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v103.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s7, v11, v37, v11
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v9.h
	v_cmp_o_f32_e64 s9, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v39, -v29, v22, v20
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s8, v10, v37, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v39, v30
	v_div_scale_f32 v39, null, v37, v37, v12
	v_mul_f32_e32 v41, v31, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v9, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v39
	v_fma_f32 v29, -v38, v42, 1.0
	v_fma_f32 v43, -v28, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v42, v29, v42 :: v_dual_fmac_f32 v41, v43, v27
	v_div_fixup_f32 v9, v9, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v39, v20, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v40.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v28, v41, v31
	v_div_scale_f32 v28, s7, v13, v37, v13
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v20, v29, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v22, v27, v41
	v_div_scale_f32 v29, s8, v12, v37, v12
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v27, v28, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v22, v37, v10
	v_mul_f32_e32 v30, v29, v20
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v23, v23
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v27, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v103.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v42
	v_fma_f32 v22, -v39, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v38, v27, v28
	v_dual_fmac_f32 v30, v22, v20 :: v_dual_and_b32 v21, 1, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v42, v27
	v_fma_f32 v28, -v39, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v13.h, v103.h
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s7, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 1, v13
	v_cmp_o_f32_e64 s9, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v103
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fma_f32 v31, -v29, v13, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v10, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v28, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v30, v40, 1.0
	v_div_fmas_f32 v10, v10, v23, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v29, v40
	v_div_scale_f32 v29, null, v37, v37, v2
	v_div_fixup_f32 v10, v10, v37, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v31, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s8, v14, v37, v14
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v23, s8, v0, v37, v0
	v_mul_f32_e32 v39, v28, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v20, v39, v28
	v_fmac_f32_e32 v39, v41, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v20, v39, v28
	v_div_scale_f32 v20, s7, v1, v37, v1
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v13, v13, v21, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v20, v40
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v13, v13, v37, v14
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v38.h, s9
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v103.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v20, v40, v21
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v15, v29
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v103.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s7, v2, v37, v2
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_and_b32_e32 v30, 1, v103
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v1, v1
	v_add3_u32 v30, v1, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	v_fmac_f32_e32 v13, v9, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s8
	v_cmp_o_f32_e64 s8, v0, v0
	v_mov_b16_e32 v31.h, v103.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v20, v15, v20
	v_rcp_f32_e32 v21, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_fixup_f32 v2, v10, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_div_scale_f32 v29, s7, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v28, v10, v20
	v_fma_f32 v30, -v3, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v103
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v38, -v1, v28, v10
	v_fmac_f32_e32 v21, v30, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v27, v15, 1.0
	v_div_scale_f32 v30, s8, v7, v37, v7
	v_fmac_f32_e32 v28, v38, v20
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v40, v15
	v_mul_f32_e32 v39, v29, v13
	v_div_scale_f32 v40, s9, v6, v37, v6
	v_mul_f32_e32 v41, v30, v21
	v_fma_f32 v1, -v1, v28, v10
	v_fma_f32 v38, -v23, v39, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v10, -v3, v41, v30
	v_div_fmas_f32 v1, v1, v20, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v38, v13 :: v_dual_mul_f32 v38, v40, v15
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v41, v10, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v1, v37, v5
	v_fma_f32 v20, -v23, v39, v29
	v_fma_f32 v23, -v27, v38, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v3, v41, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v20, v13, v39
	v_fmac_f32_e32 v38, v23, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v3, v3, v21, v41
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v5, -v27, v38, v40
	v_div_fixup_f32 v4, v10, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v0, v42, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v38
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v103.h
	v_and_b32_e32 v3, 1, v103
	v_mov_b16_e32 v7.h, v103.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v103.l, v0.h
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v7.l, v5.h
	v_add3_u32 v3, v1, v3, 0x7fff
	v_add3_u32 v2, v4, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_cmp_o_f32_e64 s7, v4, v4
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v103
	v_cmp_o_f32_e64 s8, v0, v0
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b32_e64 v5, v25, v16, s0
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s9
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s0
	v_cndmask_b32_e64 v16, v0, v9, s0
	v_cndmask_b32_e64 v0, v9, v0, s0
	v_cndmask_b32_e64 v3, v24, v26, s0
	v_cndmask_b32_e64 v6, v19, v17, s0
	v_cndmask_b32_e64 v7, v17, v19, s0
	v_cndmask_b32_e64 v10, v8, v18, s0
	v_cndmask_b32_e64 v8, v18, v8, s0
	v_cndmask_b32_e64 v15, v14, v11, s0
	v_cndmask_b32_e64 v11, v11, v14, s0
	v_cndmask_b32_e64 v14, v12, v22, s0
	v_cndmask_b32_e64 v12, v22, v12, s0
	v_cndmask_b32_e64 v17, v2, v13, s0
	v_cndmask_b32_e64 v2, v13, v2, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s0
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v65
	v_perm_b32 v13, v13, v16, v66
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v36, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v65
	v_perm_b32 v1, v3, v1, v66
	v_perm_b32 v2, v5, v4, v65
	v_perm_b32 v3, v5, v4, v66
	v_perm_b32 v4, v7, v6, v65
	v_perm_b32 v5, v7, v6, v66
	v_perm_b32 v6, v8, v10, v65
	v_perm_b32 v7, v8, v10, v66
	v_perm_b32 v8, v9, v15, v65
	v_perm_b32 v9, v9, v15, v66
	v_perm_b32 v10, v11, v14, v65
	v_perm_b32 v11, v11, v14, v66
	v_perm_b32 v14, v18, v17, v65
	v_perm_b32 v15, v18, v17, v66
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s55, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s54
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
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 182
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 182
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11700
; TotalNumSgprs: 76
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 182
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
